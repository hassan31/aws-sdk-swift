// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

public struct EndpointParams {
    /// Override the endpoint used to send this request
    public let endpoint: Swift.String?
    /// The AWS region used to dispatch the request.
    public let region: Swift.String?
    /// When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.
    public let useFIPS: Swift.Bool

    public init(
        endpoint: Swift.String? = nil,
        region: Swift.String? = nil,
        useFIPS: Swift.Bool = false
    )
    {
        self.endpoint = endpoint
        self.region = region
        self.useFIPS = useFIPS
    }
}

public protocol EndpointResolver {
    func resolve(params: EndpointParams) throws -> ClientRuntime.Endpoint
}

public struct DefaultEndpointResolver: EndpointResolver  {

    private let engine: AWSClientRuntime.AWSEndpointsRuleEngine
    private let ruleSet = "{\"version\":\"1.0\",\"parameters\":{\"UseFIPS\":{\"builtIn\":\"AWS::UseFIPS\",\"required\":true,\"default\":false,\"documentation\":\"When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.\",\"type\":\"Boolean\"},\"Region\":{\"builtIn\":\"AWS::Region\",\"required\":false,\"documentation\":\"The AWS region used to dispatch the request.\",\"type\":\"String\"},\"Endpoint\":{\"builtIn\":\"SDK::Endpoint\",\"required\":false,\"documentation\":\"Override the endpoint used to send this request\",\"type\":\"String\"}},\"rules\":[{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"Endpoint\"}]}],\"endpoint\":{\"url\":{\"ref\":\"Endpoint\"},\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"},{\"conditions\":[{\"fn\":\"not\",\"argv\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"Region\"}]}]},{\"fn\":\"aws.partition\",\"argv\":[\"us-west-2\"],\"assign\":\"PartitionResult\"}],\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]}],\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"supportsFIPS\"]},false]}],\"error\":\"Partition does not support FIPS.\",\"type\":\"error\"},{\"conditions\":[],\"endpoint\":{\"url\":\"https://codecatalyst-fips.global.{PartitionResult#dualStackDnsSuffix}\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}],\"type\":\"tree\"},{\"conditions\":[],\"endpoint\":{\"url\":\"https://codecatalyst.global.{PartitionResult#dualStackDnsSuffix}\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}],\"type\":\"tree\"},{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"Region\"}]},{\"fn\":\"aws.partition\",\"argv\":[{\"ref\":\"Region\"}],\"assign\":\"PartitionResult\"}],\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]}],\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"supportsFIPS\"]},false]}],\"error\":\"Partition does not support FIPS.\",\"type\":\"error\"},{\"conditions\":[],\"endpoint\":{\"url\":\"https://codecatalyst-fips.global.{PartitionResult#dualStackDnsSuffix}\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}],\"type\":\"tree\"},{\"conditions\":[],\"endpoint\":{\"url\":\"https://codecatalyst.global.{PartitionResult#dualStackDnsSuffix}\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}],\"type\":\"tree\"}]}"

    public init() throws {
        engine = try AWSClientRuntime.AWSEndpointsRuleEngine(ruleSet: ruleSet)
    }

    public func resolve(params: EndpointParams) throws -> ClientRuntime.Endpoint {
        let context = try AWSClientRuntime.AWSEndpointsRequestContext()
        try context.add(name: "Endpoint", value: params.endpoint)
        try context.add(name: "Region", value: params.region)
        try context.add(name: "UseFIPS", value: params.useFIPS)

        guard let crtResolvedEndpoint = try engine.resolve(context: context) else {
            throw EndpointError.unresolved("Failed to resolved endpoint")
        }

        if crtResolvedEndpoint.getType() == .error {
            let error = crtResolvedEndpoint.getError()
            throw EndpointError.unresolved(error)
        }

        guard let url = crtResolvedEndpoint.getURL() else {
            assertionFailure("This must be a bug in either CRT or the rule engine, if the endpoint is not an error, it must have a url")
            throw EndpointError.unresolved("Failed to resolved endpoint")
        }

        let headers = crtResolvedEndpoint.getHeaders() ?? [:]
        let properties = crtResolvedEndpoint.getProperties() ?? [:]
        return try Endpoint(urlString: url, headers: Headers(headers), properties: properties)
    }
}

public struct EndpointResolverMiddleware<OperationStackOutput>: ClientRuntime.Middleware {
    public let id: Swift.String = "EndpointResolverMiddleware"

    let endpointResolver: EndpointResolver

    let endpointParams: EndpointParams

    let authSchemeResolver: AWSClientRuntime.AuthSchemeResolver

    public init(endpointResolver: EndpointResolver, endpointParams: EndpointParams, authSchemeResolver: AWSClientRuntime.AuthSchemeResolver = AWSClientRuntime.DefaultAuthSchemeResolver()) {
        self.endpointResolver = endpointResolver
        self.endpointParams = endpointParams
        self.authSchemeResolver = authSchemeResolver
    }

    public func handle<H>(context: Context,
                  input: ClientRuntime.SdkHttpRequestBuilder,
                  next: H) async throws -> ClientRuntime.OperationOutput<OperationStackOutput>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        let endpoint = try endpointResolver.resolve(params: endpointParams)

        var signingName: String? = nil
        var signingRegion: String? = nil
        var signingAlgorithm: String? = nil
        if let authSchemes = endpoint.authSchemes() {
            let schemes = try authSchemes.map { try AuthScheme(from: $0) }
            let authScheme = try authSchemeResolver.resolve(authSchemes: schemes)
            signingAlgorithm = authScheme.name
            switch authScheme {
            case .sigV4(let param):
                signingName = param.signingName
                signingRegion = param.signingRegion
            case .sigV4A(let param):
                signingName = param.signingName
                signingRegion = param.signingRegionSet?.first
            case .none:
                break
            }
        }

        let awsEndpoint = AWSEndpoint(endpoint: endpoint, signingName: signingName, signingRegion: signingRegion)

        var host = ""
        if let hostOverride = context.getHost() {
            host = hostOverride
        } else {
            host = "\(context.getHostPrefix() ?? "")\(awsEndpoint.endpoint.host)"
        }

        if let protocolType = awsEndpoint.endpoint.protocolType {
            input.withProtocol(protocolType)
        }

        if let signingRegion = signingRegion {
            context.attributes.set(key: HttpContext.signingRegion, value: signingRegion)
        }
        if let signingName = signingName {
            context.attributes.set(key: HttpContext.signingName, value: signingName)
        }
        if let signingAlgorithm = signingAlgorithm {
            context.attributes.set(key: HttpContext.signingAlgorithm, value: signingAlgorithm)
        }

        if let headers = endpoint.headers {
            input.withHeaders(headers)
        }

        input.withMethod(context.getMethod())
            .withHost(host)
            .withPort(awsEndpoint.endpoint.port)
            .withPath(awsEndpoint.endpoint.path.appendingPathComponent(context.getPath()))
            .withHeader(name: "Host", value: host)

        return try await next.handle(context: context, input: input)
    }

    public typealias MInput = ClientRuntime.SdkHttpRequestBuilder
    public typealias MOutput = ClientRuntime.OperationOutput<OperationStackOutput>
    public typealias Context = ClientRuntime.HttpContext
}

// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class PricingClient {
    public static let clientName = "PricingClient"
    let client: ClientRuntime.SdkHttpClient
    let config: PricingClient.PricingClientConfiguration
    let serviceName = "Pricing"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: PricingClient.PricingClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = ClientRuntime.JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = ClientRuntime.JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try PricingClient.PricingClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await PricingClient.PricingClientConfiguration()
        self.init(config: config)
    }
}

extension PricingClient {
    public typealias PricingClientConfiguration = AWSClientConfiguration<ServiceSpecificConfiguration>

    public struct ServiceSpecificConfiguration: AWSServiceSpecificConfiguration {
        public typealias AWSServiceEndpointResolver = EndpointResolver

        public var serviceName: String { "Pricing" }
        public var clientName: String { "PricingClient" }
        public var endpointResolver: EndpointResolver

        public init(endpointResolver: EndpointResolver? = nil) throws {
            self.endpointResolver = try endpointResolver ?? DefaultEndpointResolver()
        }
    }
}

public struct PricingClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "PricingClient"
    let logLevel: ClientRuntime.SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: ClientRuntime.SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension PricingClient: PricingClientProtocol {
    /// Performs the `DescribeServices` operation on the `AWSPriceListService` service.
    ///
    /// Returns the metadata for one service or a list of the metadata for all services. Use this without a service code to get the service codes for all services. Use it with a service code, such as AmazonEC2, to get information specific to that service, such as the attribute names available for that service. For example, some of the attribute names available for EC2 are volumeType, maxIopsVolume, operation, locationType, and instanceCapacity10xlarge.
    ///
    /// - Parameter DescribeServicesInput : [no documentation found]
    ///
    /// - Returns: `DescribeServicesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ExpiredNextTokenException` : The pagination token expired. Try again without a pagination token.
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `InvalidNextTokenException` : The pagination token is invalid. Try again without a pagination token.
    /// - `InvalidParameterException` : One or more parameters had an invalid value.
    /// - `NotFoundException` : The requested resource can't be found.
    public func describeServices(input: DescribeServicesInput) async throws -> DescribeServicesOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeServices")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "pricing")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<DescribeServicesInput, DescribeServicesOutput>(id: "describeServices")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DescribeServicesInput, DescribeServicesOutput>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DescribeServicesInput, DescribeServicesOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DescribeServicesOutput>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<DescribeServicesInput, DescribeServicesOutput>(xAmzTarget: "AWSPriceListService.DescribeServices"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<DescribeServicesInput, DescribeServicesOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<DescribeServicesInput, DescribeServicesOutput>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, DescribeServicesOutput>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DescribeServicesOutput>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DescribeServicesOutput>(responseClosure(decoder: decoder), responseErrorClosure(DescribeServicesOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<DescribeServicesOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `GetAttributeValues` operation on the `AWSPriceListService` service.
    ///
    /// Returns a list of attribute values. Attributes are similar to the details in a Price List API offer file. For a list of available attributes, see [Offer File Definitions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/reading-an-offer.html#pps-defs) in the [Billing and Cost Management User Guide](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html).
    ///
    /// - Parameter GetAttributeValuesInput : [no documentation found]
    ///
    /// - Returns: `GetAttributeValuesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ExpiredNextTokenException` : The pagination token expired. Try again without a pagination token.
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `InvalidNextTokenException` : The pagination token is invalid. Try again without a pagination token.
    /// - `InvalidParameterException` : One or more parameters had an invalid value.
    /// - `NotFoundException` : The requested resource can't be found.
    public func getAttributeValues(input: GetAttributeValuesInput) async throws -> GetAttributeValuesOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getAttributeValues")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "pricing")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetAttributeValuesInput, GetAttributeValuesOutput>(id: "getAttributeValues")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetAttributeValuesInput, GetAttributeValuesOutput>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetAttributeValuesInput, GetAttributeValuesOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetAttributeValuesOutput>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<GetAttributeValuesInput, GetAttributeValuesOutput>(xAmzTarget: "AWSPriceListService.GetAttributeValues"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<GetAttributeValuesInput, GetAttributeValuesOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetAttributeValuesInput, GetAttributeValuesOutput>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetAttributeValuesOutput>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetAttributeValuesOutput>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetAttributeValuesOutput>(responseClosure(decoder: decoder), responseErrorClosure(GetAttributeValuesOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetAttributeValuesOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `GetPriceListFileUrl` operation on the `AWSPriceListService` service.
    ///
    /// This feature is in preview release and is subject to change. Your use of Amazon Web Services Price List API is subject to the Beta Service Participation terms of the [Amazon Web Services Service Terms](https://aws.amazon.com/service-terms/) (Section 1.10). This returns the URL that you can retrieve your Price List file from. This URL is based on the PriceListArn and FileFormat that you retrieve from the [ListPriceLists](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html) response.
    ///
    /// - Parameter GetPriceListFileUrlInput : [no documentation found]
    ///
    /// - Returns: `GetPriceListFileUrlOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : General authentication failure. The request wasn't signed correctly.
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `InvalidParameterException` : One or more parameters had an invalid value.
    /// - `NotFoundException` : The requested resource can't be found.
    public func getPriceListFileUrl(input: GetPriceListFileUrlInput) async throws -> GetPriceListFileUrlOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getPriceListFileUrl")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "pricing")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetPriceListFileUrlInput, GetPriceListFileUrlOutput>(id: "getPriceListFileUrl")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetPriceListFileUrlInput, GetPriceListFileUrlOutput>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetPriceListFileUrlInput, GetPriceListFileUrlOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetPriceListFileUrlOutput>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<GetPriceListFileUrlInput, GetPriceListFileUrlOutput>(xAmzTarget: "AWSPriceListService.GetPriceListFileUrl"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<GetPriceListFileUrlInput, GetPriceListFileUrlOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetPriceListFileUrlInput, GetPriceListFileUrlOutput>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetPriceListFileUrlOutput>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetPriceListFileUrlOutput>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetPriceListFileUrlOutput>(responseClosure(decoder: decoder), responseErrorClosure(GetPriceListFileUrlOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetPriceListFileUrlOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `GetProducts` operation on the `AWSPriceListService` service.
    ///
    /// Returns a list of all products that match the filter criteria.
    ///
    /// - Parameter GetProductsInput : [no documentation found]
    ///
    /// - Returns: `GetProductsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ExpiredNextTokenException` : The pagination token expired. Try again without a pagination token.
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `InvalidNextTokenException` : The pagination token is invalid. Try again without a pagination token.
    /// - `InvalidParameterException` : One or more parameters had an invalid value.
    /// - `NotFoundException` : The requested resource can't be found.
    public func getProducts(input: GetProductsInput) async throws -> GetProductsOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getProducts")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "pricing")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetProductsInput, GetProductsOutput>(id: "getProducts")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetProductsInput, GetProductsOutput>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetProductsInput, GetProductsOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetProductsOutput>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<GetProductsInput, GetProductsOutput>(xAmzTarget: "AWSPriceListService.GetProducts"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<GetProductsInput, GetProductsOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetProductsInput, GetProductsOutput>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetProductsOutput>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetProductsOutput>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetProductsOutput>(responseClosure(decoder: decoder), responseErrorClosure(GetProductsOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetProductsOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `ListPriceLists` operation on the `AWSPriceListService` service.
    ///
    /// This feature is in preview release and is subject to change. Your use of Amazon Web Services Price List API is subject to the Beta Service Participation terms of the [Amazon Web Services Service Terms](https://aws.amazon.com/service-terms/) (Section 1.10). This returns a list of Price List references that the requester if authorized to view, given a ServiceCode, CurrencyCode, and an EffectiveDate. Use without a RegionCode filter to list Price List references from all available Amazon Web Services Regions. Use with a RegionCode filter to get the Price List reference that's specific to a specific Amazon Web Services Region. You can use the PriceListArn from the response to get your preferred Price List files through the [GetPriceListFileUrl](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_GetPriceListFileUrl.html) API.
    ///
    /// - Parameter ListPriceListsInput : [no documentation found]
    ///
    /// - Returns: `ListPriceListsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : General authentication failure. The request wasn't signed correctly.
    /// - `ExpiredNextTokenException` : The pagination token expired. Try again without a pagination token.
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `InvalidNextTokenException` : The pagination token is invalid. Try again without a pagination token.
    /// - `InvalidParameterException` : One or more parameters had an invalid value.
    /// - `NotFoundException` : The requested resource can't be found.
    public func listPriceLists(input: ListPriceListsInput) async throws -> ListPriceListsOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listPriceLists")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "pricing")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<ListPriceListsInput, ListPriceListsOutput>(id: "listPriceLists")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<ListPriceListsInput, ListPriceListsOutput>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<ListPriceListsInput, ListPriceListsOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<ListPriceListsOutput>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<ListPriceListsInput, ListPriceListsOutput>(xAmzTarget: "AWSPriceListService.ListPriceLists"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<ListPriceListsInput, ListPriceListsOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<ListPriceListsInput, ListPriceListsOutput>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, ListPriceListsOutput>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<ListPriceListsOutput>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<ListPriceListsOutput>(responseClosure(decoder: decoder), responseErrorClosure(ListPriceListsOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<ListPriceListsOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}

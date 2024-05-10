// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging
import SmithyJSON
import SmithyReadWrite

public class Route53RecoveryClusterClient: Client {
    public static let clientName = "Route53RecoveryClusterClient"
    let client: ClientRuntime.SdkHttpClient
    let config: Route53RecoveryClusterClient.Route53RecoveryClusterClientConfiguration
    let serviceName = "Route53 Recovery Cluster"

    public required init(config: Route53RecoveryClusterClient.Route53RecoveryClusterClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try Route53RecoveryClusterClient.Route53RecoveryClusterClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience required init() async throws {
        let config = try await Route53RecoveryClusterClient.Route53RecoveryClusterClientConfiguration()
        self.init(config: config)
    }
}

extension Route53RecoveryClusterClient {
    public class Route53RecoveryClusterClientConfiguration: AWSDefaultClientConfiguration & AWSRegionClientConfiguration & DefaultClientConfiguration & DefaultHttpClientConfiguration {
        public var useFIPS: Swift.Bool?

        public var useDualStack: Swift.Bool?

        public var appID: Swift.String?

        public var awsCredentialIdentityResolver: any AWSClientRuntime.AWSCredentialIdentityResolver

        public var awsRetryMode: AWSClientRuntime.AWSRetryMode

        public var region: Swift.String?

        public var signingRegion: Swift.String?

        public var endpointResolver: EndpointResolver

        public var telemetryProvider: ClientRuntime.TelemetryProvider

        public var retryStrategyOptions: ClientRuntime.RetryStrategyOptions

        public var clientLogMode: ClientRuntime.ClientLogMode

        public var endpoint: Swift.String?

        public var idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator

        public var httpClientEngine: ClientRuntime.HTTPClient

        public var httpClientConfiguration: ClientRuntime.HttpClientConfiguration

        public var authSchemes: [ClientRuntime.AuthScheme]?

        public var authSchemeResolver: ClientRuntime.AuthSchemeResolver

        internal let logger: ClientRuntime.LogAgent

        private init(_ useFIPS: Swift.Bool?, _ useDualStack: Swift.Bool?, _ appID: Swift.String?, _ awsCredentialIdentityResolver: any AWSClientRuntime.AWSCredentialIdentityResolver, _ awsRetryMode: AWSClientRuntime.AWSRetryMode, _ region: Swift.String?, _ signingRegion: Swift.String?, _ endpointResolver: EndpointResolver, _ telemetryProvider: ClientRuntime.TelemetryProvider, _ retryStrategyOptions: ClientRuntime.RetryStrategyOptions, _ clientLogMode: ClientRuntime.ClientLogMode, _ endpoint: Swift.String?, _ idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator, _ httpClientEngine: ClientRuntime.HTTPClient, _ httpClientConfiguration: ClientRuntime.HttpClientConfiguration, _ authSchemes: [ClientRuntime.AuthScheme]?, _ authSchemeResolver: ClientRuntime.AuthSchemeResolver) {
            self.useFIPS = useFIPS
            self.useDualStack = useDualStack
            self.appID = appID
            self.awsCredentialIdentityResolver = awsCredentialIdentityResolver
            self.awsRetryMode = awsRetryMode
            self.region = region
            self.signingRegion = signingRegion
            self.endpointResolver = endpointResolver
            self.telemetryProvider = telemetryProvider
            self.retryStrategyOptions = retryStrategyOptions
            self.clientLogMode = clientLogMode
            self.endpoint = endpoint
            self.idempotencyTokenGenerator = idempotencyTokenGenerator
            self.httpClientEngine = httpClientEngine
            self.httpClientConfiguration = httpClientConfiguration
            self.authSchemes = authSchemes
            self.authSchemeResolver = authSchemeResolver
            self.logger = telemetryProvider.loggerProvider.getLogger(name: Route53RecoveryClusterClient.clientName)
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any AWSClientRuntime.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: ClientRuntime.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: ClientRuntime.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: [ClientRuntime.AuthScheme]? = nil, authSchemeResolver: ClientRuntime.AuthSchemeResolver? = nil) throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientConfigDefaultsProvider.retryMode(), region, signingRegion, try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode, endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine, httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration, authSchemes ?? [SigV4AuthScheme()], authSchemeResolver ?? DefaultRoute53RecoveryClusterAuthSchemeResolver())
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any AWSClientRuntime.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: ClientRuntime.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: ClientRuntime.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: [ClientRuntime.AuthScheme]? = nil, authSchemeResolver: ClientRuntime.AuthSchemeResolver? = nil) async throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientConfigDefaultsProvider.retryMode(), try await AWSClientConfigDefaultsProvider.region(region), try await AWSClientConfigDefaultsProvider.region(region), try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode, endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine, httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration, authSchemes ?? [SigV4AuthScheme()], authSchemeResolver ?? DefaultRoute53RecoveryClusterAuthSchemeResolver())
        }

        public convenience required init() async throws {
            try await self.init(useFIPS: nil, useDualStack: nil, appID: nil, awsCredentialIdentityResolver: nil, awsRetryMode: nil, region: nil, signingRegion: nil, endpointResolver: nil, telemetryProvider: nil, retryStrategyOptions: nil, clientLogMode: nil, endpoint: nil, idempotencyTokenGenerator: nil, httpClientEngine: nil, httpClientConfiguration: nil, authSchemes: nil, authSchemeResolver: nil)
        }

        public convenience init(region: String) throws {
            self.init(nil, nil, try AWSClientConfigDefaultsProvider.appID(), try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(), try AWSClientConfigDefaultsProvider.retryMode(), region, region, try DefaultEndpointResolver(), ClientRuntime.DefaultTelemetry.provider, try AWSClientConfigDefaultsProvider.retryStrategyOptions(), AWSClientConfigDefaultsProvider.clientLogMode, nil, AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, AWSClientConfigDefaultsProvider.httpClientEngine, AWSClientConfigDefaultsProvider.httpClientConfiguration, [SigV4AuthScheme()], DefaultRoute53RecoveryClusterAuthSchemeResolver())
        }

        public var partitionID: String? {
            return "\(Route53RecoveryClusterClient.clientName) - \(region ?? "")"
        }
    }

    public static func builder() -> ClientBuilder<Route53RecoveryClusterClient> {
        return ClientBuilder<Route53RecoveryClusterClient>(defaultPlugins: [
            ClientRuntime.DefaultClientPlugin(),
            AWSClientRuntime.DefaultAWSClientPlugin(clientName: self.clientName),
            DefaultAWSAuthSchemePlugin()
        ])
    }
}

public struct Route53RecoveryClusterClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "Route53RecoveryClusterClient"
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

extension Route53RecoveryClusterClient {
    /// Performs the `GetRoutingControlState` operation on the `ToggleCustomerAPI` service.
    ///
    /// Get the state for a routing control. A routing control is a simple on/off switch that you can use to route traffic to cells. When a routing control state is set to ON, traffic flows to a cell. When the state is set to OFF, traffic does not flow. Before you can create a routing control, you must first create a cluster, and then host the control in a control panel on the cluster. For more information, see [ Create routing control structures](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.create.html) in the Amazon Route 53 Application Recovery Controller Developer Guide. You access one of the endpoints for the cluster to get or update the routing control state to redirect traffic for your application. You must specify Regional endpoints when you work with API cluster operations to get or update routing control states in Route 53 ARC. To see a code example for getting a routing control state, including accessing Regional cluster endpoints in sequence, see [API examples](https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html) in the Amazon Route 53 Application Recovery Controller Developer Guide. Learn more about working with routing controls in the following topics in the Amazon Route 53 Application Recovery Controller Developer Guide:
    ///
    /// * [Viewing and updating routing control states](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)
    ///
    /// * [Working with routing controls in Route 53 ARC](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
    ///
    /// - Parameter GetRoutingControlStateInput : [no documentation found]
    ///
    /// - Returns: `GetRoutingControlStateOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permissions to perform this action.
    /// - `EndpointTemporarilyUnavailableException` : The cluster endpoint isn't available. Try another cluster endpoint.
    /// - `InternalServerException` : There was an unexpected error during processing of the request.
    /// - `ResourceNotFoundException` : The request references a routing control or control panel that was not found.
    /// - `ThrottlingException` : The request was denied because of request throttling.
    /// - `ValidationException` : There was a validation error on the request.
    public func getRoutingControlState(input: GetRoutingControlStateInput) async throws -> GetRoutingControlStateOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getRoutingControlState")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withSocketTimeout(value: config.httpClientConfiguration.socketTimeout)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "route53-recovery-cluster")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetRoutingControlStateInput, GetRoutingControlStateOutput>(id: "getRoutingControlState")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutput>(GetRoutingControlStateInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetRoutingControlStateOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<GetRoutingControlStateOutput>())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutput>(xAmzTarget: "ToggleCustomerAPI.GetRoutingControlState"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutput, SmithyJSON.Writer>(rootNodeInfo: "", inputWritingClosure: GetRoutingControlStateInput.write(value:to:)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutput>(contentType: "application/x-amz-json-1.0"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetRoutingControlStateOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<GetRoutingControlStateOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetRoutingControlStateOutput>(GetRoutingControlStateOutput.httpOutput(from:), GetRoutingControlStateOutputError.httpError(from:)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `ListRoutingControls` operation on the `ToggleCustomerAPI` service.
    ///
    /// List routing control names and Amazon Resource Names (ARNs), as well as the routing control state for each routing control, along with the control panel name and control panel ARN for the routing controls. If you specify a control panel ARN, this call lists the routing controls in the control panel. Otherwise, it lists all the routing controls in the cluster. A routing control is a simple on/off switch in Route 53 ARC that you can use to route traffic to cells. When a routing control state is set to ON, traffic flows to a cell. When the state is set to OFF, traffic does not flow. Before you can create a routing control, you must first create a cluster, and then host the control in a control panel on the cluster. For more information, see [ Create routing control structures](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.create.html) in the Amazon Route 53 Application Recovery Controller Developer Guide. You access one of the endpoints for the cluster to get or update the routing control state to redirect traffic for your application. You must specify Regional endpoints when you work with API cluster operations to use this API operation to list routing controls in Route 53 ARC. Learn more about working with routing controls in the following topics in the Amazon Route 53 Application Recovery Controller Developer Guide:
    ///
    /// * [Viewing and updating routing control states](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)
    ///
    /// * [Working with routing controls in Route 53 ARC](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
    ///
    /// - Parameter ListRoutingControlsInput : [no documentation found]
    ///
    /// - Returns: `ListRoutingControlsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permissions to perform this action.
    /// - `EndpointTemporarilyUnavailableException` : The cluster endpoint isn't available. Try another cluster endpoint.
    /// - `InternalServerException` : There was an unexpected error during processing of the request.
    /// - `ResourceNotFoundException` : The request references a routing control or control panel that was not found.
    /// - `ThrottlingException` : The request was denied because of request throttling.
    /// - `ValidationException` : There was a validation error on the request.
    public func listRoutingControls(input: ListRoutingControlsInput) async throws -> ListRoutingControlsOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listRoutingControls")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withSocketTimeout(value: config.httpClientConfiguration.socketTimeout)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "route53-recovery-cluster")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<ListRoutingControlsInput, ListRoutingControlsOutput>(id: "listRoutingControls")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<ListRoutingControlsInput, ListRoutingControlsOutput>(ListRoutingControlsInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<ListRoutingControlsInput, ListRoutingControlsOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<ListRoutingControlsOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware<ListRoutingControlsInput, ListRoutingControlsOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<ListRoutingControlsOutput>())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<ListRoutingControlsInput, ListRoutingControlsOutput>(xAmzTarget: "ToggleCustomerAPI.ListRoutingControls"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<ListRoutingControlsInput, ListRoutingControlsOutput, SmithyJSON.Writer>(rootNodeInfo: "", inputWritingClosure: ListRoutingControlsInput.write(value:to:)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<ListRoutingControlsInput, ListRoutingControlsOutput>(contentType: "application/x-amz-json-1.0"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware<ListRoutingControlsInput, ListRoutingControlsOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, ListRoutingControlsOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<ListRoutingControlsOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<ListRoutingControlsOutput>(ListRoutingControlsOutput.httpOutput(from:), ListRoutingControlsOutputError.httpError(from:)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<ListRoutingControlsInput, ListRoutingControlsOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `UpdateRoutingControlState` operation on the `ToggleCustomerAPI` service.
    ///
    /// Set the state of the routing control to reroute traffic. You can set the value to ON or OFF. When the state is ON, traffic flows to a cell. When the state is OFF, traffic does not flow. With Route 53 ARC, you can add safety rules for routing controls, which are safeguards for routing control state updates that help prevent unexpected outcomes, like fail open traffic routing. However, there are scenarios when you might want to bypass the routing control safeguards that are enforced with safety rules that you've configured. For example, you might want to fail over quickly for disaster recovery, and one or more safety rules might be unexpectedly preventing you from updating a routing control state to reroute traffic. In a "break glass" scenario like this, you can override one or more safety rules to change a routing control state and fail over your application. The SafetyRulesToOverride property enables you override one or more safety rules and update routing control states. For more information, see [ Override safety rules to reroute traffic](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html) in the Amazon Route 53 Application Recovery Controller Developer Guide. You must specify Regional endpoints when you work with API cluster operations to get or update routing control states in Route 53 ARC. To see a code example for getting a routing control state, including accessing Regional cluster endpoints in sequence, see [API examples](https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html) in the Amazon Route 53 Application Recovery Controller Developer Guide.
    ///
    /// * [Viewing and updating routing control states](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)
    ///
    /// * [Working with routing controls overall](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
    ///
    /// - Parameter UpdateRoutingControlStateInput : [no documentation found]
    ///
    /// - Returns: `UpdateRoutingControlStateOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permissions to perform this action.
    /// - `ConflictException` : There was a conflict with this request. Try again.
    /// - `EndpointTemporarilyUnavailableException` : The cluster endpoint isn't available. Try another cluster endpoint.
    /// - `InternalServerException` : There was an unexpected error during processing of the request.
    /// - `ResourceNotFoundException` : The request references a routing control or control panel that was not found.
    /// - `ThrottlingException` : The request was denied because of request throttling.
    /// - `ValidationException` : There was a validation error on the request.
    public func updateRoutingControlState(input: UpdateRoutingControlStateInput) async throws -> UpdateRoutingControlStateOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateRoutingControlState")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withSocketTimeout(value: config.httpClientConfiguration.socketTimeout)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "route53-recovery-cluster")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutput>(id: "updateRoutingControlState")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutput>(UpdateRoutingControlStateInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<UpdateRoutingControlStateOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<UpdateRoutingControlStateOutput>())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutput>(xAmzTarget: "ToggleCustomerAPI.UpdateRoutingControlState"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutput, SmithyJSON.Writer>(rootNodeInfo: "", inputWritingClosure: UpdateRoutingControlStateInput.write(value:to:)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutput>(contentType: "application/x-amz-json-1.0"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, UpdateRoutingControlStateOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<UpdateRoutingControlStateOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<UpdateRoutingControlStateOutput>(UpdateRoutingControlStateOutput.httpOutput(from:), UpdateRoutingControlStateOutputError.httpError(from:)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `UpdateRoutingControlStates` operation on the `ToggleCustomerAPI` service.
    ///
    /// Set multiple routing control states. You can set the value for each state to be ON or OFF. When the state is ON, traffic flows to a cell. When it's OFF, traffic does not flow. With Route 53 ARC, you can add safety rules for routing controls, which are safeguards for routing control state updates that help prevent unexpected outcomes, like fail open traffic routing. However, there are scenarios when you might want to bypass the routing control safeguards that are enforced with safety rules that you've configured. For example, you might want to fail over quickly for disaster recovery, and one or more safety rules might be unexpectedly preventing you from updating a routing control state to reroute traffic. In a "break glass" scenario like this, you can override one or more safety rules to change a routing control state and fail over your application. The SafetyRulesToOverride property enables you override one or more safety rules and update routing control states. For more information, see [ Override safety rules to reroute traffic](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html) in the Amazon Route 53 Application Recovery Controller Developer Guide. You must specify Regional endpoints when you work with API cluster operations to get or update routing control states in Route 53 ARC. To see a code example for getting a routing control state, including accessing Regional cluster endpoints in sequence, see [API examples](https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html) in the Amazon Route 53 Application Recovery Controller Developer Guide.
    ///
    /// * [Viewing and updating routing control states](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)
    ///
    /// * [Working with routing controls overall](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)
    ///
    /// - Parameter UpdateRoutingControlStatesInput : [no documentation found]
    ///
    /// - Returns: `UpdateRoutingControlStatesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient permissions to perform this action.
    /// - `ConflictException` : There was a conflict with this request. Try again.
    /// - `EndpointTemporarilyUnavailableException` : The cluster endpoint isn't available. Try another cluster endpoint.
    /// - `InternalServerException` : There was an unexpected error during processing of the request.
    /// - `ResourceNotFoundException` : The request references a routing control or control panel that was not found.
    /// - `ServiceLimitExceededException` : The request can't update that many routing control states at the same time. Try again with fewer routing control states.
    /// - `ThrottlingException` : The request was denied because of request throttling.
    /// - `ValidationException` : There was a validation error on the request.
    public func updateRoutingControlStates(input: UpdateRoutingControlStatesInput) async throws -> UpdateRoutingControlStatesOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateRoutingControlStates")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withSocketTimeout(value: config.httpClientConfiguration.socketTimeout)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "route53-recovery-cluster")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutput>(id: "updateRoutingControlStates")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutput>(UpdateRoutingControlStatesInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<UpdateRoutingControlStatesOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<UpdateRoutingControlStatesOutput>())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutput>(xAmzTarget: "ToggleCustomerAPI.UpdateRoutingControlStates"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutput, SmithyJSON.Writer>(rootNodeInfo: "", inputWritingClosure: UpdateRoutingControlStatesInput.write(value:to:)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutput>(contentType: "application/x-amz-json-1.0"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, UpdateRoutingControlStatesOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<UpdateRoutingControlStatesOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<UpdateRoutingControlStatesOutput>(UpdateRoutingControlStatesOutput.httpOutput(from:), UpdateRoutingControlStatesOutputError.httpError(from:)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}

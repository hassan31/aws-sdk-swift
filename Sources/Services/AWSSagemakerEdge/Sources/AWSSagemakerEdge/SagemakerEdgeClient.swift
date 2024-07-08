//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import class AWSClientRuntime.AWSClientConfigDefaultsProvider
import class AWSClientRuntime.DefaultAWSClientPlugin
import class ClientRuntime.ClientBuilder
import class ClientRuntime.DefaultClientPlugin
import class ClientRuntime.HttpClientConfiguration
import class ClientRuntime.SdkHttpClient
import class Smithy.ContextBuilder
import class SmithyJSON.Writer
import enum AWSClientRuntime.AWSRetryErrorInfoProvider
import enum AWSClientRuntime.AWSRetryMode
import enum ClientRuntime.ClientLogMode
import enum ClientRuntime.DefaultTelemetry
import protocol AWSClientRuntime.AWSDefaultClientConfiguration
import protocol AWSClientRuntime.AWSRegionClientConfiguration
import protocol ClientRuntime.Client
import protocol ClientRuntime.DefaultClientConfiguration
import protocol ClientRuntime.DefaultHttpClientConfiguration
import protocol ClientRuntime.HttpInterceptorProvider
import protocol ClientRuntime.IdempotencyTokenGenerator
import protocol ClientRuntime.InterceptorProvider
import protocol ClientRuntime.TelemetryProvider
import protocol Smithy.LogAgent
import protocol SmithyHTTPAPI.HTTPClient
import protocol SmithyHTTPAuthAPI.AuthSchemeResolver
import protocol SmithyIdentity.AWSCredentialIdentityResolver
import struct AWSClientRuntime.AWSUserAgentMetadata
import struct AWSClientRuntime.EndpointResolverMiddleware
import struct AWSClientRuntime.UserAgentMiddleware
import struct AWSSDKHTTPAuth.SigV4AuthScheme
import struct ClientRuntime.AuthSchemeMiddleware
import struct ClientRuntime.BodyMiddleware
import struct ClientRuntime.ContentLengthMiddleware
import struct ClientRuntime.ContentTypeMiddleware
import struct ClientRuntime.DeserializeMiddleware
import struct ClientRuntime.LoggerMiddleware
import struct ClientRuntime.OperationStack
import struct ClientRuntime.RetryMiddleware
import struct ClientRuntime.SignerMiddleware
import struct ClientRuntime.URLHostMiddleware
import struct ClientRuntime.URLPathMiddleware
import struct SmithyRetries.DefaultRetryStrategy
import struct SmithyRetriesAPI.RetryStrategyOptions
import typealias SmithyHTTPAuthAPI.AuthSchemes

public class SagemakerEdgeClient: ClientRuntime.Client {
    public static let clientName = "SagemakerEdgeClient"
    let client: ClientRuntime.SdkHttpClient
    let config: SagemakerEdgeClient.SagemakerEdgeClientConfiguration
    let serviceName = "Sagemaker Edge"

    public required init(config: SagemakerEdgeClient.SagemakerEdgeClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try SagemakerEdgeClient.SagemakerEdgeClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience required init() async throws {
        let config = try await SagemakerEdgeClient.SagemakerEdgeClientConfiguration()
        self.init(config: config)
    }
}

extension SagemakerEdgeClient {
    public class SagemakerEdgeClientConfiguration: AWSClientRuntime.AWSDefaultClientConfiguration & AWSClientRuntime.AWSRegionClientConfiguration & ClientRuntime.DefaultClientConfiguration & ClientRuntime.DefaultHttpClientConfiguration {
        public var useFIPS: Swift.Bool?

        public var useDualStack: Swift.Bool?

        public var appID: Swift.String?

        public var awsCredentialIdentityResolver: any SmithyIdentity.AWSCredentialIdentityResolver

        public var awsRetryMode: AWSClientRuntime.AWSRetryMode

        public var region: Swift.String?

        public var signingRegion: Swift.String?

        public var endpointResolver: EndpointResolver

        public var telemetryProvider: ClientRuntime.TelemetryProvider

        public var retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions

        public var clientLogMode: ClientRuntime.ClientLogMode

        public var endpoint: Swift.String?

        public var idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator

        public var httpClientEngine: SmithyHTTPAPI.HTTPClient

        public var httpClientConfiguration: ClientRuntime.HttpClientConfiguration

        public var authSchemes: SmithyHTTPAuthAPI.AuthSchemes?

        public var authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver

        public private(set) var interceptorProviders: [ClientRuntime.InterceptorProvider]

        public private(set) var httpInterceptorProviders: [ClientRuntime.HttpInterceptorProvider]

        internal let logger: Smithy.LogAgent

        private init(_ useFIPS: Swift.Bool?, _ useDualStack: Swift.Bool?, _ appID: Swift.String?, _ awsCredentialIdentityResolver: any SmithyIdentity.AWSCredentialIdentityResolver, _ awsRetryMode: AWSClientRuntime.AWSRetryMode, _ region: Swift.String?, _ signingRegion: Swift.String?, _ endpointResolver: EndpointResolver, _ telemetryProvider: ClientRuntime.TelemetryProvider, _ retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions, _ clientLogMode: ClientRuntime.ClientLogMode, _ endpoint: Swift.String?, _ idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator, _ httpClientEngine: SmithyHTTPAPI.HTTPClient, _ httpClientConfiguration: ClientRuntime.HttpClientConfiguration, _ authSchemes: SmithyHTTPAuthAPI.AuthSchemes?, _ authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver, _ interceptorProviders: [ClientRuntime.InterceptorProvider], _ httpInterceptorProviders: [ClientRuntime.HttpInterceptorProvider]) {
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
            self.interceptorProviders = interceptorProviders
            self.httpInterceptorProviders = httpInterceptorProviders
            self.logger = telemetryProvider.loggerProvider.getLogger(name: SagemakerEdgeClient.clientName)
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any SmithyIdentity.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: SmithyHTTPAPI.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: SmithyHTTPAuthAPI.AuthSchemes? = nil, authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver? = nil, interceptorProviders: [ClientRuntime.InterceptorProvider]? = nil, httpInterceptorProviders: [ClientRuntime.HttpInterceptorProvider]? = nil) throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.retryMode(), region, signingRegion, try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode(), endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator(), httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine(), httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration(), authSchemes ?? [AWSSDKHTTPAuth.SigV4AuthScheme()], authSchemeResolver ?? DefaultSagemakerEdgeAuthSchemeResolver(), interceptorProviders ?? [], httpInterceptorProviders ?? [])
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any SmithyIdentity.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: SmithyHTTPAPI.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: SmithyHTTPAuthAPI.AuthSchemes? = nil, authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver? = nil, interceptorProviders: [ClientRuntime.InterceptorProvider]? = nil, httpInterceptorProviders: [ClientRuntime.HttpInterceptorProvider]? = nil) async throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.retryMode(), try await AWSClientRuntime.AWSClientConfigDefaultsProvider.region(region), try await AWSClientRuntime.AWSClientConfigDefaultsProvider.region(region), try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode(), endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator(), httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine(), httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration(), authSchemes ?? [AWSSDKHTTPAuth.SigV4AuthScheme()], authSchemeResolver ?? DefaultSagemakerEdgeAuthSchemeResolver(), interceptorProviders ?? [], httpInterceptorProviders ?? [])
        }

        public convenience required init() async throws {
            try await self.init(useFIPS: nil, useDualStack: nil, appID: nil, awsCredentialIdentityResolver: nil, awsRetryMode: nil, region: nil, signingRegion: nil, endpointResolver: nil, telemetryProvider: nil, retryStrategyOptions: nil, clientLogMode: nil, endpoint: nil, idempotencyTokenGenerator: nil, httpClientEngine: nil, httpClientConfiguration: nil, authSchemes: nil, authSchemeResolver: nil, interceptorProviders: nil, httpInterceptorProviders: nil)
        }

        public convenience init(region: String) throws {
            self.init(nil, nil, try AWSClientRuntime.AWSClientConfigDefaultsProvider.appID(), try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(), try AWSClientRuntime.AWSClientConfigDefaultsProvider.retryMode(), region, region, try DefaultEndpointResolver(), ClientRuntime.DefaultTelemetry.provider, try AWSClientConfigDefaultsProvider.retryStrategyOptions(), AWSClientConfigDefaultsProvider.clientLogMode(), nil, AWSClientConfigDefaultsProvider.idempotencyTokenGenerator(), AWSClientConfigDefaultsProvider.httpClientEngine(), AWSClientConfigDefaultsProvider.httpClientConfiguration(), [AWSSDKHTTPAuth.SigV4AuthScheme()], DefaultSagemakerEdgeAuthSchemeResolver(), [], [])
        }

        public var partitionID: String? {
            return "\(SagemakerEdgeClient.clientName) - \(region ?? "")"
        }
        public func addInterceptorProvider(_ provider: ClientRuntime.InterceptorProvider) {
            self.interceptorProviders.append(provider)
        }

        public func addInterceptorProvider(_ provider: ClientRuntime.HttpInterceptorProvider) {
            self.httpInterceptorProviders.append(provider)
        }

    }

    public static func builder() -> ClientRuntime.ClientBuilder<SagemakerEdgeClient> {
        return ClientRuntime.ClientBuilder<SagemakerEdgeClient>(defaultPlugins: [
            ClientRuntime.DefaultClientPlugin(),
            AWSClientRuntime.DefaultAWSClientPlugin(clientName: self.clientName),
            DefaultAWSAuthSchemePlugin()
        ])
    }
}

extension SagemakerEdgeClient {
    /// Performs the `GetDeployments` operation on the `AmazonSageMakerEdge` service.
    ///
    /// Use to get the active deployments from a device.
    ///
    /// - Parameter GetDeploymentsInput : [no documentation found]
    ///
    /// - Returns: `GetDeploymentsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServiceException` : An internal failure occurred. Try your request again. If the problem persists, contact Amazon Web Services customer support.
    public func getDeployments(input: GetDeploymentsInput) async throws -> GetDeploymentsOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getDeployments")
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
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetDeploymentsInput, GetDeploymentsOutput>(id: "getDeployments")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetDeploymentsInput, GetDeploymentsOutput>(GetDeploymentsInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetDeploymentsInput, GetDeploymentsOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware<GetDeploymentsOutput, EndpointParams>(endpointResolverBlock: { [config] in try config.endpointResolver.resolve(params: $0) }, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware<GetDeploymentsInput, GetDeploymentsOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<GetDeploymentsOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.ContentTypeMiddleware<GetDeploymentsInput, GetDeploymentsOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<GetDeploymentsInput, GetDeploymentsOutput, SmithyJSON.Writer>(rootNodeInfo: "", inputWritingClosure: GetDeploymentsInput.write(value:to:)))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware<GetDeploymentsInput, GetDeploymentsOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<SmithyRetries.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetDeploymentsOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<GetDeploymentsOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetDeploymentsOutput>(GetDeploymentsOutput.httpOutput(from:), GetDeploymentsOutputError.httpError(from:)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetDeploymentsInput, GetDeploymentsOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `GetDeviceRegistration` operation on the `AmazonSageMakerEdge` service.
    ///
    /// Use to check if a device is registered with SageMaker Edge Manager.
    ///
    /// - Parameter GetDeviceRegistrationInput : [no documentation found]
    ///
    /// - Returns: `GetDeviceRegistrationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServiceException` : An internal failure occurred. Try your request again. If the problem persists, contact Amazon Web Services customer support.
    public func getDeviceRegistration(input: GetDeviceRegistrationInput) async throws -> GetDeviceRegistrationOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getDeviceRegistration")
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
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<GetDeviceRegistrationInput, GetDeviceRegistrationOutput>(id: "getDeviceRegistration")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetDeviceRegistrationInput, GetDeviceRegistrationOutput>(GetDeviceRegistrationInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetDeviceRegistrationInput, GetDeviceRegistrationOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware<GetDeviceRegistrationOutput, EndpointParams>(endpointResolverBlock: { [config] in try config.endpointResolver.resolve(params: $0) }, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware<GetDeviceRegistrationInput, GetDeviceRegistrationOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<GetDeviceRegistrationOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.ContentTypeMiddleware<GetDeviceRegistrationInput, GetDeviceRegistrationOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<GetDeviceRegistrationInput, GetDeviceRegistrationOutput, SmithyJSON.Writer>(rootNodeInfo: "", inputWritingClosure: GetDeviceRegistrationInput.write(value:to:)))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware<GetDeviceRegistrationInput, GetDeviceRegistrationOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<SmithyRetries.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetDeviceRegistrationOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<GetDeviceRegistrationOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetDeviceRegistrationOutput>(GetDeviceRegistrationOutput.httpOutput(from:), GetDeviceRegistrationOutputError.httpError(from:)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetDeviceRegistrationInput, GetDeviceRegistrationOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `SendHeartbeat` operation on the `AmazonSageMakerEdge` service.
    ///
    /// Use to get the current status of devices registered on SageMaker Edge Manager.
    ///
    /// - Parameter SendHeartbeatInput : [no documentation found]
    ///
    /// - Returns: `SendHeartbeatOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServiceException` : An internal failure occurred. Try your request again. If the problem persists, contact Amazon Web Services customer support.
    public func sendHeartbeat(input: SendHeartbeatInput) async throws -> SendHeartbeatOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "sendHeartbeat")
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
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<SendHeartbeatInput, SendHeartbeatOutput>(id: "sendHeartbeat")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<SendHeartbeatInput, SendHeartbeatOutput>(SendHeartbeatInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<SendHeartbeatInput, SendHeartbeatOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware<SendHeartbeatOutput, EndpointParams>(endpointResolverBlock: { [config] in try config.endpointResolver.resolve(params: $0) }, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware<SendHeartbeatInput, SendHeartbeatOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<SendHeartbeatOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.ContentTypeMiddleware<SendHeartbeatInput, SendHeartbeatOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<SendHeartbeatInput, SendHeartbeatOutput, SmithyJSON.Writer>(rootNodeInfo: "", inputWritingClosure: SendHeartbeatInput.write(value:to:)))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware<SendHeartbeatInput, SendHeartbeatOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<SmithyRetries.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, SendHeartbeatOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<SendHeartbeatOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<SendHeartbeatOutput>(SendHeartbeatOutput.httpOutput(from:), SendHeartbeatOutputError.httpError(from:)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<SendHeartbeatInput, SendHeartbeatOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}

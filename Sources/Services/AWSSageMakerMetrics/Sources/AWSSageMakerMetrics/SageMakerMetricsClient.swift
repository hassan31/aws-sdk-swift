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

public class SageMakerMetricsClient: ClientRuntime.Client {
    public static let clientName = "SageMakerMetricsClient"
    let client: ClientRuntime.SdkHttpClient
    let config: SageMakerMetricsClient.SageMakerMetricsClientConfiguration
    let serviceName = "SageMaker Metrics"

    public required init(config: SageMakerMetricsClient.SageMakerMetricsClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try SageMakerMetricsClient.SageMakerMetricsClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience required init() async throws {
        let config = try await SageMakerMetricsClient.SageMakerMetricsClientConfiguration()
        self.init(config: config)
    }
}

extension SageMakerMetricsClient {
    public class SageMakerMetricsClientConfiguration: AWSClientRuntime.AWSDefaultClientConfiguration & AWSClientRuntime.AWSRegionClientConfiguration & ClientRuntime.DefaultClientConfiguration & ClientRuntime.DefaultHttpClientConfiguration {
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
            self.logger = telemetryProvider.loggerProvider.getLogger(name: SageMakerMetricsClient.clientName)
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any SmithyIdentity.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: SmithyHTTPAPI.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: SmithyHTTPAuthAPI.AuthSchemes? = nil, authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver? = nil, interceptorProviders: [ClientRuntime.InterceptorProvider]? = nil, httpInterceptorProviders: [ClientRuntime.HttpInterceptorProvider]? = nil) throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.retryMode(), region, signingRegion, try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode(), endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator(), httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine(), httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration(), authSchemes ?? [AWSSDKHTTPAuth.SigV4AuthScheme()], authSchemeResolver ?? DefaultSageMakerMetricsAuthSchemeResolver(), interceptorProviders ?? [], httpInterceptorProviders ?? [])
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any SmithyIdentity.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: SmithyRetriesAPI.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: SmithyHTTPAPI.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: SmithyHTTPAuthAPI.AuthSchemes? = nil, authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver? = nil, interceptorProviders: [ClientRuntime.InterceptorProvider]? = nil, httpInterceptorProviders: [ClientRuntime.HttpInterceptorProvider]? = nil) async throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientRuntime.AWSClientConfigDefaultsProvider.retryMode(), try await AWSClientRuntime.AWSClientConfigDefaultsProvider.region(region), try await AWSClientRuntime.AWSClientConfigDefaultsProvider.region(region), try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode(), endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator(), httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine(), httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration(), authSchemes ?? [AWSSDKHTTPAuth.SigV4AuthScheme()], authSchemeResolver ?? DefaultSageMakerMetricsAuthSchemeResolver(), interceptorProviders ?? [], httpInterceptorProviders ?? [])
        }

        public convenience required init() async throws {
            try await self.init(useFIPS: nil, useDualStack: nil, appID: nil, awsCredentialIdentityResolver: nil, awsRetryMode: nil, region: nil, signingRegion: nil, endpointResolver: nil, telemetryProvider: nil, retryStrategyOptions: nil, clientLogMode: nil, endpoint: nil, idempotencyTokenGenerator: nil, httpClientEngine: nil, httpClientConfiguration: nil, authSchemes: nil, authSchemeResolver: nil, interceptorProviders: nil, httpInterceptorProviders: nil)
        }

        public convenience init(region: String) throws {
            self.init(nil, nil, try AWSClientRuntime.AWSClientConfigDefaultsProvider.appID(), try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(), try AWSClientRuntime.AWSClientConfigDefaultsProvider.retryMode(), region, region, try DefaultEndpointResolver(), ClientRuntime.DefaultTelemetry.provider, try AWSClientConfigDefaultsProvider.retryStrategyOptions(), AWSClientConfigDefaultsProvider.clientLogMode(), nil, AWSClientConfigDefaultsProvider.idempotencyTokenGenerator(), AWSClientConfigDefaultsProvider.httpClientEngine(), AWSClientConfigDefaultsProvider.httpClientConfiguration(), [AWSSDKHTTPAuth.SigV4AuthScheme()], DefaultSageMakerMetricsAuthSchemeResolver(), [], [])
        }

        public var partitionID: String? {
            return "\(SageMakerMetricsClient.clientName) - \(region ?? "")"
        }
        public func addInterceptorProvider(_ provider: ClientRuntime.InterceptorProvider) {
            self.interceptorProviders.append(provider)
        }

        public func addInterceptorProvider(_ provider: ClientRuntime.HttpInterceptorProvider) {
            self.httpInterceptorProviders.append(provider)
        }

    }

    public static func builder() -> ClientRuntime.ClientBuilder<SageMakerMetricsClient> {
        return ClientRuntime.ClientBuilder<SageMakerMetricsClient>(defaultPlugins: [
            ClientRuntime.DefaultClientPlugin(),
            AWSClientRuntime.DefaultAWSClientPlugin(clientName: self.clientName),
            DefaultAWSAuthSchemePlugin()
        ])
    }
}

extension SageMakerMetricsClient {
    /// Performs the `BatchPutMetrics` operation on the `SageMakerMetricsService` service.
    ///
    /// Used to ingest training metrics into SageMaker. These metrics can be visualized in SageMaker Studio and retrieved with the GetMetrics API.
    ///
    /// - Parameter BatchPutMetricsInput : [no documentation found]
    ///
    /// - Returns: `BatchPutMetricsOutput` : [no documentation found]
    public func batchPutMetrics(input: BatchPutMetricsInput) async throws -> BatchPutMetricsOutput {
        let context = Smithy.ContextBuilder()
                      .withMethod(value: .put)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "batchPutMetrics")
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
        var operation = ClientRuntime.OperationStack<BatchPutMetricsInput, BatchPutMetricsOutput>(id: "batchPutMetrics")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<BatchPutMetricsInput, BatchPutMetricsOutput>(BatchPutMetricsInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<BatchPutMetricsInput, BatchPutMetricsOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware<BatchPutMetricsOutput, EndpointParams>(endpointResolverBlock: { [config] in try config.endpointResolver.resolve(params: $0) }, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware<BatchPutMetricsInput, BatchPutMetricsOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<BatchPutMetricsOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.ContentTypeMiddleware<BatchPutMetricsInput, BatchPutMetricsOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<BatchPutMetricsInput, BatchPutMetricsOutput, SmithyJSON.Writer>(rootNodeInfo: "", inputWritingClosure: BatchPutMetricsInput.write(value:to:)))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware<BatchPutMetricsInput, BatchPutMetricsOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<SmithyRetries.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, BatchPutMetricsOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<BatchPutMetricsOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<BatchPutMetricsOutput>(BatchPutMetricsOutput.httpOutput(from:), BatchPutMetricsOutputError.httpError(from:)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<BatchPutMetricsInput, BatchPutMetricsOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}

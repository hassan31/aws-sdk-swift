// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class KinesisVideoSignalingClient {
    public static let clientName = "KinesisVideoSignalingClient"
    let client: ClientRuntime.SdkHttpClient
    let config: KinesisVideoSignalingClientConfigurationProtocol
    let serviceName = "Kinesis Video Signaling"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: KinesisVideoSignalingClientConfigurationProtocol) {
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
        let config = try KinesisVideoSignalingClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await KinesisVideoSignalingClientConfiguration()
        self.init(config: config)
    }

    public class KinesisVideoSignalingClientConfiguration: KinesisVideoSignalingClientConfigurationProtocol {
        public var clientLogMode: ClientRuntime.ClientLogMode
        public var decoder: ClientRuntime.ResponseDecoder?
        public var encoder: ClientRuntime.RequestEncoder?
        public var httpClientConfiguration: ClientRuntime.HttpClientConfiguration
        public var httpClientEngine: ClientRuntime.HttpClientEngine
        public var idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator
        public var logger: ClientRuntime.LogAgent
        public var retryer: ClientRuntime.SDKRetryer

        public var credentialsProvider: AWSClientRuntime.CredentialsProvider
        public var endpoint: Swift.String?
        public var frameworkMetadata: AWSClientRuntime.FrameworkMetadata?
        public var region: Swift.String?
        public var regionResolver: AWSClientRuntime.RegionResolver?
        public var signingRegion: Swift.String?
        public var useDualStack: Swift.Bool?
        public var useFIPS: Swift.Bool?

        public var endpointResolver: EndpointResolver

        public init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpoint: Swift.String? = nil,
            endpointResolver: EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            region: Swift.String,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration,
            signingRegion: Swift.String? = nil,
            useDualStack: Swift.Bool? = nil,
            useFIPS: Swift.Bool? = nil
        ) throws {
            if let credProvider = credentialsProvider {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromCustom(credProvider)
            } else {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromChain()
            }
            self.endpoint = endpoint
            if let endpointResolver = endpointResolver {
                self.endpointResolver = endpointResolver
            } else {
                self.endpointResolver = try DefaultEndpointResolver()
            }
            self.frameworkMetadata = frameworkMetadata
            self.region = region
            self.regionResolver = try regionResolver ?? DefaultRegionResolver()
            self.signingRegion = signingRegion ?? region
            self.useDualStack = useDualStack
            self.useFIPS = useFIPS
            self.clientLogMode = runtimeConfig.clientLogMode
            self.decoder = runtimeConfig.decoder
            self.encoder = runtimeConfig.encoder
            self.httpClientConfiguration = runtimeConfig.httpClientConfiguration
            self.httpClientEngine = runtimeConfig.httpClientEngine
            self.idempotencyTokenGenerator = runtimeConfig.idempotencyTokenGenerator
            self.logger = runtimeConfig.logger
            self.retryer = runtimeConfig.retryer
        }

        public convenience init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpoint: Swift.String? = nil,
            endpointResolver: EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            region: Swift.String,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil,
            useDualStack: Swift.Bool? = nil,
            useFIPS: Swift.Bool? = nil
        ) throws {
            let runtimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("KinesisVideoSignalingClient")
            try self.init(
                credentialsProvider: credentialsProvider,
                endpoint: endpoint,
                endpointResolver: endpointResolver,
                frameworkMetadata: frameworkMetadata,
                region: region,
                regionResolver: regionResolver,
                runtimeConfig: runtimeConfig,
                signingRegion: signingRegion,
                useDualStack: useDualStack,
                useFIPS: useFIPS
            )
        }

        public init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpoint: Swift.String? = nil,
            endpointResolver: EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration,
            signingRegion: Swift.String? = nil,
            useDualStack: Swift.Bool? = nil,
            useFIPS: Swift.Bool? = nil
        ) async throws {
            if let credProvider = credentialsProvider {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromCustom(credProvider)
            } else {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromChain()
            }
            self.endpoint = endpoint
            if let endpointResolver = endpointResolver {
                self.endpointResolver = endpointResolver
            } else {
                self.endpointResolver = try DefaultEndpointResolver()
            }
            self.frameworkMetadata = frameworkMetadata
            let resolvedRegionResolver = try regionResolver ?? DefaultRegionResolver()
            self.region = await resolvedRegionResolver.resolveRegion()
            self.regionResolver = try regionResolver ?? DefaultRegionResolver()
            self.signingRegion = signingRegion ?? region
            self.useDualStack = useDualStack
            self.useFIPS = useFIPS
            self.clientLogMode = runtimeConfig.clientLogMode
            self.decoder = runtimeConfig.decoder
            self.encoder = runtimeConfig.encoder
            self.httpClientConfiguration = runtimeConfig.httpClientConfiguration
            self.httpClientEngine = runtimeConfig.httpClientEngine
            self.idempotencyTokenGenerator = runtimeConfig.idempotencyTokenGenerator
            self.logger = runtimeConfig.logger
            self.retryer = runtimeConfig.retryer
        }

        public convenience init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpoint: Swift.String? = nil,
            endpointResolver: EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil,
            useDualStack: Swift.Bool? = nil,
            useFIPS: Swift.Bool? = nil
        ) async throws {
            let runtimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("KinesisVideoSignalingClient")
            try await self.init(
                credentialsProvider: credentialsProvider,
                endpoint: endpoint,
                endpointResolver: endpointResolver,
                frameworkMetadata: frameworkMetadata,
                regionResolver: regionResolver,
                runtimeConfig: runtimeConfig,
                signingRegion: signingRegion,
                useDualStack: useDualStack,
                useFIPS: useFIPS
            )
        }

        public var partitionID: String? {
            return "KinesisVideoSignalingClient - \(region ?? "")"
        }
    }
}

public struct KinesisVideoSignalingClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "KinesisVideoSignalingClient"
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

extension KinesisVideoSignalingClient: KinesisVideoSignalingClientProtocol {
    /// Gets the Interactive Connectivity Establishment (ICE) server configuration information, including URIs, username, and password which can be used to configure the WebRTC connection. The ICE component uses this configuration information to setup the WebRTC connection, including authenticating with the Traversal Using Relays around NAT (TURN) relay server. TURN is a protocol that is used to improve the connectivity of peer-to-peer applications. By providing a cloud-based relay service, TURN ensures that a connection can be established even when one or more peers are incapable of a direct peer-to-peer connection. For more information, see [A REST API For Access To TURN Services](https://tools.ietf.org/html/draft-uberti-rtcweb-turn-rest-00). You can invoke this API to establish a fallback mechanism in case either of the peers is unable to establish a direct peer-to-peer connection over a signaling channel. You must specify either a signaling channel ARN or the client ID in order to invoke this API.
    public func getIceServerConfig(input: GetIceServerConfigInput) async throws -> GetIceServerConfigOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getIceServerConfig")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "kinesisvideo")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<GetIceServerConfigInput, GetIceServerConfigOutputResponse, GetIceServerConfigOutputError>(id: "getIceServerConfig")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetIceServerConfigInput, GetIceServerConfigOutputResponse, GetIceServerConfigOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetIceServerConfigInput, GetIceServerConfigOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetIceServerConfigOutputResponse, GetIceServerConfigOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetIceServerConfigInput, GetIceServerConfigOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<GetIceServerConfigInput, GetIceServerConfigOutputResponse>(xmlName: "GetIceServerConfigRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<GetIceServerConfigOutputResponse, GetIceServerConfigOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetIceServerConfigOutputResponse, GetIceServerConfigOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetIceServerConfigOutputResponse, GetIceServerConfigOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetIceServerConfigOutputResponse, GetIceServerConfigOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// This API allows you to connect WebRTC-enabled devices with Alexa display devices. When invoked, it sends the Alexa Session Description Protocol (SDP) offer to the master peer. The offer is delivered as soon as the master is connected to the specified signaling channel. This API returns the SDP answer from the connected master. If the master is not connected to the signaling channel, redelivery requests are made until the message expires.
    public func sendAlexaOfferToMaster(input: SendAlexaOfferToMasterInput) async throws -> SendAlexaOfferToMasterOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "sendAlexaOfferToMaster")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "kinesisvideo")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<SendAlexaOfferToMasterInput, SendAlexaOfferToMasterOutputResponse, SendAlexaOfferToMasterOutputError>(id: "sendAlexaOfferToMaster")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<SendAlexaOfferToMasterInput, SendAlexaOfferToMasterOutputResponse, SendAlexaOfferToMasterOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<SendAlexaOfferToMasterInput, SendAlexaOfferToMasterOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<SendAlexaOfferToMasterOutputResponse, SendAlexaOfferToMasterOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<SendAlexaOfferToMasterInput, SendAlexaOfferToMasterOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<SendAlexaOfferToMasterInput, SendAlexaOfferToMasterOutputResponse>(xmlName: "SendAlexaOfferToMasterRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<SendAlexaOfferToMasterOutputResponse, SendAlexaOfferToMasterOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<SendAlexaOfferToMasterOutputResponse, SendAlexaOfferToMasterOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<SendAlexaOfferToMasterOutputResponse, SendAlexaOfferToMasterOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<SendAlexaOfferToMasterOutputResponse, SendAlexaOfferToMasterOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

}

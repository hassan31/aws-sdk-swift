// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class IoTJobsDataPlaneClient {
    public static let clientName = "IoTJobsDataPlaneClient"
    let client: ClientRuntime.SdkHttpClient
    let config: IoTJobsDataPlaneClientConfigurationProtocol
    let serviceName = "IoT Jobs Data Plane"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: IoTJobsDataPlaneClientConfigurationProtocol) {
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
        let config = try IoTJobsDataPlaneClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await IoTJobsDataPlaneClientConfiguration()
        self.init(config: config)
    }

    public class IoTJobsDataPlaneClientConfiguration: IoTJobsDataPlaneClientConfigurationProtocol {
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
            let runtimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("IoTJobsDataPlaneClient")
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
            let runtimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("IoTJobsDataPlaneClient")
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
            return "IoTJobsDataPlaneClient - \(region ?? "")"
        }
    }
}

public struct IoTJobsDataPlaneClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "IoTJobsDataPlaneClient"
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

extension IoTJobsDataPlaneClient: IoTJobsDataPlaneClientProtocol {
    /// Gets details of a job execution.
    public func describeJobExecution(input: DescribeJobExecutionInput) async throws -> DescribeJobExecutionOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeJobExecution")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iot-jobs-data")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<DescribeJobExecutionInput, DescribeJobExecutionOutputResponse, DescribeJobExecutionOutputError>(id: "describeJobExecution")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DescribeJobExecutionInput, DescribeJobExecutionOutputResponse, DescribeJobExecutionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DescribeJobExecutionInput, DescribeJobExecutionOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DescribeJobExecutionOutputResponse, DescribeJobExecutionOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<DescribeJobExecutionInput, DescribeJobExecutionOutputResponse>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<DescribeJobExecutionOutputResponse, DescribeJobExecutionOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DescribeJobExecutionOutputResponse, DescribeJobExecutionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DescribeJobExecutionOutputResponse, DescribeJobExecutionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<DescribeJobExecutionOutputResponse, DescribeJobExecutionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Gets the list of all jobs for a thing that are not in a terminal status.
    public func getPendingJobExecutions(input: GetPendingJobExecutionsInput) async throws -> GetPendingJobExecutionsOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getPendingJobExecutions")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iot-jobs-data")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<GetPendingJobExecutionsInput, GetPendingJobExecutionsOutputResponse, GetPendingJobExecutionsOutputError>(id: "getPendingJobExecutions")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetPendingJobExecutionsInput, GetPendingJobExecutionsOutputResponse, GetPendingJobExecutionsOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetPendingJobExecutionsInput, GetPendingJobExecutionsOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetPendingJobExecutionsOutputResponse, GetPendingJobExecutionsOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<GetPendingJobExecutionsOutputResponse, GetPendingJobExecutionsOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetPendingJobExecutionsOutputResponse, GetPendingJobExecutionsOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetPendingJobExecutionsOutputResponse, GetPendingJobExecutionsOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetPendingJobExecutionsOutputResponse, GetPendingJobExecutionsOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a thing.
    public func startNextPendingJobExecution(input: StartNextPendingJobExecutionInput) async throws -> StartNextPendingJobExecutionOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .put)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startNextPendingJobExecution")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iot-jobs-data")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<StartNextPendingJobExecutionInput, StartNextPendingJobExecutionOutputResponse, StartNextPendingJobExecutionOutputError>(id: "startNextPendingJobExecution")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<StartNextPendingJobExecutionInput, StartNextPendingJobExecutionOutputResponse, StartNextPendingJobExecutionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<StartNextPendingJobExecutionInput, StartNextPendingJobExecutionOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<StartNextPendingJobExecutionOutputResponse, StartNextPendingJobExecutionOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<StartNextPendingJobExecutionInput, StartNextPendingJobExecutionOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<StartNextPendingJobExecutionInput, StartNextPendingJobExecutionOutputResponse>(xmlName: "StartNextPendingJobExecutionRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<StartNextPendingJobExecutionOutputResponse, StartNextPendingJobExecutionOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<StartNextPendingJobExecutionOutputResponse, StartNextPendingJobExecutionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<StartNextPendingJobExecutionOutputResponse, StartNextPendingJobExecutionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<StartNextPendingJobExecutionOutputResponse, StartNextPendingJobExecutionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Updates the status of a job execution.
    public func updateJobExecution(input: UpdateJobExecutionInput) async throws -> UpdateJobExecutionOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateJobExecution")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "iot-jobs-data")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<UpdateJobExecutionInput, UpdateJobExecutionOutputResponse, UpdateJobExecutionOutputError>(id: "updateJobExecution")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<UpdateJobExecutionInput, UpdateJobExecutionOutputResponse, UpdateJobExecutionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<UpdateJobExecutionInput, UpdateJobExecutionOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<UpdateJobExecutionOutputResponse, UpdateJobExecutionOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UpdateJobExecutionInput, UpdateJobExecutionOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<UpdateJobExecutionInput, UpdateJobExecutionOutputResponse>(xmlName: "UpdateJobExecutionRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<UpdateJobExecutionOutputResponse, UpdateJobExecutionOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<UpdateJobExecutionOutputResponse, UpdateJobExecutionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<UpdateJobExecutionOutputResponse, UpdateJobExecutionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<UpdateJobExecutionOutputResponse, UpdateJobExecutionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

}

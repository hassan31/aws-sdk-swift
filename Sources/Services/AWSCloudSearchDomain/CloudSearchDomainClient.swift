// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging
import SmithyJSON
import SmithyReadWrite

public class CloudSearchDomainClient: Client {
    public static let clientName = "CloudSearchDomainClient"
    let client: ClientRuntime.SdkHttpClient
    let config: CloudSearchDomainClient.CloudSearchDomainClientConfiguration
    let serviceName = "CloudSearch Domain"

    public required init(config: CloudSearchDomainClient.CloudSearchDomainClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try CloudSearchDomainClient.CloudSearchDomainClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience required init() async throws {
        let config = try await CloudSearchDomainClient.CloudSearchDomainClientConfiguration()
        self.init(config: config)
    }
}

extension CloudSearchDomainClient {
    public class CloudSearchDomainClientConfiguration: AWSDefaultClientConfiguration & AWSRegionClientConfiguration & DefaultClientConfiguration & DefaultHttpClientConfiguration {
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
            self.logger = telemetryProvider.loggerProvider.getLogger(name: CloudSearchDomainClient.clientName)
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any AWSClientRuntime.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: ClientRuntime.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: ClientRuntime.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: [ClientRuntime.AuthScheme]? = nil, authSchemeResolver: ClientRuntime.AuthSchemeResolver? = nil) throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientConfigDefaultsProvider.retryMode(), region, signingRegion, try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode, endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine, httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration, authSchemes ?? [SigV4AuthScheme()], authSchemeResolver ?? DefaultCloudSearchDomainAuthSchemeResolver())
        }

        public convenience init(useFIPS: Swift.Bool? = nil, useDualStack: Swift.Bool? = nil, appID: Swift.String? = nil, awsCredentialIdentityResolver: (any AWSClientRuntime.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSClientRuntime.AWSRetryMode? = nil, region: Swift.String? = nil, signingRegion: Swift.String? = nil, endpointResolver: EndpointResolver? = nil, telemetryProvider: ClientRuntime.TelemetryProvider? = nil, retryStrategyOptions: ClientRuntime.RetryStrategyOptions? = nil, clientLogMode: ClientRuntime.ClientLogMode? = nil, endpoint: Swift.String? = nil, idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator? = nil, httpClientEngine: ClientRuntime.HTTPClient? = nil, httpClientConfiguration: ClientRuntime.HttpClientConfiguration? = nil, authSchemes: [ClientRuntime.AuthScheme]? = nil, authSchemeResolver: ClientRuntime.AuthSchemeResolver? = nil) async throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientConfigDefaultsProvider.retryMode(), try await AWSClientConfigDefaultsProvider.region(region), try await AWSClientConfigDefaultsProvider.region(region), try endpointResolver ?? DefaultEndpointResolver(), telemetryProvider ?? ClientRuntime.DefaultTelemetry.provider, try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode, endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine, httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration, authSchemes ?? [SigV4AuthScheme()], authSchemeResolver ?? DefaultCloudSearchDomainAuthSchemeResolver())
        }

        public convenience required init() async throws {
            try await self.init(useFIPS: nil, useDualStack: nil, appID: nil, awsCredentialIdentityResolver: nil, awsRetryMode: nil, region: nil, signingRegion: nil, endpointResolver: nil, telemetryProvider: nil, retryStrategyOptions: nil, clientLogMode: nil, endpoint: nil, idempotencyTokenGenerator: nil, httpClientEngine: nil, httpClientConfiguration: nil, authSchemes: nil, authSchemeResolver: nil)
        }

        public convenience init(region: String) throws {
            self.init(nil, nil, try AWSClientConfigDefaultsProvider.appID(), try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(), try AWSClientConfigDefaultsProvider.retryMode(), region, region, try DefaultEndpointResolver(), ClientRuntime.DefaultTelemetry.provider, try AWSClientConfigDefaultsProvider.retryStrategyOptions(), AWSClientConfigDefaultsProvider.clientLogMode, nil, AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, AWSClientConfigDefaultsProvider.httpClientEngine, AWSClientConfigDefaultsProvider.httpClientConfiguration, [SigV4AuthScheme()], DefaultCloudSearchDomainAuthSchemeResolver())
        }

        public var partitionID: String? {
            return "\(CloudSearchDomainClient.clientName) - \(region ?? "")"
        }
    }

    public static func builder() -> ClientBuilder<CloudSearchDomainClient> {
        return ClientBuilder<CloudSearchDomainClient>(defaultPlugins: [
            ClientRuntime.DefaultClientPlugin(),
            AWSClientRuntime.DefaultAWSClientPlugin(clientName: self.clientName),
            DefaultAWSAuthSchemePlugin()
        ])
    }
}

public struct CloudSearchDomainClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "CloudSearchDomainClient"
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

extension CloudSearchDomainClient {
    /// Performs the `Search` operation on the `AmazonCloudSearch2013` service.
    ///
    /// Retrieves a list of documents that match the specified search criteria. How you specify the search criteria depends on which query parser you use. Amazon CloudSearch supports four query parsers:
    ///
    /// * simple: search all text and text-array fields for the specified string. Search for phrases, individual terms, and prefixes.
    ///
    /// * structured: search specific fields, construct compound queries using Boolean operators, and use advanced features such as term boosting and proximity searching.
    ///
    /// * lucene: specify search criteria using the Apache Lucene query parser syntax.
    ///
    /// * dismax: specify search criteria using the simplified subset of the Apache Lucene query parser syntax defined by the DisMax query parser.
    ///
    ///
    /// For more information, see [Searching Your Data](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching.html) in the Amazon CloudSearch Developer Guide. The endpoint for submitting Search requests is domain-specific. You submit search requests to a domain's search endpoint. To get the search endpoint for your domain, use the Amazon CloudSearch configuration service DescribeDomains action. A domain's endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console.
    ///
    /// - Parameter SearchInput : Container for the parameters to the Search request.
    ///
    /// - Returns: `SearchOutput` : The result of a Search request. Contains the documents that match the specified search criteria and any requested fields, highlights, and facet information.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `SearchException` : Information about any problems encountered while processing a search request.
    public func search(input: SearchInput) async throws -> SearchOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "search")
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
                      .withSigningName(value: "cloudsearch")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<SearchInput, SearchOutput>(id: "search")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<SearchInput, SearchOutput>(SearchInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<SearchInput, SearchOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<SearchOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware<SearchInput, SearchOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<SearchOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<SearchInput, SearchOutput>(SearchInput.queryItemProvider(_:)))
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, SearchOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<SearchOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<SearchOutput>(SearchOutput.httpOutput(from:), SearchOutputError.httpError(from:)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<SearchInput, SearchOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `Suggest` operation on the `AmazonCloudSearch2013` service.
    ///
    /// Retrieves autocomplete suggestions for a partial query string. You can use suggestions enable you to display likely matches before users finish typing. In Amazon CloudSearch, suggestions are based on the contents of a particular text field. When you request suggestions, Amazon CloudSearch finds all of the documents whose values in the suggester field start with the specified query string. The beginning of the field must match the query string to be considered a match. For more information about configuring suggesters and retrieving suggestions, see [Getting Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html) in the Amazon CloudSearch Developer Guide. The endpoint for submitting Suggest requests is domain-specific. You submit suggest requests to a domain's search endpoint. To get the search endpoint for your domain, use the Amazon CloudSearch configuration service DescribeDomains action. A domain's endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console.
    ///
    /// - Parameter SuggestInput : Container for the parameters to the Suggest request.
    ///
    /// - Returns: `SuggestOutput` : Contains the response to a Suggest request.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `SearchException` : Information about any problems encountered while processing a search request.
    public func suggest(input: SuggestInput) async throws -> SuggestOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "suggest")
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
                      .withSigningName(value: "cloudsearch")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<SuggestInput, SuggestOutput>(id: "suggest")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<SuggestInput, SuggestOutput>(SuggestInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<SuggestInput, SuggestOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<SuggestOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware<SuggestInput, SuggestOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<SuggestOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<SuggestInput, SuggestOutput>(SuggestInput.queryItemProvider(_:)))
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, SuggestOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<SuggestOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<SuggestOutput>(SuggestOutput.httpOutput(from:), SuggestOutputError.httpError(from:)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<SuggestInput, SuggestOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `UploadDocuments` operation on the `AmazonCloudSearch2013` service.
    ///
    /// Posts a batch of documents to a search domain for indexing. A document batch is a collection of add and delete operations that represent the documents you want to add, update, or delete from your domain. Batches can be described in either JSON or XML. Each item that you want Amazon CloudSearch to return as a search result (such as a product) is represented as a document. Every document has a unique ID and one or more fields that contain the data that you want to search and return in results. Individual documents cannot contain more than 1 MB of data. The entire batch cannot exceed 5 MB. To get the best possible upload performance, group add and delete operations in batches that are close the 5 MB limit. Submitting a large volume of single-document batches can overload a domain's document service. The endpoint for submitting UploadDocuments requests is domain-specific. To get the document endpoint for your domain, use the Amazon CloudSearch configuration service DescribeDomains action. A domain's endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console. For more information about formatting your data for Amazon CloudSearch, see [Preparing Your Data](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/preparing-data.html) in the Amazon CloudSearch Developer Guide. For more information about uploading data for indexing, see [Uploading Data](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/uploading-data.html) in the Amazon CloudSearch Developer Guide.
    ///
    /// - Parameter UploadDocumentsInput : Container for the parameters to the UploadDocuments request.
    ///
    /// - Returns: `UploadDocumentsOutput` : Contains the response to an UploadDocuments request.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DocumentServiceException` : Information about any problems encountered while processing an upload request.
    public func uploadDocuments(input: UploadDocumentsInput) async throws -> UploadDocumentsOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "uploadDocuments")
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
                      .withSigningName(value: "cloudsearch")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<UploadDocumentsInput, UploadDocumentsOutput>(id: "uploadDocuments")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<UploadDocumentsInput, UploadDocumentsOutput>(UploadDocumentsInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<UploadDocumentsInput, UploadDocumentsOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<UploadDocumentsOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware<UploadDocumentsInput, UploadDocumentsOutput>(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<UploadDocumentsOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.HeaderMiddleware<UploadDocumentsInput, UploadDocumentsOutput>(UploadDocumentsInput.headerProvider(_:)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<UploadDocumentsInput, UploadDocumentsOutput>(UploadDocumentsInput.queryItemProvider(_:)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UploadDocumentsInput, UploadDocumentsOutput>(contentType: "application/octet-stream"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BlobStreamBodyMiddleware<UploadDocumentsInput, UploadDocumentsOutput>(keyPath: \.documents))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware<UploadDocumentsInput, UploadDocumentsOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, UploadDocumentsOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<UploadDocumentsOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<UploadDocumentsOutput>(UploadDocumentsOutput.httpOutput(from:), UploadDocumentsOutputError.httpError(from:)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<UploadDocumentsInput, UploadDocumentsOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}

// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class CloudSearchDomainClient {
    public static let clientName = "CloudSearchDomainClient"
    let client: ClientRuntime.SdkHttpClient
    let config: CloudSearchDomainClient.CloudSearchDomainClientConfiguration
    let serviceName = "CloudSearch Domain"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: CloudSearchDomainClient.CloudSearchDomainClientConfiguration) {
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
        let config = try CloudSearchDomainClient.CloudSearchDomainClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await CloudSearchDomainClient.CloudSearchDomainClientConfiguration()
        self.init(config: config)
    }
}

extension CloudSearchDomainClient {
    public typealias CloudSearchDomainClientConfiguration = AWSClientConfiguration<ServiceSpecificConfiguration>

    public struct ServiceSpecificConfiguration: AWSServiceSpecificConfiguration {
        public typealias AWSServiceEndpointResolver = EndpointResolver

        public var serviceName: String { "CloudSearch Domain" }
        public var clientName: String { "CloudSearchDomainClient" }
        public var endpointResolver: EndpointResolver

        public init(endpointResolver: EndpointResolver? = nil) throws {
            self.endpointResolver = try endpointResolver ?? DefaultEndpointResolver()
        }
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

extension CloudSearchDomainClient: CloudSearchDomainClientProtocol {
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
    public func search(input: SearchInput) async throws -> SearchOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "search")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "cloudsearch")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<SearchInput, SearchOutput>(id: "search")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<SearchInput, SearchOutput>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<SearchInput, SearchOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<SearchOutput>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<SearchInput, SearchOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, SearchOutput>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<SearchOutput>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<SearchOutput>(responseClosure(decoder: decoder), responseErrorClosure(SearchOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<SearchOutput>(clientLogMode: config.clientLogMode))
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
    public func suggest(input: SuggestInput) async throws -> SuggestOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "suggest")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "cloudsearch")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<SuggestInput, SuggestOutput>(id: "suggest")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<SuggestInput, SuggestOutput>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<SuggestInput, SuggestOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<SuggestOutput>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<SuggestInput, SuggestOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, SuggestOutput>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<SuggestOutput>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<SuggestOutput>(responseClosure(decoder: decoder), responseErrorClosure(SuggestOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<SuggestOutput>(clientLogMode: config.clientLogMode))
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
    public func uploadDocuments(input: UploadDocumentsInput) async throws -> UploadDocumentsOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "uploadDocuments")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "cloudsearch")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<UploadDocumentsInput, UploadDocumentsOutput>(id: "uploadDocuments")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<UploadDocumentsInput, UploadDocumentsOutput>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<UploadDocumentsInput, UploadDocumentsOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<UploadDocumentsOutput>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.HeaderMiddleware<UploadDocumentsInput, UploadDocumentsOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<UploadDocumentsInput, UploadDocumentsOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UploadDocumentsInput, UploadDocumentsOutput>(contentType: "application/octet-stream"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BlobStreamBodyMiddleware<UploadDocumentsInput, UploadDocumentsOutput>(keyPath: \.documents))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, UploadDocumentsOutput>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<UploadDocumentsOutput>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<UploadDocumentsOutput>(responseClosure(decoder: decoder), responseErrorClosure(UploadDocumentsOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<UploadDocumentsOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}

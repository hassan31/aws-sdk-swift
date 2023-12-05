// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Web Services AppFabric quickly connects software as a service (SaaS) applications across your organization. This allows IT and security teams to easily manage and secure applications using a standard schema, and employees can complete everyday tasks faster using generative artificial intelligence (AI). You can use these APIs to complete AppFabric tasks, such as setting up audit log ingestions or viewing user access. For more information about AppFabric, including the required permissions to use the service, see the [Amazon Web Services AppFabric Administration Guide](https://docs.aws.amazon.com/appfabric/latest/adminguide/). For more information about using the Command Line Interface (CLI) to manage your AppFabric resources, see the [AppFabric section of the CLI Reference](https://docs.aws.amazon.com/cli/latest/reference/appfabric/index.html).
public protocol AppFabricClientProtocol {
    /// Performs the `BatchGetUserAccessTasks` operation on the `FabricFrontEndService` service.
    ///
    /// Gets user access details in a batch request. This action polls data from the tasks that are kicked off by the StartUserAccessTasks action.
    ///
    /// - Parameter BatchGetUserAccessTasksInput : [no documentation found]
    ///
    /// - Returns: `BatchGetUserAccessTasksOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func batchGetUserAccessTasks(input: BatchGetUserAccessTasksInput) async throws -> BatchGetUserAccessTasksOutput
    /// Performs the `ConnectAppAuthorization` operation on the `FabricFrontEndService` service.
    ///
    /// Establishes a connection between Amazon Web Services AppFabric and an application, which allows AppFabric to call the APIs of the application.
    ///
    /// - Parameter ConnectAppAuthorizationInput : [no documentation found]
    ///
    /// - Returns: `ConnectAppAuthorizationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func connectAppAuthorization(input: ConnectAppAuthorizationInput) async throws -> ConnectAppAuthorizationOutput
    /// Performs the `CreateAppAuthorization` operation on the `FabricFrontEndService` service.
    ///
    /// Creates an app authorization within an app bundle, which allows AppFabric to connect to an application.
    ///
    /// - Parameter CreateAppAuthorizationInput : [no documentation found]
    ///
    /// - Returns: `CreateAppAuthorizationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `ConflictException` : The request has created a conflict. Check the request parameters and try again.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceQuotaExceededException` : The request exceeds a service quota.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func createAppAuthorization(input: CreateAppAuthorizationInput) async throws -> CreateAppAuthorizationOutput
    /// Performs the `CreateAppBundle` operation on the `FabricFrontEndService` service.
    ///
    /// Creates an app bundle to collect data from an application using AppFabric.
    ///
    /// - Parameter CreateAppBundleInput : [no documentation found]
    ///
    /// - Returns: `CreateAppBundleOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `ConflictException` : The request has created a conflict. Check the request parameters and try again.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ServiceQuotaExceededException` : The request exceeds a service quota.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func createAppBundle(input: CreateAppBundleInput) async throws -> CreateAppBundleOutput
    /// Performs the `CreateIngestion` operation on the `FabricFrontEndService` service.
    ///
    /// Creates a data ingestion for an application.
    ///
    /// - Parameter CreateIngestionInput : [no documentation found]
    ///
    /// - Returns: `CreateIngestionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `ConflictException` : The request has created a conflict. Check the request parameters and try again.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ServiceQuotaExceededException` : The request exceeds a service quota.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func createIngestion(input: CreateIngestionInput) async throws -> CreateIngestionOutput
    /// Performs the `CreateIngestionDestination` operation on the `FabricFrontEndService` service.
    ///
    /// Creates an ingestion destination, which specifies how an application's ingested data is processed by Amazon Web Services AppFabric and where it's delivered.
    ///
    /// - Parameter CreateIngestionDestinationInput : [no documentation found]
    ///
    /// - Returns: `CreateIngestionDestinationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `ConflictException` : The request has created a conflict. Check the request parameters and try again.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ServiceQuotaExceededException` : The request exceeds a service quota.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func createIngestionDestination(input: CreateIngestionDestinationInput) async throws -> CreateIngestionDestinationOutput
    /// Performs the `DeleteAppAuthorization` operation on the `FabricFrontEndService` service.
    ///
    /// Deletes an app authorization. You must delete the associated ingestion before you can delete an app authorization.
    ///
    /// - Parameter DeleteAppAuthorizationInput : [no documentation found]
    ///
    /// - Returns: `DeleteAppAuthorizationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func deleteAppAuthorization(input: DeleteAppAuthorizationInput) async throws -> DeleteAppAuthorizationOutput
    /// Performs the `DeleteAppBundle` operation on the `FabricFrontEndService` service.
    ///
    /// Deletes an app bundle. You must delete all associated app authorizations before you can delete an app bundle.
    ///
    /// - Parameter DeleteAppBundleInput : [no documentation found]
    ///
    /// - Returns: `DeleteAppBundleOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `ConflictException` : The request has created a conflict. Check the request parameters and try again.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func deleteAppBundle(input: DeleteAppBundleInput) async throws -> DeleteAppBundleOutput
    /// Performs the `DeleteIngestion` operation on the `FabricFrontEndService` service.
    ///
    /// Deletes an ingestion. You must stop (disable) the ingestion and you must delete all associated ingestion destinations before you can delete an app ingestion.
    ///
    /// - Parameter DeleteIngestionInput : [no documentation found]
    ///
    /// - Returns: `DeleteIngestionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func deleteIngestion(input: DeleteIngestionInput) async throws -> DeleteIngestionOutput
    /// Performs the `DeleteIngestionDestination` operation on the `FabricFrontEndService` service.
    ///
    /// Deletes an ingestion destination. This deletes the association between an ingestion and it's destination. It doesn't delete previously ingested data or the storage destination, such as the Amazon S3 bucket where the data is delivered. If the ingestion destination is deleted while the associated ingestion is enabled, the ingestion will fail and is eventually disabled.
    ///
    /// - Parameter DeleteIngestionDestinationInput : [no documentation found]
    ///
    /// - Returns: `DeleteIngestionDestinationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func deleteIngestionDestination(input: DeleteIngestionDestinationInput) async throws -> DeleteIngestionDestinationOutput
    /// Performs the `GetAppAuthorization` operation on the `FabricFrontEndService` service.
    ///
    /// Returns information about an app authorization.
    ///
    /// - Parameter GetAppAuthorizationInput : [no documentation found]
    ///
    /// - Returns: `GetAppAuthorizationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func getAppAuthorization(input: GetAppAuthorizationInput) async throws -> GetAppAuthorizationOutput
    /// Performs the `GetAppBundle` operation on the `FabricFrontEndService` service.
    ///
    /// Returns information about an app bundle.
    ///
    /// - Parameter GetAppBundleInput : [no documentation found]
    ///
    /// - Returns: `GetAppBundleOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func getAppBundle(input: GetAppBundleInput) async throws -> GetAppBundleOutput
    /// Performs the `GetIngestion` operation on the `FabricFrontEndService` service.
    ///
    /// Returns information about an ingestion.
    ///
    /// - Parameter GetIngestionInput : [no documentation found]
    ///
    /// - Returns: `GetIngestionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func getIngestion(input: GetIngestionInput) async throws -> GetIngestionOutput
    /// Performs the `GetIngestionDestination` operation on the `FabricFrontEndService` service.
    ///
    /// Returns information about an ingestion destination.
    ///
    /// - Parameter GetIngestionDestinationInput : [no documentation found]
    ///
    /// - Returns: `GetIngestionDestinationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func getIngestionDestination(input: GetIngestionDestinationInput) async throws -> GetIngestionDestinationOutput
    /// Performs the `ListAppAuthorizations` operation on the `FabricFrontEndService` service.
    ///
    /// Returns a list of all app authorizations configured for an app bundle.
    ///
    /// - Parameter ListAppAuthorizationsInput : [no documentation found]
    ///
    /// - Returns: `ListAppAuthorizationsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func listAppAuthorizations(input: ListAppAuthorizationsInput) async throws -> ListAppAuthorizationsOutput
    /// Performs the `ListAppBundles` operation on the `FabricFrontEndService` service.
    ///
    /// Returns a list of app bundles.
    ///
    /// - Parameter ListAppBundlesInput : [no documentation found]
    ///
    /// - Returns: `ListAppBundlesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func listAppBundles(input: ListAppBundlesInput) async throws -> ListAppBundlesOutput
    /// Performs the `ListIngestionDestinations` operation on the `FabricFrontEndService` service.
    ///
    /// Returns a list of all ingestion destinations configured for an ingestion.
    ///
    /// - Parameter ListIngestionDestinationsInput : [no documentation found]
    ///
    /// - Returns: `ListIngestionDestinationsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func listIngestionDestinations(input: ListIngestionDestinationsInput) async throws -> ListIngestionDestinationsOutput
    /// Performs the `ListIngestions` operation on the `FabricFrontEndService` service.
    ///
    /// Returns a list of all ingestions configured for an app bundle.
    ///
    /// - Parameter ListIngestionsInput : [no documentation found]
    ///
    /// - Returns: `ListIngestionsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func listIngestions(input: ListIngestionsInput) async throws -> ListIngestionsOutput
    /// Performs the `ListTagsForResource` operation on the `FabricFrontEndService` service.
    ///
    /// Returns a list of tags for a resource.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Performs the `StartIngestion` operation on the `FabricFrontEndService` service.
    ///
    /// Starts (enables) an ingestion, which collects data from an application.
    ///
    /// - Parameter StartIngestionInput : [no documentation found]
    ///
    /// - Returns: `StartIngestionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `ConflictException` : The request has created a conflict. Check the request parameters and try again.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func startIngestion(input: StartIngestionInput) async throws -> StartIngestionOutput
    /// Performs the `StartUserAccessTasks` operation on the `FabricFrontEndService` service.
    ///
    /// Starts the tasks to search user access status for a specific email address. The tasks are stopped when the user access status data is found. The tasks are terminated when the API calls to the application time out.
    ///
    /// - Parameter StartUserAccessTasksInput : [no documentation found]
    ///
    /// - Returns: `StartUserAccessTasksOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func startUserAccessTasks(input: StartUserAccessTasksInput) async throws -> StartUserAccessTasksOutput
    /// Performs the `StopIngestion` operation on the `FabricFrontEndService` service.
    ///
    /// Stops (disables) an ingestion.
    ///
    /// - Parameter StopIngestionInput : [no documentation found]
    ///
    /// - Returns: `StopIngestionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `ConflictException` : The request has created a conflict. Check the request parameters and try again.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func stopIngestion(input: StopIngestionInput) async throws -> StopIngestionOutput
    /// Performs the `TagResource` operation on the `FabricFrontEndService` service.
    ///
    /// Assigns one or more tags (key-value pairs) to the specified resource.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Performs the `UntagResource` operation on the `FabricFrontEndService` service.
    ///
    /// Removes a tag or tags from a resource.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Performs the `UpdateAppAuthorization` operation on the `FabricFrontEndService` service.
    ///
    /// Updates an app authorization within an app bundle, which allows AppFabric to connect to an application. If the app authorization was in a connected state, updating the app authorization will set it back to a PendingConnect state.
    ///
    /// - Parameter UpdateAppAuthorizationInput : [no documentation found]
    ///
    /// - Returns: `UpdateAppAuthorizationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func updateAppAuthorization(input: UpdateAppAuthorizationInput) async throws -> UpdateAppAuthorizationOutput
    /// Performs the `UpdateIngestionDestination` operation on the `FabricFrontEndService` service.
    ///
    /// Updates an ingestion destination, which specifies how an application's ingested data is processed by Amazon Web Services AppFabric and where it's delivered.
    ///
    /// - Parameter UpdateIngestionDestinationInput : [no documentation found]
    ///
    /// - Returns: `UpdateIngestionDestinationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You are not authorized to perform this operation.
    /// - `ConflictException` : The request has created a conflict. Check the request parameters and try again.
    /// - `InternalServerException` : The request processing has failed because of an unknown error, exception, or failure with an internal server.
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceQuotaExceededException` : The request exceeds a service quota.
    /// - `ThrottlingException` : The request rate exceeds the limit.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func updateIngestionDestination(input: UpdateIngestionDestinationInput) async throws -> UpdateIngestionDestinationOutput
}

public enum AppFabricClientTypes {}

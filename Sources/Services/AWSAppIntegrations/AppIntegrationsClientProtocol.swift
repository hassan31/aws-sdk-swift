// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// The Amazon AppIntegrations service enables you to configure and reuse connections to external applications. For information about how you can use external applications with Amazon Connect, see [Set up pre-built integrations](https://docs.aws.amazon.com/connect/latest/adminguide/crm.html) and [Deliver information to agents using Amazon Connect Wisdom](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-wisdom.html) in the Amazon Connect Administrator Guide.
public protocol AppIntegrationsClientProtocol {
    /// This API is in preview release and subject to change. Creates and persists an Application resource.
    ///
    /// - Parameter CreateApplicationInput : [no documentation found]
    ///
    /// - Returns: `CreateApplicationOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `DuplicateResourceException` : A resource with the specified name already exists.
    /// - `InternalServiceError` : Request processing failed due to an error or failure with the service.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `ResourceQuotaExceededException` : The allowed quota for the resource has been exceeded.
    /// - `ThrottlingException` : The throttling limit has been exceeded.
    func createApplication(input: CreateApplicationInput) async throws -> CreateApplicationOutputResponse
    /// Creates and persists a DataIntegration resource. You cannot create a DataIntegration association for a DataIntegration that has been previously associated. Use a different DataIntegration, or recreate the DataIntegration using the CreateDataIntegration API.
    ///
    /// - Parameter CreateDataIntegrationInput : [no documentation found]
    ///
    /// - Returns: `CreateDataIntegrationOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `DuplicateResourceException` : A resource with the specified name already exists.
    /// - `InternalServiceError` : Request processing failed due to an error or failure with the service.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `ResourceQuotaExceededException` : The allowed quota for the resource has been exceeded.
    /// - `ThrottlingException` : The throttling limit has been exceeded.
    func createDataIntegration(input: CreateDataIntegrationInput) async throws -> CreateDataIntegrationOutputResponse
    /// Creates an EventIntegration, given a specified name, description, and a reference to an Amazon EventBridge bus in your account and a partner event source that pushes events to that bus. No objects are created in the your account, only metadata that is persisted on the EventIntegration control plane.
    ///
    /// - Parameter CreateEventIntegrationInput : [no documentation found]
    ///
    /// - Returns: `CreateEventIntegrationOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `DuplicateResourceException` : A resource with the specified name already exists.
    /// - `InternalServiceError` : Request processing failed due to an error or failure with the service.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `ResourceQuotaExceededException` : The allowed quota for the resource has been exceeded.
    /// - `ThrottlingException` : The throttling limit has been exceeded.
    func createEventIntegration(input: CreateEventIntegrationInput) async throws -> CreateEventIntegrationOutputResponse
    /// Deletes the DataIntegration. Only DataIntegrations that don't have any DataIntegrationAssociations can be deleted. Deleting a DataIntegration also deletes the underlying Amazon AppFlow flow and service linked role. You cannot create a DataIntegration association for a DataIntegration that has been previously associated. Use a different DataIntegration, or recreate the DataIntegration using the [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html) API.
    ///
    /// - Parameter DeleteDataIntegrationInput : [no documentation found]
    ///
    /// - Returns: `DeleteDataIntegrationOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceError` : Request processing failed due to an error or failure with the service.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The throttling limit has been exceeded.
    func deleteDataIntegration(input: DeleteDataIntegrationInput) async throws -> DeleteDataIntegrationOutputResponse
    /// Deletes the specified existing event integration. If the event integration is associated with clients, the request is rejected.
    ///
    /// - Parameter DeleteEventIntegrationInput : [no documentation found]
    ///
    /// - Returns: `DeleteEventIntegrationOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceError` : Request processing failed due to an error or failure with the service.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The throttling limit has been exceeded.
    func deleteEventIntegration(input: DeleteEventIntegrationInput) async throws -> DeleteEventIntegrationOutputResponse
    /// This API is in preview release and subject to change. Get an Application resource.
    ///
    /// - Parameter GetApplicationInput : [no documentation found]
    ///
    /// - Returns: `GetApplicationOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceError` : Request processing failed due to an error or failure with the service.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The throttling limit has been exceeded.
    func getApplication(input: GetApplicationInput) async throws -> GetApplicationOutputResponse
    /// Returns information about the DataIntegration. You cannot create a DataIntegration association for a DataIntegration that has been previously associated. Use a different DataIntegration, or recreate the DataIntegration using the [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html) API.
    ///
    /// - Parameter GetDataIntegrationInput : [no documentation found]
    ///
    /// - Returns: `GetDataIntegrationOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceError` : Request processing failed due to an error or failure with the service.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The throttling limit has been exceeded.
    func getDataIntegration(input: GetDataIntegrationInput) async throws -> GetDataIntegrationOutputResponse
    /// Returns information about the event integration.
    ///
    /// - Parameter GetEventIntegrationInput : [no documentation found]
    ///
    /// - Returns: `GetEventIntegrationOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceError` : Request processing failed due to an error or failure with the service.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The throttling limit has been exceeded.
    func getEventIntegration(input: GetEventIntegrationInput) async throws -> GetEventIntegrationOutputResponse
    /// This API is in preview release and subject to change. Lists applications in the account.
    ///
    /// - Parameter ListApplicationsInput : [no documentation found]
    ///
    /// - Returns: `ListApplicationsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceError` : Request processing failed due to an error or failure with the service.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `ThrottlingException` : The throttling limit has been exceeded.
    func listApplications(input: ListApplicationsInput) async throws -> ListApplicationsOutputResponse
    /// Returns a paginated list of DataIntegration associations in the account. You cannot create a DataIntegration association for a DataIntegration that has been previously associated. Use a different DataIntegration, or recreate the DataIntegration using the [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html) API.
    ///
    /// - Parameter ListDataIntegrationAssociationsInput : [no documentation found]
    ///
    /// - Returns: `ListDataIntegrationAssociationsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceError` : Request processing failed due to an error or failure with the service.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The throttling limit has been exceeded.
    func listDataIntegrationAssociations(input: ListDataIntegrationAssociationsInput) async throws -> ListDataIntegrationAssociationsOutputResponse
    /// Returns a paginated list of DataIntegrations in the account. You cannot create a DataIntegration association for a DataIntegration that has been previously associated. Use a different DataIntegration, or recreate the DataIntegration using the [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html) API.
    ///
    /// - Parameter ListDataIntegrationsInput : [no documentation found]
    ///
    /// - Returns: `ListDataIntegrationsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceError` : Request processing failed due to an error or failure with the service.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `ThrottlingException` : The throttling limit has been exceeded.
    func listDataIntegrations(input: ListDataIntegrationsInput) async throws -> ListDataIntegrationsOutputResponse
    /// Returns a paginated list of event integration associations in the account.
    ///
    /// - Parameter ListEventIntegrationAssociationsInput : [no documentation found]
    ///
    /// - Returns: `ListEventIntegrationAssociationsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceError` : Request processing failed due to an error or failure with the service.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The throttling limit has been exceeded.
    func listEventIntegrationAssociations(input: ListEventIntegrationAssociationsInput) async throws -> ListEventIntegrationAssociationsOutputResponse
    /// Returns a paginated list of event integrations in the account.
    ///
    /// - Parameter ListEventIntegrationsInput : [no documentation found]
    ///
    /// - Returns: `ListEventIntegrationsOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceError` : Request processing failed due to an error or failure with the service.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `ThrottlingException` : The throttling limit has been exceeded.
    func listEventIntegrations(input: ListEventIntegrationsInput) async throws -> ListEventIntegrationsOutputResponse
    /// Lists the tags for the specified resource.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServiceError` : Request processing failed due to an error or failure with the service.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The throttling limit has been exceeded.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Adds the specified tags to the specified resource.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServiceError` : Request processing failed due to an error or failure with the service.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The throttling limit has been exceeded.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes the specified tags from the specified resource.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServiceError` : Request processing failed due to an error or failure with the service.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The throttling limit has been exceeded.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// This API is in preview release and subject to change. Updates and persists an Application resource.
    ///
    /// - Parameter UpdateApplicationInput : [no documentation found]
    ///
    /// - Returns: `UpdateApplicationOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceError` : Request processing failed due to an error or failure with the service.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The throttling limit has been exceeded.
    func updateApplication(input: UpdateApplicationInput) async throws -> UpdateApplicationOutputResponse
    /// Updates the description of a DataIntegration. You cannot create a DataIntegration association for a DataIntegration that has been previously associated. Use a different DataIntegration, or recreate the DataIntegration using the [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html) API.
    ///
    /// - Parameter UpdateDataIntegrationInput : [no documentation found]
    ///
    /// - Returns: `UpdateDataIntegrationOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceError` : Request processing failed due to an error or failure with the service.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The throttling limit has been exceeded.
    func updateDataIntegration(input: UpdateDataIntegrationInput) async throws -> UpdateDataIntegrationOutputResponse
    /// Updates the description of an event integration.
    ///
    /// - Parameter UpdateEventIntegrationInput : [no documentation found]
    ///
    /// - Returns: `UpdateEventIntegrationOutputResponse` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServiceError` : Request processing failed due to an error or failure with the service.
    /// - `InvalidRequestException` : The request is not valid.
    /// - `ResourceNotFoundException` : The specified resource was not found.
    /// - `ThrottlingException` : The throttling limit has been exceeded.
    func updateEventIntegration(input: UpdateEventIntegrationInput) async throws -> UpdateEventIntegrationOutputResponse
}

public enum AppIntegrationsClientTypes {}

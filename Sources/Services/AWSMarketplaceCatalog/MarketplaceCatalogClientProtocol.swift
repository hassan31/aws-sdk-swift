// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Catalog API actions allow you to manage your entities through list, describe, and update capabilities. An entity can be a product or an offer on AWS Marketplace. You can automate your entity update process by integrating the AWS Marketplace Catalog API with your AWS Marketplace product build or deployment pipelines. You can also create your own applications on top of the Catalog API to manage your products on AWS Marketplace.
public protocol MarketplaceCatalogClientProtocol {
    /// Performs the `CancelChangeSet` operation on the `AWSMPSeymour` service.
    ///
    /// Used to cancel an open change request. Must be sent before the status of the request changes to APPLYING, the final stage of completing your change request. You can describe a change during the 60-day request history retention period for API calls.
    ///
    /// - Parameter CancelChangeSetInput : [no documentation found]
    ///
    /// - Returns: `CancelChangeSetOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access is denied. HTTP status code: 403
    /// - `InternalServiceException` : There was an internal service exception. HTTP status code: 500
    /// - `ResourceInUseException` : The resource is currently in use.
    /// - `ResourceNotFoundException` : The specified resource wasn't found. HTTP status code: 404
    /// - `ThrottlingException` : Too many requests. HTTP status code: 429
    /// - `ValidationException` : An error occurred during validation. HTTP status code: 422
    func cancelChangeSet(input: CancelChangeSetInput) async throws -> CancelChangeSetOutput
    /// Performs the `DeleteResourcePolicy` operation on the `AWSMPSeymour` service.
    ///
    /// Deletes a resource-based policy on an entity that is identified by its resource ARN.
    ///
    /// - Parameter DeleteResourcePolicyInput : [no documentation found]
    ///
    /// - Returns: `DeleteResourcePolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access is denied. HTTP status code: 403
    /// - `InternalServiceException` : There was an internal service exception. HTTP status code: 500
    /// - `ResourceNotFoundException` : The specified resource wasn't found. HTTP status code: 404
    /// - `ThrottlingException` : Too many requests. HTTP status code: 429
    /// - `ValidationException` : An error occurred during validation. HTTP status code: 422
    func deleteResourcePolicy(input: DeleteResourcePolicyInput) async throws -> DeleteResourcePolicyOutput
    /// Performs the `DescribeChangeSet` operation on the `AWSMPSeymour` service.
    ///
    /// Provides information about a given change set.
    ///
    /// - Parameter DescribeChangeSetInput : [no documentation found]
    ///
    /// - Returns: `DescribeChangeSetOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access is denied. HTTP status code: 403
    /// - `InternalServiceException` : There was an internal service exception. HTTP status code: 500
    /// - `ResourceNotFoundException` : The specified resource wasn't found. HTTP status code: 404
    /// - `ThrottlingException` : Too many requests. HTTP status code: 429
    /// - `ValidationException` : An error occurred during validation. HTTP status code: 422
    func describeChangeSet(input: DescribeChangeSetInput) async throws -> DescribeChangeSetOutput
    /// Performs the `DescribeEntity` operation on the `AWSMPSeymour` service.
    ///
    /// Returns the metadata and content of the entity.
    ///
    /// - Parameter DescribeEntityInput : [no documentation found]
    ///
    /// - Returns: `DescribeEntityOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access is denied. HTTP status code: 403
    /// - `InternalServiceException` : There was an internal service exception. HTTP status code: 500
    /// - `ResourceNotFoundException` : The specified resource wasn't found. HTTP status code: 404
    /// - `ResourceNotSupportedException` : Currently, the specified resource is not supported.
    /// - `ThrottlingException` : Too many requests. HTTP status code: 429
    /// - `ValidationException` : An error occurred during validation. HTTP status code: 422
    func describeEntity(input: DescribeEntityInput) async throws -> DescribeEntityOutput
    /// Performs the `GetResourcePolicy` operation on the `AWSMPSeymour` service.
    ///
    /// Gets a resource-based policy of an entity that is identified by its resource ARN.
    ///
    /// - Parameter GetResourcePolicyInput : [no documentation found]
    ///
    /// - Returns: `GetResourcePolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access is denied. HTTP status code: 403
    /// - `InternalServiceException` : There was an internal service exception. HTTP status code: 500
    /// - `ResourceNotFoundException` : The specified resource wasn't found. HTTP status code: 404
    /// - `ThrottlingException` : Too many requests. HTTP status code: 429
    /// - `ValidationException` : An error occurred during validation. HTTP status code: 422
    func getResourcePolicy(input: GetResourcePolicyInput) async throws -> GetResourcePolicyOutput
    /// Performs the `ListChangeSets` operation on the `AWSMPSeymour` service.
    ///
    /// Returns the list of change sets owned by the account being used to make the call. You can filter this list by providing any combination of entityId, ChangeSetName, and status. If you provide more than one filter, the API operation applies a logical AND between the filters. You can describe a change during the 60-day request history retention period for API calls.
    ///
    /// - Parameter ListChangeSetsInput : [no documentation found]
    ///
    /// - Returns: `ListChangeSetsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access is denied. HTTP status code: 403
    /// - `InternalServiceException` : There was an internal service exception. HTTP status code: 500
    /// - `ThrottlingException` : Too many requests. HTTP status code: 429
    /// - `ValidationException` : An error occurred during validation. HTTP status code: 422
    func listChangeSets(input: ListChangeSetsInput) async throws -> ListChangeSetsOutput
    /// Performs the `ListEntities` operation on the `AWSMPSeymour` service.
    ///
    /// Provides the list of entities of a given type.
    ///
    /// - Parameter ListEntitiesInput : [no documentation found]
    ///
    /// - Returns: `ListEntitiesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access is denied. HTTP status code: 403
    /// - `InternalServiceException` : There was an internal service exception. HTTP status code: 500
    /// - `ResourceNotFoundException` : The specified resource wasn't found. HTTP status code: 404
    /// - `ThrottlingException` : Too many requests. HTTP status code: 429
    /// - `ValidationException` : An error occurred during validation. HTTP status code: 422
    func listEntities(input: ListEntitiesInput) async throws -> ListEntitiesOutput
    /// Performs the `ListTagsForResource` operation on the `AWSMPSeymour` service.
    ///
    /// Lists all tags that have been added to a resource (either an [entity](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities) or [change set](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets)).
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access is denied. HTTP status code: 403
    /// - `InternalServiceException` : There was an internal service exception. HTTP status code: 500
    /// - `ResourceNotFoundException` : The specified resource wasn't found. HTTP status code: 404
    /// - `ThrottlingException` : Too many requests. HTTP status code: 429
    /// - `ValidationException` : An error occurred during validation. HTTP status code: 422
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Performs the `PutResourcePolicy` operation on the `AWSMPSeymour` service.
    ///
    /// Attaches a resource-based policy to an entity. Examples of an entity include: AmiProduct and ContainerProduct.
    ///
    /// - Parameter PutResourcePolicyInput : [no documentation found]
    ///
    /// - Returns: `PutResourcePolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access is denied. HTTP status code: 403
    /// - `InternalServiceException` : There was an internal service exception. HTTP status code: 500
    /// - `ResourceNotFoundException` : The specified resource wasn't found. HTTP status code: 404
    /// - `ThrottlingException` : Too many requests. HTTP status code: 429
    /// - `ValidationException` : An error occurred during validation. HTTP status code: 422
    func putResourcePolicy(input: PutResourcePolicyInput) async throws -> PutResourcePolicyOutput
    /// Performs the `StartChangeSet` operation on the `AWSMPSeymour` service.
    ///
    /// Allows you to request changes for your entities. Within a single ChangeSet, you can't start the same change type against the same entity multiple times. Additionally, when a ChangeSet is running, all the entities targeted by the different changes are locked until the change set has completed (either succeeded, cancelled, or failed). If you try to start a change set containing a change against an entity that is already locked, you will receive a ResourceInUseException error. For example, you can't start the ChangeSet described in the [example](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_StartChangeSet.html#API_StartChangeSet_Examples) later in this topic because it contains two changes to run the same change type (AddRevisions) against the same entity (entity-id@1). For more information about working with change sets, see [ Working with change sets](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets). For information about change types for single-AMI products, see [Working with single-AMI products](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/ami-products.html#working-with-single-AMI-products). Also, for more information about change types available for container-based products, see [Working with container products](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/container-products.html#working-with-container-products).
    ///
    /// - Parameter StartChangeSetInput : [no documentation found]
    ///
    /// - Returns: `StartChangeSetOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access is denied. HTTP status code: 403
    /// - `InternalServiceException` : There was an internal service exception. HTTP status code: 500
    /// - `ResourceInUseException` : The resource is currently in use.
    /// - `ResourceNotFoundException` : The specified resource wasn't found. HTTP status code: 404
    /// - `ServiceQuotaExceededException` : The maximum number of open requests per account has been exceeded.
    /// - `ThrottlingException` : Too many requests. HTTP status code: 429
    /// - `ValidationException` : An error occurred during validation. HTTP status code: 422
    func startChangeSet(input: StartChangeSetInput) async throws -> StartChangeSetOutput
    /// Performs the `TagResource` operation on the `AWSMPSeymour` service.
    ///
    /// Tags a resource (either an [entity](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities) or [change set](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets)).
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access is denied. HTTP status code: 403
    /// - `InternalServiceException` : There was an internal service exception. HTTP status code: 500
    /// - `ResourceNotFoundException` : The specified resource wasn't found. HTTP status code: 404
    /// - `ThrottlingException` : Too many requests. HTTP status code: 429
    /// - `ValidationException` : An error occurred during validation. HTTP status code: 422
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Performs the `UntagResource` operation on the `AWSMPSeymour` service.
    ///
    /// Removes a tag or list of tags from a resource (either an [entity](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities) or [change set](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets)).
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : Access is denied. HTTP status code: 403
    /// - `InternalServiceException` : There was an internal service exception. HTTP status code: 500
    /// - `ResourceNotFoundException` : The specified resource wasn't found. HTTP status code: 404
    /// - `ThrottlingException` : Too many requests. HTTP status code: 429
    /// - `ValidationException` : An error occurred during validation. HTTP status code: 422
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
}

public enum MarketplaceCatalogClientTypes {}

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Web Services Outposts is a fully managed service that extends Amazon Web Services infrastructure, APIs, and tools to customer premises. By providing local access to Amazon Web Services managed infrastructure, Amazon Web Services Outposts enables customers to build and run applications on premises using the same programming interfaces as in Amazon Web Services Regions, while using local compute and storage resources for lower latency and local data processing needs.
public protocol OutpostsClientProtocol {
    /// Performs the `CancelOrder` operation on the `OutpostsOlafService` service.
    ///
    /// Cancels the specified order for an Outpost.
    ///
    /// - Parameter CancelOrderInput : [no documentation found]
    ///
    /// - Returns: `CancelOrderOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this operation.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func cancelOrder(input: CancelOrderInput) async throws -> CancelOrderOutput
    /// Performs the `CreateOrder` operation on the `OutpostsOlafService` service.
    ///
    /// Creates an order for an Outpost.
    ///
    /// - Parameter CreateOrderInput : [no documentation found]
    ///
    /// - Returns: `CreateOrderOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this operation.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ServiceQuotaExceededException` : You have exceeded a service quota.
    /// - `ValidationException` : A parameter is not valid.
    func createOrder(input: CreateOrderInput) async throws -> CreateOrderOutput
    /// Performs the `CreateOutpost` operation on the `OutpostsOlafService` service.
    ///
    /// Creates an Outpost. You can specify either an Availability one or an AZ ID.
    ///
    /// - Parameter CreateOutpostInput : [no documentation found]
    ///
    /// - Returns: `CreateOutpostOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this operation.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ServiceQuotaExceededException` : You have exceeded a service quota.
    /// - `ValidationException` : A parameter is not valid.
    func createOutpost(input: CreateOutpostInput) async throws -> CreateOutpostOutput
    /// Performs the `CreateSite` operation on the `OutpostsOlafService` service.
    ///
    /// Creates a site for an Outpost.
    ///
    /// - Parameter CreateSiteInput : [no documentation found]
    ///
    /// - Returns: `CreateSiteOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this operation.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ServiceQuotaExceededException` : You have exceeded a service quota.
    /// - `ValidationException` : A parameter is not valid.
    func createSite(input: CreateSiteInput) async throws -> CreateSiteOutput
    /// Performs the `DeleteOutpost` operation on the `OutpostsOlafService` service.
    ///
    /// Deletes the specified Outpost.
    ///
    /// - Parameter DeleteOutpostInput : [no documentation found]
    ///
    /// - Returns: `DeleteOutpostOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this operation.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func deleteOutpost(input: DeleteOutpostInput) async throws -> DeleteOutpostOutput
    /// Performs the `DeleteSite` operation on the `OutpostsOlafService` service.
    ///
    /// Deletes the specified site.
    ///
    /// - Parameter DeleteSiteInput : [no documentation found]
    ///
    /// - Returns: `DeleteSiteOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this operation.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func deleteSite(input: DeleteSiteInput) async throws -> DeleteSiteOutput
    /// Performs the `GetCatalogItem` operation on the `OutpostsOlafService` service.
    ///
    /// Gets information about the specified catalog item.
    ///
    /// - Parameter GetCatalogItemInput : [no documentation found]
    ///
    /// - Returns: `GetCatalogItemOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func getCatalogItem(input: GetCatalogItemInput) async throws -> GetCatalogItemOutput
    /// Performs the `GetConnection` operation on the `OutpostsOlafService` service.
    ///
    /// Amazon Web Services uses this action to install Outpost servers. Gets information about the specified connection. Use CloudTrail to monitor this action or Amazon Web Services managed policy for Amazon Web Services Outposts to secure it. For more information, see [ Amazon Web Services managed policies for Amazon Web Services Outposts](https://docs.aws.amazon.com/outposts/latest/userguide/security-iam-awsmanpol.html) and [ Logging Amazon Web Services Outposts API calls with Amazon Web Services CloudTrail](https://docs.aws.amazon.com/outposts/latest/userguide/logging-using-cloudtrail.html) in the Amazon Web Services Outposts User Guide.
    ///
    /// - Parameter GetConnectionInput : [no documentation found]
    ///
    /// - Returns: `GetConnectionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this operation.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func getConnection(input: GetConnectionInput) async throws -> GetConnectionOutput
    /// Performs the `GetOrder` operation on the `OutpostsOlafService` service.
    ///
    /// Gets information about the specified order.
    ///
    /// - Parameter GetOrderInput : [no documentation found]
    ///
    /// - Returns: `GetOrderOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func getOrder(input: GetOrderInput) async throws -> GetOrderOutput
    /// Performs the `GetOutpost` operation on the `OutpostsOlafService` service.
    ///
    /// Gets information about the specified Outpost.
    ///
    /// - Parameter GetOutpostInput : [no documentation found]
    ///
    /// - Returns: `GetOutpostOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this operation.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func getOutpost(input: GetOutpostInput) async throws -> GetOutpostOutput
    /// Performs the `GetOutpostInstanceTypes` operation on the `OutpostsOlafService` service.
    ///
    /// Gets the instance types for the specified Outpost.
    ///
    /// - Parameter GetOutpostInstanceTypesInput : [no documentation found]
    ///
    /// - Returns: `GetOutpostInstanceTypesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this operation.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func getOutpostInstanceTypes(input: GetOutpostInstanceTypesInput) async throws -> GetOutpostInstanceTypesOutput
    /// Performs the `GetSite` operation on the `OutpostsOlafService` service.
    ///
    /// Gets information about the specified Outpost site.
    ///
    /// - Parameter GetSiteInput : [no documentation found]
    ///
    /// - Returns: `GetSiteOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this operation.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func getSite(input: GetSiteInput) async throws -> GetSiteOutput
    /// Performs the `GetSiteAddress` operation on the `OutpostsOlafService` service.
    ///
    /// Gets the site address of the specified site.
    ///
    /// - Parameter GetSiteAddressInput : [no documentation found]
    ///
    /// - Returns: `GetSiteAddressOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this operation.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func getSiteAddress(input: GetSiteAddressInput) async throws -> GetSiteAddressOutput
    /// Performs the `ListAssets` operation on the `OutpostsOlafService` service.
    ///
    /// Lists the hardware assets for the specified Outpost. Use filters to return specific results. If you specify multiple filters, the results include only the resources that match all of the specified filters. For a filter where you can specify multiple values, the results include items that match any of the values that you specify for the filter.
    ///
    /// - Parameter ListAssetsInput : [no documentation found]
    ///
    /// - Returns: `ListAssetsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this operation.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func listAssets(input: ListAssetsInput) async throws -> ListAssetsOutput
    /// Performs the `ListCatalogItems` operation on the `OutpostsOlafService` service.
    ///
    /// Lists the items in the catalog. Use filters to return specific results. If you specify multiple filters, the results include only the resources that match all of the specified filters. For a filter where you can specify multiple values, the results include items that match any of the values that you specify for the filter.
    ///
    /// - Parameter ListCatalogItemsInput : [no documentation found]
    ///
    /// - Returns: `ListCatalogItemsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func listCatalogItems(input: ListCatalogItemsInput) async throws -> ListCatalogItemsOutput
    /// Performs the `ListOrders` operation on the `OutpostsOlafService` service.
    ///
    /// Lists the Outpost orders for your Amazon Web Services account.
    ///
    /// - Parameter ListOrdersInput : [no documentation found]
    ///
    /// - Returns: `ListOrdersOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this operation.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func listOrders(input: ListOrdersInput) async throws -> ListOrdersOutput
    /// Performs the `ListOutposts` operation on the `OutpostsOlafService` service.
    ///
    /// Lists the Outposts for your Amazon Web Services account. Use filters to return specific results. If you specify multiple filters, the results include only the resources that match all of the specified filters. For a filter where you can specify multiple values, the results include items that match any of the values that you specify for the filter.
    ///
    /// - Parameter ListOutpostsInput : [no documentation found]
    ///
    /// - Returns: `ListOutpostsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this operation.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ValidationException` : A parameter is not valid.
    func listOutposts(input: ListOutpostsInput) async throws -> ListOutpostsOutput
    /// Performs the `ListSites` operation on the `OutpostsOlafService` service.
    ///
    /// Lists the Outpost sites for your Amazon Web Services account. Use filters to return specific results. Use filters to return specific results. If you specify multiple filters, the results include only the resources that match all of the specified filters. For a filter where you can specify multiple values, the results include items that match any of the values that you specify for the filter.
    ///
    /// - Parameter ListSitesInput : [no documentation found]
    ///
    /// - Returns: `ListSitesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this operation.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ValidationException` : A parameter is not valid.
    func listSites(input: ListSitesInput) async throws -> ListSitesOutput
    /// Performs the `ListTagsForResource` operation on the `OutpostsOlafService` service.
    ///
    /// Lists the tags for the specified resource.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Performs the `StartConnection` operation on the `OutpostsOlafService` service.
    ///
    /// Amazon Web Services uses this action to install Outpost servers. Starts the connection required for Outpost server installation. Use CloudTrail to monitor this action or Amazon Web Services managed policy for Amazon Web Services Outposts to secure it. For more information, see [ Amazon Web Services managed policies for Amazon Web Services Outposts](https://docs.aws.amazon.com/outposts/latest/userguide/security-iam-awsmanpol.html) and [ Logging Amazon Web Services Outposts API calls with Amazon Web Services CloudTrail](https://docs.aws.amazon.com/outposts/latest/userguide/logging-using-cloudtrail.html) in the Amazon Web Services Outposts User Guide.
    ///
    /// - Parameter StartConnectionInput : [no documentation found]
    ///
    /// - Returns: `StartConnectionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this operation.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func startConnection(input: StartConnectionInput) async throws -> StartConnectionOutput
    /// Performs the `TagResource` operation on the `OutpostsOlafService` service.
    ///
    /// Adds tags to the specified resource.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Performs the `UntagResource` operation on the `OutpostsOlafService` service.
    ///
    /// Removes tags from the specified resource.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Performs the `UpdateOutpost` operation on the `OutpostsOlafService` service.
    ///
    /// Updates an Outpost.
    ///
    /// - Parameter UpdateOutpostInput : [no documentation found]
    ///
    /// - Returns: `UpdateOutpostOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this operation.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func updateOutpost(input: UpdateOutpostInput) async throws -> UpdateOutpostOutput
    /// Performs the `UpdateSite` operation on the `OutpostsOlafService` service.
    ///
    /// Updates the specified site.
    ///
    /// - Parameter UpdateSiteInput : [no documentation found]
    ///
    /// - Returns: `UpdateSiteOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this operation.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func updateSite(input: UpdateSiteInput) async throws -> UpdateSiteOutput
    /// Performs the `UpdateSiteAddress` operation on the `OutpostsOlafService` service.
    ///
    /// Updates the address of the specified site. You can't update a site address if there is an order in progress. You must wait for the order to complete or cancel the order. You can update the operating address before you place an order at the site, or after all Outposts that belong to the site have been deactivated.
    ///
    /// - Parameter UpdateSiteAddressInput : [no documentation found]
    ///
    /// - Returns: `UpdateSiteAddressOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this operation.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func updateSiteAddress(input: UpdateSiteAddressInput) async throws -> UpdateSiteAddressOutput
    /// Performs the `UpdateSiteRackPhysicalProperties` operation on the `OutpostsOlafService` service.
    ///
    /// Update the physical and logistical details for a rack at a site. For more information about hardware requirements for racks, see [Network readiness checklist](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist) in the Amazon Web Services Outposts User Guide. To update a rack at a site with an order of IN_PROGRESS, you must wait for the order to complete or cancel the order.
    ///
    /// - Parameter UpdateSiteRackPhysicalPropertiesInput : [no documentation found]
    ///
    /// - Returns: `UpdateSiteRackPhysicalPropertiesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have permission to perform this operation.
    /// - `ConflictException` : Updating or deleting this resource can cause an inconsistent state.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `NotFoundException` : The specified request is not valid.
    /// - `ValidationException` : A parameter is not valid.
    func updateSiteRackPhysicalProperties(input: UpdateSiteRackPhysicalPropertiesInput) async throws -> UpdateSiteRackPhysicalPropertiesOutput
}

public enum OutpostsClientTypes {}

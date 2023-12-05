// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension WorkDocsClient {
    /// Paginate over `[DescribeActivitiesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeActivitiesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeActivitiesOutput`
    public func describeActivitiesPaginated(input: DescribeActivitiesInput) -> ClientRuntime.PaginatorSequence<DescribeActivitiesInput, DescribeActivitiesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeActivitiesInput, DescribeActivitiesOutput>(input: input, inputKey: \.marker, outputKey: \.marker, paginationFunction: self.describeActivities(input:))
    }
}

extension DescribeActivitiesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeActivitiesInput {
        return DescribeActivitiesInput(
            activityTypes: self.activityTypes,
            authenticationToken: self.authenticationToken,
            endTime: self.endTime,
            includeIndirectActivities: self.includeIndirectActivities,
            limit: self.limit,
            marker: token,
            organizationId: self.organizationId,
            resourceId: self.resourceId,
            startTime: self.startTime,
            userId: self.userId
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeActivitiesInput, OperationStackOutput == DescribeActivitiesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeActivitiesPaginated`
    /// to access the nested member `[WorkDocsClientTypes.Activity]`
    /// - Returns: `[WorkDocsClientTypes.Activity]`
    public func userActivities() async throws -> [WorkDocsClientTypes.Activity] {
        return try await self.asyncCompactMap { item in item.userActivities }
    }
}
extension WorkDocsClient {
    /// Paginate over `[DescribeCommentsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeCommentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeCommentsOutput`
    public func describeCommentsPaginated(input: DescribeCommentsInput) -> ClientRuntime.PaginatorSequence<DescribeCommentsInput, DescribeCommentsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeCommentsInput, DescribeCommentsOutput>(input: input, inputKey: \.marker, outputKey: \.marker, paginationFunction: self.describeComments(input:))
    }
}

extension DescribeCommentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeCommentsInput {
        return DescribeCommentsInput(
            authenticationToken: self.authenticationToken,
            documentId: self.documentId,
            limit: self.limit,
            marker: token,
            versionId: self.versionId
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeCommentsInput, OperationStackOutput == DescribeCommentsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeCommentsPaginated`
    /// to access the nested member `[WorkDocsClientTypes.Comment]`
    /// - Returns: `[WorkDocsClientTypes.Comment]`
    public func comments() async throws -> [WorkDocsClientTypes.Comment] {
        return try await self.asyncCompactMap { item in item.comments }
    }
}
extension WorkDocsClient {
    /// Paginate over `[DescribeDocumentVersionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeDocumentVersionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeDocumentVersionsOutput`
    public func describeDocumentVersionsPaginated(input: DescribeDocumentVersionsInput) -> ClientRuntime.PaginatorSequence<DescribeDocumentVersionsInput, DescribeDocumentVersionsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeDocumentVersionsInput, DescribeDocumentVersionsOutput>(input: input, inputKey: \.marker, outputKey: \.marker, paginationFunction: self.describeDocumentVersions(input:))
    }
}

extension DescribeDocumentVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeDocumentVersionsInput {
        return DescribeDocumentVersionsInput(
            authenticationToken: self.authenticationToken,
            documentId: self.documentId,
            fields: self.fields,
            include: self.include,
            limit: self.limit,
            marker: token
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeDocumentVersionsInput, OperationStackOutput == DescribeDocumentVersionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeDocumentVersionsPaginated`
    /// to access the nested member `[WorkDocsClientTypes.DocumentVersionMetadata]`
    /// - Returns: `[WorkDocsClientTypes.DocumentVersionMetadata]`
    public func documentVersions() async throws -> [WorkDocsClientTypes.DocumentVersionMetadata] {
        return try await self.asyncCompactMap { item in item.documentVersions }
    }
}
extension WorkDocsClient {
    /// Paginate over `[DescribeFolderContentsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeFolderContentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeFolderContentsOutput`
    public func describeFolderContentsPaginated(input: DescribeFolderContentsInput) -> ClientRuntime.PaginatorSequence<DescribeFolderContentsInput, DescribeFolderContentsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeFolderContentsInput, DescribeFolderContentsOutput>(input: input, inputKey: \.marker, outputKey: \.marker, paginationFunction: self.describeFolderContents(input:))
    }
}

extension DescribeFolderContentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeFolderContentsInput {
        return DescribeFolderContentsInput(
            authenticationToken: self.authenticationToken,
            folderId: self.folderId,
            include: self.include,
            limit: self.limit,
            marker: token,
            order: self.order,
            sort: self.sort,
            type: self.type
        )}
}
extension WorkDocsClient {
    /// Paginate over `[DescribeGroupsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeGroupsOutput`
    public func describeGroupsPaginated(input: DescribeGroupsInput) -> ClientRuntime.PaginatorSequence<DescribeGroupsInput, DescribeGroupsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeGroupsInput, DescribeGroupsOutput>(input: input, inputKey: \.marker, outputKey: \.marker, paginationFunction: self.describeGroups(input:))
    }
}

extension DescribeGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeGroupsInput {
        return DescribeGroupsInput(
            authenticationToken: self.authenticationToken,
            limit: self.limit,
            marker: token,
            organizationId: self.organizationId,
            searchQuery: self.searchQuery
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeGroupsInput, OperationStackOutput == DescribeGroupsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeGroupsPaginated`
    /// to access the nested member `[WorkDocsClientTypes.GroupMetadata]`
    /// - Returns: `[WorkDocsClientTypes.GroupMetadata]`
    public func groups() async throws -> [WorkDocsClientTypes.GroupMetadata] {
        return try await self.asyncCompactMap { item in item.groups }
    }
}
extension WorkDocsClient {
    /// Paginate over `[DescribeNotificationSubscriptionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeNotificationSubscriptionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeNotificationSubscriptionsOutput`
    public func describeNotificationSubscriptionsPaginated(input: DescribeNotificationSubscriptionsInput) -> ClientRuntime.PaginatorSequence<DescribeNotificationSubscriptionsInput, DescribeNotificationSubscriptionsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeNotificationSubscriptionsInput, DescribeNotificationSubscriptionsOutput>(input: input, inputKey: \.marker, outputKey: \.marker, paginationFunction: self.describeNotificationSubscriptions(input:))
    }
}

extension DescribeNotificationSubscriptionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeNotificationSubscriptionsInput {
        return DescribeNotificationSubscriptionsInput(
            limit: self.limit,
            marker: token,
            organizationId: self.organizationId
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeNotificationSubscriptionsInput, OperationStackOutput == DescribeNotificationSubscriptionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeNotificationSubscriptionsPaginated`
    /// to access the nested member `[WorkDocsClientTypes.Subscription]`
    /// - Returns: `[WorkDocsClientTypes.Subscription]`
    public func subscriptions() async throws -> [WorkDocsClientTypes.Subscription] {
        return try await self.asyncCompactMap { item in item.subscriptions }
    }
}
extension WorkDocsClient {
    /// Paginate over `[DescribeResourcePermissionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeResourcePermissionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeResourcePermissionsOutput`
    public func describeResourcePermissionsPaginated(input: DescribeResourcePermissionsInput) -> ClientRuntime.PaginatorSequence<DescribeResourcePermissionsInput, DescribeResourcePermissionsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeResourcePermissionsInput, DescribeResourcePermissionsOutput>(input: input, inputKey: \.marker, outputKey: \.marker, paginationFunction: self.describeResourcePermissions(input:))
    }
}

extension DescribeResourcePermissionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeResourcePermissionsInput {
        return DescribeResourcePermissionsInput(
            authenticationToken: self.authenticationToken,
            limit: self.limit,
            marker: token,
            principalId: self.principalId,
            resourceId: self.resourceId
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeResourcePermissionsInput, OperationStackOutput == DescribeResourcePermissionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeResourcePermissionsPaginated`
    /// to access the nested member `[WorkDocsClientTypes.Principal]`
    /// - Returns: `[WorkDocsClientTypes.Principal]`
    public func principals() async throws -> [WorkDocsClientTypes.Principal] {
        return try await self.asyncCompactMap { item in item.principals }
    }
}
extension WorkDocsClient {
    /// Paginate over `[DescribeRootFoldersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeRootFoldersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeRootFoldersOutput`
    public func describeRootFoldersPaginated(input: DescribeRootFoldersInput) -> ClientRuntime.PaginatorSequence<DescribeRootFoldersInput, DescribeRootFoldersOutput> {
        return ClientRuntime.PaginatorSequence<DescribeRootFoldersInput, DescribeRootFoldersOutput>(input: input, inputKey: \.marker, outputKey: \.marker, paginationFunction: self.describeRootFolders(input:))
    }
}

extension DescribeRootFoldersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeRootFoldersInput {
        return DescribeRootFoldersInput(
            authenticationToken: self.authenticationToken,
            limit: self.limit,
            marker: token
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeRootFoldersInput, OperationStackOutput == DescribeRootFoldersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeRootFoldersPaginated`
    /// to access the nested member `[WorkDocsClientTypes.FolderMetadata]`
    /// - Returns: `[WorkDocsClientTypes.FolderMetadata]`
    public func folders() async throws -> [WorkDocsClientTypes.FolderMetadata] {
        return try await self.asyncCompactMap { item in item.folders }
    }
}
extension WorkDocsClient {
    /// Paginate over `[DescribeUsersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeUsersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeUsersOutput`
    public func describeUsersPaginated(input: DescribeUsersInput) -> ClientRuntime.PaginatorSequence<DescribeUsersInput, DescribeUsersOutput> {
        return ClientRuntime.PaginatorSequence<DescribeUsersInput, DescribeUsersOutput>(input: input, inputKey: \.marker, outputKey: \.marker, paginationFunction: self.describeUsers(input:))
    }
}

extension DescribeUsersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeUsersInput {
        return DescribeUsersInput(
            authenticationToken: self.authenticationToken,
            fields: self.fields,
            include: self.include,
            limit: self.limit,
            marker: token,
            order: self.order,
            organizationId: self.organizationId,
            query: self.query,
            sort: self.sort,
            userIds: self.userIds
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeUsersInput, OperationStackOutput == DescribeUsersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeUsersPaginated`
    /// to access the nested member `[WorkDocsClientTypes.User]`
    /// - Returns: `[WorkDocsClientTypes.User]`
    public func users() async throws -> [WorkDocsClientTypes.User] {
        return try await self.asyncCompactMap { item in item.users }
    }
}
extension WorkDocsClient {
    /// Paginate over `[SearchResourcesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[SearchResourcesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `SearchResourcesOutput`
    public func searchResourcesPaginated(input: SearchResourcesInput) -> ClientRuntime.PaginatorSequence<SearchResourcesInput, SearchResourcesOutput> {
        return ClientRuntime.PaginatorSequence<SearchResourcesInput, SearchResourcesOutput>(input: input, inputKey: \.marker, outputKey: \.marker, paginationFunction: self.searchResources(input:))
    }
}

extension SearchResourcesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchResourcesInput {
        return SearchResourcesInput(
            additionalResponseFields: self.additionalResponseFields,
            authenticationToken: self.authenticationToken,
            filters: self.filters,
            limit: self.limit,
            marker: token,
            orderBy: self.orderBy,
            organizationId: self.organizationId,
            queryScopes: self.queryScopes,
            queryText: self.queryText
        )}
}

extension PaginatorSequence where OperationStackInput == SearchResourcesInput, OperationStackOutput == SearchResourcesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `searchResourcesPaginated`
    /// to access the nested member `[WorkDocsClientTypes.ResponseItem]`
    /// - Returns: `[WorkDocsClientTypes.ResponseItem]`
    public func items() async throws -> [WorkDocsClientTypes.ResponseItem] {
        return try await self.asyncCompactMap { item in item.items }
    }
}

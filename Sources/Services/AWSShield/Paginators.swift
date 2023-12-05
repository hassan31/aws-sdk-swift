// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ShieldClient {
    /// Paginate over `[ListAttacksOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAttacksInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAttacksOutput`
    public func listAttacksPaginated(input: ListAttacksInput) -> ClientRuntime.PaginatorSequence<ListAttacksInput, ListAttacksOutput> {
        return ClientRuntime.PaginatorSequence<ListAttacksInput, ListAttacksOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listAttacks(input:))
    }
}

extension ListAttacksInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAttacksInput {
        return ListAttacksInput(
            endTime: self.endTime,
            maxResults: self.maxResults,
            nextToken: token,
            resourceArns: self.resourceArns,
            startTime: self.startTime
        )}
}

extension PaginatorSequence where OperationStackInput == ListAttacksInput, OperationStackOutput == ListAttacksOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listAttacksPaginated`
    /// to access the nested member `[ShieldClientTypes.AttackSummary]`
    /// - Returns: `[ShieldClientTypes.AttackSummary]`
    public func attackSummaries() async throws -> [ShieldClientTypes.AttackSummary] {
        return try await self.asyncCompactMap { item in item.attackSummaries }
    }
}
extension ShieldClient {
    /// Paginate over `[ListProtectionGroupsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListProtectionGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListProtectionGroupsOutput`
    public func listProtectionGroupsPaginated(input: ListProtectionGroupsInput) -> ClientRuntime.PaginatorSequence<ListProtectionGroupsInput, ListProtectionGroupsOutput> {
        return ClientRuntime.PaginatorSequence<ListProtectionGroupsInput, ListProtectionGroupsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listProtectionGroups(input:))
    }
}

extension ListProtectionGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListProtectionGroupsInput {
        return ListProtectionGroupsInput(
            inclusionFilters: self.inclusionFilters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ShieldClient {
    /// Paginate over `[ListProtectionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListProtectionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListProtectionsOutput`
    public func listProtectionsPaginated(input: ListProtectionsInput) -> ClientRuntime.PaginatorSequence<ListProtectionsInput, ListProtectionsOutput> {
        return ClientRuntime.PaginatorSequence<ListProtectionsInput, ListProtectionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listProtections(input:))
    }
}

extension ListProtectionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListProtectionsInput {
        return ListProtectionsInput(
            inclusionFilters: self.inclusionFilters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListProtectionsInput, OperationStackOutput == ListProtectionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listProtectionsPaginated`
    /// to access the nested member `[ShieldClientTypes.Protection]`
    /// - Returns: `[ShieldClientTypes.Protection]`
    public func protections() async throws -> [ShieldClientTypes.Protection] {
        return try await self.asyncCompactMap { item in item.protections }
    }
}
extension ShieldClient {
    /// Paginate over `[ListResourcesInProtectionGroupOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResourcesInProtectionGroupInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResourcesInProtectionGroupOutput`
    public func listResourcesInProtectionGroupPaginated(input: ListResourcesInProtectionGroupInput) -> ClientRuntime.PaginatorSequence<ListResourcesInProtectionGroupInput, ListResourcesInProtectionGroupOutput> {
        return ClientRuntime.PaginatorSequence<ListResourcesInProtectionGroupInput, ListResourcesInProtectionGroupOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listResourcesInProtectionGroup(input:))
    }
}

extension ListResourcesInProtectionGroupInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResourcesInProtectionGroupInput {
        return ListResourcesInProtectionGroupInput(
            maxResults: self.maxResults,
            nextToken: token,
            protectionGroupId: self.protectionGroupId
        )}
}

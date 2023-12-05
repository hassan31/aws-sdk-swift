// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ElasticBeanstalkClient {
    /// Paginate over `[DescribeEnvironmentManagedActionHistoryOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeEnvironmentManagedActionHistoryInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeEnvironmentManagedActionHistoryOutput`
    public func describeEnvironmentManagedActionHistoryPaginated(input: DescribeEnvironmentManagedActionHistoryInput) -> ClientRuntime.PaginatorSequence<DescribeEnvironmentManagedActionHistoryInput, DescribeEnvironmentManagedActionHistoryOutput> {
        return ClientRuntime.PaginatorSequence<DescribeEnvironmentManagedActionHistoryInput, DescribeEnvironmentManagedActionHistoryOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeEnvironmentManagedActionHistory(input:))
    }
}

extension DescribeEnvironmentManagedActionHistoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeEnvironmentManagedActionHistoryInput {
        return DescribeEnvironmentManagedActionHistoryInput(
            environmentId: self.environmentId,
            environmentName: self.environmentName,
            maxItems: self.maxItems,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeEnvironmentManagedActionHistoryInput, OperationStackOutput == DescribeEnvironmentManagedActionHistoryOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeEnvironmentManagedActionHistoryPaginated`
    /// to access the nested member `[ElasticBeanstalkClientTypes.ManagedActionHistoryItem]`
    /// - Returns: `[ElasticBeanstalkClientTypes.ManagedActionHistoryItem]`
    public func managedActionHistoryItems() async throws -> [ElasticBeanstalkClientTypes.ManagedActionHistoryItem] {
        return try await self.asyncCompactMap { item in item.managedActionHistoryItems }
    }
}
extension ElasticBeanstalkClient {
    /// Paginate over `[DescribeEventsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeEventsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeEventsOutput`
    public func describeEventsPaginated(input: DescribeEventsInput) -> ClientRuntime.PaginatorSequence<DescribeEventsInput, DescribeEventsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeEventsInput, DescribeEventsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeEvents(input:))
    }
}

extension DescribeEventsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeEventsInput {
        return DescribeEventsInput(
            applicationName: self.applicationName,
            endTime: self.endTime,
            environmentId: self.environmentId,
            environmentName: self.environmentName,
            maxRecords: self.maxRecords,
            nextToken: token,
            platformArn: self.platformArn,
            requestId: self.requestId,
            severity: self.severity,
            startTime: self.startTime,
            templateName: self.templateName,
            versionLabel: self.versionLabel
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeEventsInput, OperationStackOutput == DescribeEventsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeEventsPaginated`
    /// to access the nested member `[ElasticBeanstalkClientTypes.EventDescription]`
    /// - Returns: `[ElasticBeanstalkClientTypes.EventDescription]`
    public func events() async throws -> [ElasticBeanstalkClientTypes.EventDescription] {
        return try await self.asyncCompactMap { item in item.events }
    }
}
extension ElasticBeanstalkClient {
    /// Paginate over `[ListPlatformBranchesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPlatformBranchesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPlatformBranchesOutput`
    public func listPlatformBranchesPaginated(input: ListPlatformBranchesInput) -> ClientRuntime.PaginatorSequence<ListPlatformBranchesInput, ListPlatformBranchesOutput> {
        return ClientRuntime.PaginatorSequence<ListPlatformBranchesInput, ListPlatformBranchesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listPlatformBranches(input:))
    }
}

extension ListPlatformBranchesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPlatformBranchesInput {
        return ListPlatformBranchesInput(
            filters: self.filters,
            maxRecords: self.maxRecords,
            nextToken: token
        )}
}
extension ElasticBeanstalkClient {
    /// Paginate over `[ListPlatformVersionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPlatformVersionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPlatformVersionsOutput`
    public func listPlatformVersionsPaginated(input: ListPlatformVersionsInput) -> ClientRuntime.PaginatorSequence<ListPlatformVersionsInput, ListPlatformVersionsOutput> {
        return ClientRuntime.PaginatorSequence<ListPlatformVersionsInput, ListPlatformVersionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listPlatformVersions(input:))
    }
}

extension ListPlatformVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPlatformVersionsInput {
        return ListPlatformVersionsInput(
            filters: self.filters,
            maxRecords: self.maxRecords,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListPlatformVersionsInput, OperationStackOutput == ListPlatformVersionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listPlatformVersionsPaginated`
    /// to access the nested member `[ElasticBeanstalkClientTypes.PlatformSummary]`
    /// - Returns: `[ElasticBeanstalkClientTypes.PlatformSummary]`
    public func platformSummaryList() async throws -> [ElasticBeanstalkClientTypes.PlatformSummary] {
        return try await self.asyncCompactMap { item in item.platformSummaryList }
    }
}

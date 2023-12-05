// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension XRayClient {
    /// Paginate over `[BatchGetTracesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[BatchGetTracesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `BatchGetTracesOutput`
    public func batchGetTracesPaginated(input: BatchGetTracesInput) -> ClientRuntime.PaginatorSequence<BatchGetTracesInput, BatchGetTracesOutput> {
        return ClientRuntime.PaginatorSequence<BatchGetTracesInput, BatchGetTracesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.batchGetTraces(input:))
    }
}

extension BatchGetTracesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> BatchGetTracesInput {
        return BatchGetTracesInput(
            nextToken: token,
            traceIds: self.traceIds
        )}
}

extension PaginatorSequence where OperationStackInput == BatchGetTracesInput, OperationStackOutput == BatchGetTracesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `batchGetTracesPaginated`
    /// to access the nested member `[XRayClientTypes.Trace]`
    /// - Returns: `[XRayClientTypes.Trace]`
    public func traces() async throws -> [XRayClientTypes.Trace] {
        return try await self.asyncCompactMap { item in item.traces }
    }
}
extension XRayClient {
    /// Paginate over `[GetGroupsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetGroupsOutput`
    public func getGroupsPaginated(input: GetGroupsInput) -> ClientRuntime.PaginatorSequence<GetGroupsInput, GetGroupsOutput> {
        return ClientRuntime.PaginatorSequence<GetGroupsInput, GetGroupsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getGroups(input:))
    }
}

extension GetGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetGroupsInput {
        return GetGroupsInput(
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == GetGroupsInput, OperationStackOutput == GetGroupsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getGroupsPaginated`
    /// to access the nested member `[XRayClientTypes.GroupSummary]`
    /// - Returns: `[XRayClientTypes.GroupSummary]`
    public func groups() async throws -> [XRayClientTypes.GroupSummary] {
        return try await self.asyncCompactMap { item in item.groups }
    }
}
extension XRayClient {
    /// Paginate over `[GetInsightEventsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetInsightEventsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetInsightEventsOutput`
    public func getInsightEventsPaginated(input: GetInsightEventsInput) -> ClientRuntime.PaginatorSequence<GetInsightEventsInput, GetInsightEventsOutput> {
        return ClientRuntime.PaginatorSequence<GetInsightEventsInput, GetInsightEventsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getInsightEvents(input:))
    }
}

extension GetInsightEventsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetInsightEventsInput {
        return GetInsightEventsInput(
            insightId: self.insightId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension XRayClient {
    /// Paginate over `[GetInsightSummariesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetInsightSummariesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetInsightSummariesOutput`
    public func getInsightSummariesPaginated(input: GetInsightSummariesInput) -> ClientRuntime.PaginatorSequence<GetInsightSummariesInput, GetInsightSummariesOutput> {
        return ClientRuntime.PaginatorSequence<GetInsightSummariesInput, GetInsightSummariesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getInsightSummaries(input:))
    }
}

extension GetInsightSummariesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetInsightSummariesInput {
        return GetInsightSummariesInput(
            endTime: self.endTime,
            groupARN: self.groupARN,
            groupName: self.groupName,
            maxResults: self.maxResults,
            nextToken: token,
            startTime: self.startTime,
            states: self.states
        )}
}
extension XRayClient {
    /// Paginate over `[GetSamplingRulesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetSamplingRulesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetSamplingRulesOutput`
    public func getSamplingRulesPaginated(input: GetSamplingRulesInput) -> ClientRuntime.PaginatorSequence<GetSamplingRulesInput, GetSamplingRulesOutput> {
        return ClientRuntime.PaginatorSequence<GetSamplingRulesInput, GetSamplingRulesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getSamplingRules(input:))
    }
}

extension GetSamplingRulesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetSamplingRulesInput {
        return GetSamplingRulesInput(
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == GetSamplingRulesInput, OperationStackOutput == GetSamplingRulesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getSamplingRulesPaginated`
    /// to access the nested member `[XRayClientTypes.SamplingRuleRecord]`
    /// - Returns: `[XRayClientTypes.SamplingRuleRecord]`
    public func samplingRuleRecords() async throws -> [XRayClientTypes.SamplingRuleRecord] {
        return try await self.asyncCompactMap { item in item.samplingRuleRecords }
    }
}
extension XRayClient {
    /// Paginate over `[GetSamplingStatisticSummariesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetSamplingStatisticSummariesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetSamplingStatisticSummariesOutput`
    public func getSamplingStatisticSummariesPaginated(input: GetSamplingStatisticSummariesInput) -> ClientRuntime.PaginatorSequence<GetSamplingStatisticSummariesInput, GetSamplingStatisticSummariesOutput> {
        return ClientRuntime.PaginatorSequence<GetSamplingStatisticSummariesInput, GetSamplingStatisticSummariesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getSamplingStatisticSummaries(input:))
    }
}

extension GetSamplingStatisticSummariesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetSamplingStatisticSummariesInput {
        return GetSamplingStatisticSummariesInput(
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == GetSamplingStatisticSummariesInput, OperationStackOutput == GetSamplingStatisticSummariesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getSamplingStatisticSummariesPaginated`
    /// to access the nested member `[XRayClientTypes.SamplingStatisticSummary]`
    /// - Returns: `[XRayClientTypes.SamplingStatisticSummary]`
    public func samplingStatisticSummaries() async throws -> [XRayClientTypes.SamplingStatisticSummary] {
        return try await self.asyncCompactMap { item in item.samplingStatisticSummaries }
    }
}
extension XRayClient {
    /// Paginate over `[GetServiceGraphOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetServiceGraphInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetServiceGraphOutput`
    public func getServiceGraphPaginated(input: GetServiceGraphInput) -> ClientRuntime.PaginatorSequence<GetServiceGraphInput, GetServiceGraphOutput> {
        return ClientRuntime.PaginatorSequence<GetServiceGraphInput, GetServiceGraphOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getServiceGraph(input:))
    }
}

extension GetServiceGraphInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetServiceGraphInput {
        return GetServiceGraphInput(
            endTime: self.endTime,
            groupARN: self.groupARN,
            groupName: self.groupName,
            nextToken: token,
            startTime: self.startTime
        )}
}

extension PaginatorSequence where OperationStackInput == GetServiceGraphInput, OperationStackOutput == GetServiceGraphOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getServiceGraphPaginated`
    /// to access the nested member `[XRayClientTypes.Service]`
    /// - Returns: `[XRayClientTypes.Service]`
    public func services() async throws -> [XRayClientTypes.Service] {
        return try await self.asyncCompactMap { item in item.services }
    }
}
extension XRayClient {
    /// Paginate over `[GetTimeSeriesServiceStatisticsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetTimeSeriesServiceStatisticsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetTimeSeriesServiceStatisticsOutput`
    public func getTimeSeriesServiceStatisticsPaginated(input: GetTimeSeriesServiceStatisticsInput) -> ClientRuntime.PaginatorSequence<GetTimeSeriesServiceStatisticsInput, GetTimeSeriesServiceStatisticsOutput> {
        return ClientRuntime.PaginatorSequence<GetTimeSeriesServiceStatisticsInput, GetTimeSeriesServiceStatisticsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getTimeSeriesServiceStatistics(input:))
    }
}

extension GetTimeSeriesServiceStatisticsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetTimeSeriesServiceStatisticsInput {
        return GetTimeSeriesServiceStatisticsInput(
            endTime: self.endTime,
            entitySelectorExpression: self.entitySelectorExpression,
            forecastStatistics: self.forecastStatistics,
            groupARN: self.groupARN,
            groupName: self.groupName,
            nextToken: token,
            period: self.period,
            startTime: self.startTime
        )}
}

extension PaginatorSequence where OperationStackInput == GetTimeSeriesServiceStatisticsInput, OperationStackOutput == GetTimeSeriesServiceStatisticsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getTimeSeriesServiceStatisticsPaginated`
    /// to access the nested member `[XRayClientTypes.TimeSeriesServiceStatistics]`
    /// - Returns: `[XRayClientTypes.TimeSeriesServiceStatistics]`
    public func timeSeriesServiceStatistics() async throws -> [XRayClientTypes.TimeSeriesServiceStatistics] {
        return try await self.asyncCompactMap { item in item.timeSeriesServiceStatistics }
    }
}
extension XRayClient {
    /// Paginate over `[GetTraceGraphOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetTraceGraphInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetTraceGraphOutput`
    public func getTraceGraphPaginated(input: GetTraceGraphInput) -> ClientRuntime.PaginatorSequence<GetTraceGraphInput, GetTraceGraphOutput> {
        return ClientRuntime.PaginatorSequence<GetTraceGraphInput, GetTraceGraphOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getTraceGraph(input:))
    }
}

extension GetTraceGraphInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetTraceGraphInput {
        return GetTraceGraphInput(
            nextToken: token,
            traceIds: self.traceIds
        )}
}

extension PaginatorSequence where OperationStackInput == GetTraceGraphInput, OperationStackOutput == GetTraceGraphOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getTraceGraphPaginated`
    /// to access the nested member `[XRayClientTypes.Service]`
    /// - Returns: `[XRayClientTypes.Service]`
    public func services() async throws -> [XRayClientTypes.Service] {
        return try await self.asyncCompactMap { item in item.services }
    }
}
extension XRayClient {
    /// Paginate over `[GetTraceSummariesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetTraceSummariesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetTraceSummariesOutput`
    public func getTraceSummariesPaginated(input: GetTraceSummariesInput) -> ClientRuntime.PaginatorSequence<GetTraceSummariesInput, GetTraceSummariesOutput> {
        return ClientRuntime.PaginatorSequence<GetTraceSummariesInput, GetTraceSummariesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getTraceSummaries(input:))
    }
}

extension GetTraceSummariesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetTraceSummariesInput {
        return GetTraceSummariesInput(
            endTime: self.endTime,
            filterExpression: self.filterExpression,
            nextToken: token,
            sampling: self.sampling,
            samplingStrategy: self.samplingStrategy,
            startTime: self.startTime,
            timeRangeType: self.timeRangeType
        )}
}

extension PaginatorSequence where OperationStackInput == GetTraceSummariesInput, OperationStackOutput == GetTraceSummariesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getTraceSummariesPaginated`
    /// to access the nested member `[XRayClientTypes.TraceSummary]`
    /// - Returns: `[XRayClientTypes.TraceSummary]`
    public func traceSummaries() async throws -> [XRayClientTypes.TraceSummary] {
        return try await self.asyncCompactMap { item in item.traceSummaries }
    }
}
extension XRayClient {
    /// Paginate over `[ListResourcePoliciesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResourcePoliciesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResourcePoliciesOutput`
    public func listResourcePoliciesPaginated(input: ListResourcePoliciesInput) -> ClientRuntime.PaginatorSequence<ListResourcePoliciesInput, ListResourcePoliciesOutput> {
        return ClientRuntime.PaginatorSequence<ListResourcePoliciesInput, ListResourcePoliciesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listResourcePolicies(input:))
    }
}

extension ListResourcePoliciesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResourcePoliciesInput {
        return ListResourcePoliciesInput(
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListResourcePoliciesInput, OperationStackOutput == ListResourcePoliciesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listResourcePoliciesPaginated`
    /// to access the nested member `[XRayClientTypes.ResourcePolicy]`
    /// - Returns: `[XRayClientTypes.ResourcePolicy]`
    public func resourcePolicies() async throws -> [XRayClientTypes.ResourcePolicy] {
        return try await self.asyncCompactMap { item in item.resourcePolicies }
    }
}
extension XRayClient {
    /// Paginate over `[ListTagsForResourceOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTagsForResourceInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTagsForResourceOutput`
    public func listTagsForResourcePaginated(input: ListTagsForResourceInput) -> ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutput> {
        return ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listTagsForResource(input:))
    }
}

extension ListTagsForResourceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTagsForResourceInput {
        return ListTagsForResourceInput(
            nextToken: token,
            resourceARN: self.resourceARN
        )}
}

extension PaginatorSequence where OperationStackInput == ListTagsForResourceInput, OperationStackOutput == ListTagsForResourceOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listTagsForResourcePaginated`
    /// to access the nested member `[XRayClientTypes.Tag]`
    /// - Returns: `[XRayClientTypes.Tag]`
    public func tags() async throws -> [XRayClientTypes.Tag] {
        return try await self.asyncCompactMap { item in item.tags }
    }
}

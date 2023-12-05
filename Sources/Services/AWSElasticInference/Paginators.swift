// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ElasticInferenceClient {
    /// Paginate over `[DescribeAcceleratorsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeAcceleratorsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeAcceleratorsOutput`
    public func describeAcceleratorsPaginated(input: DescribeAcceleratorsInput) -> ClientRuntime.PaginatorSequence<DescribeAcceleratorsInput, DescribeAcceleratorsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeAcceleratorsInput, DescribeAcceleratorsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeAccelerators(input:))
    }
}

extension DescribeAcceleratorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeAcceleratorsInput {
        return DescribeAcceleratorsInput(
            acceleratorIds: self.acceleratorIds,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeAcceleratorsInput, OperationStackOutput == DescribeAcceleratorsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeAcceleratorsPaginated`
    /// to access the nested member `[ElasticInferenceClientTypes.ElasticInferenceAccelerator]`
    /// - Returns: `[ElasticInferenceClientTypes.ElasticInferenceAccelerator]`
    public func acceleratorSet() async throws -> [ElasticInferenceClientTypes.ElasticInferenceAccelerator] {
        return try await self.asyncCompactMap { item in item.acceleratorSet }
    }
}

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MediaStoreDataClient {
    /// Paginate over `[ListItemsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListItemsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListItemsOutput`
    public func listItemsPaginated(input: ListItemsInput) -> ClientRuntime.PaginatorSequence<ListItemsInput, ListItemsOutput> {
        return ClientRuntime.PaginatorSequence<ListItemsInput, ListItemsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listItems(input:))
    }
}

extension ListItemsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListItemsInput {
        return ListItemsInput(
            maxResults: self.maxResults,
            nextToken: token,
            path: self.path
        )}
}

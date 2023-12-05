// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MarketplaceEntitlementClient {
    /// Paginate over `[GetEntitlementsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetEntitlementsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetEntitlementsOutput`
    public func getEntitlementsPaginated(input: GetEntitlementsInput) -> ClientRuntime.PaginatorSequence<GetEntitlementsInput, GetEntitlementsOutput> {
        return ClientRuntime.PaginatorSequence<GetEntitlementsInput, GetEntitlementsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getEntitlements(input:))
    }
}

extension GetEntitlementsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetEntitlementsInput {
        return GetEntitlementsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            productCode: self.productCode
        )}
}

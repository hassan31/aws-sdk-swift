// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ServiceCatalogClient {
    /// Paginate over `[DescribePortfolioSharesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribePortfolioSharesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribePortfolioSharesOutput`
    public func describePortfolioSharesPaginated(input: DescribePortfolioSharesInput) -> ClientRuntime.PaginatorSequence<DescribePortfolioSharesInput, DescribePortfolioSharesOutput> {
        return ClientRuntime.PaginatorSequence<DescribePortfolioSharesInput, DescribePortfolioSharesOutput>(input: input, inputKey: \.pageToken, outputKey: \.nextPageToken, paginationFunction: self.describePortfolioShares(input:))
    }
}

extension DescribePortfolioSharesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribePortfolioSharesInput {
        return DescribePortfolioSharesInput(
            pageSize: self.pageSize,
            pageToken: token,
            portfolioId: self.portfolioId,
            type: self.type
        )}
}
extension ServiceCatalogClient {
    /// Paginate over `[GetProvisionedProductOutputsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetProvisionedProductOutputsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetProvisionedProductOutputsOutput`
    public func getProvisionedProductOutputsPaginated(input: GetProvisionedProductOutputsInput) -> ClientRuntime.PaginatorSequence<GetProvisionedProductOutputsInput, GetProvisionedProductOutputsOutput> {
        return ClientRuntime.PaginatorSequence<GetProvisionedProductOutputsInput, GetProvisionedProductOutputsOutput>(input: input, inputKey: \.pageToken, outputKey: \.nextPageToken, paginationFunction: self.getProvisionedProductOutputs(input:))
    }
}

extension GetProvisionedProductOutputsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetProvisionedProductOutputsInput {
        return GetProvisionedProductOutputsInput(
            acceptLanguage: self.acceptLanguage,
            outputKeys: self.outputKeys,
            pageSize: self.pageSize,
            pageToken: token,
            provisionedProductId: self.provisionedProductId,
            provisionedProductName: self.provisionedProductName
        )}
}
extension ServiceCatalogClient {
    /// Paginate over `[ListAcceptedPortfolioSharesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAcceptedPortfolioSharesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAcceptedPortfolioSharesOutput`
    public func listAcceptedPortfolioSharesPaginated(input: ListAcceptedPortfolioSharesInput) -> ClientRuntime.PaginatorSequence<ListAcceptedPortfolioSharesInput, ListAcceptedPortfolioSharesOutput> {
        return ClientRuntime.PaginatorSequence<ListAcceptedPortfolioSharesInput, ListAcceptedPortfolioSharesOutput>(input: input, inputKey: \.pageToken, outputKey: \.nextPageToken, paginationFunction: self.listAcceptedPortfolioShares(input:))
    }
}

extension ListAcceptedPortfolioSharesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAcceptedPortfolioSharesInput {
        return ListAcceptedPortfolioSharesInput(
            acceptLanguage: self.acceptLanguage,
            pageSize: self.pageSize,
            pageToken: token,
            portfolioShareType: self.portfolioShareType
        )}
}
extension ServiceCatalogClient {
    /// Paginate over `[ListBudgetsForResourceOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListBudgetsForResourceInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListBudgetsForResourceOutput`
    public func listBudgetsForResourcePaginated(input: ListBudgetsForResourceInput) -> ClientRuntime.PaginatorSequence<ListBudgetsForResourceInput, ListBudgetsForResourceOutput> {
        return ClientRuntime.PaginatorSequence<ListBudgetsForResourceInput, ListBudgetsForResourceOutput>(input: input, inputKey: \.pageToken, outputKey: \.nextPageToken, paginationFunction: self.listBudgetsForResource(input:))
    }
}

extension ListBudgetsForResourceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBudgetsForResourceInput {
        return ListBudgetsForResourceInput(
            acceptLanguage: self.acceptLanguage,
            pageSize: self.pageSize,
            pageToken: token,
            resourceId: self.resourceId
        )}
}
extension ServiceCatalogClient {
    /// Paginate over `[ListConstraintsForPortfolioOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListConstraintsForPortfolioInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListConstraintsForPortfolioOutput`
    public func listConstraintsForPortfolioPaginated(input: ListConstraintsForPortfolioInput) -> ClientRuntime.PaginatorSequence<ListConstraintsForPortfolioInput, ListConstraintsForPortfolioOutput> {
        return ClientRuntime.PaginatorSequence<ListConstraintsForPortfolioInput, ListConstraintsForPortfolioOutput>(input: input, inputKey: \.pageToken, outputKey: \.nextPageToken, paginationFunction: self.listConstraintsForPortfolio(input:))
    }
}

extension ListConstraintsForPortfolioInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListConstraintsForPortfolioInput {
        return ListConstraintsForPortfolioInput(
            acceptLanguage: self.acceptLanguage,
            pageSize: self.pageSize,
            pageToken: token,
            portfolioId: self.portfolioId,
            productId: self.productId
        )}
}
extension ServiceCatalogClient {
    /// Paginate over `[ListLaunchPathsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListLaunchPathsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListLaunchPathsOutput`
    public func listLaunchPathsPaginated(input: ListLaunchPathsInput) -> ClientRuntime.PaginatorSequence<ListLaunchPathsInput, ListLaunchPathsOutput> {
        return ClientRuntime.PaginatorSequence<ListLaunchPathsInput, ListLaunchPathsOutput>(input: input, inputKey: \.pageToken, outputKey: \.nextPageToken, paginationFunction: self.listLaunchPaths(input:))
    }
}

extension ListLaunchPathsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListLaunchPathsInput {
        return ListLaunchPathsInput(
            acceptLanguage: self.acceptLanguage,
            pageSize: self.pageSize,
            pageToken: token,
            productId: self.productId
        )}
}
extension ServiceCatalogClient {
    /// Paginate over `[ListOrganizationPortfolioAccessOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListOrganizationPortfolioAccessInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListOrganizationPortfolioAccessOutput`
    public func listOrganizationPortfolioAccessPaginated(input: ListOrganizationPortfolioAccessInput) -> ClientRuntime.PaginatorSequence<ListOrganizationPortfolioAccessInput, ListOrganizationPortfolioAccessOutput> {
        return ClientRuntime.PaginatorSequence<ListOrganizationPortfolioAccessInput, ListOrganizationPortfolioAccessOutput>(input: input, inputKey: \.pageToken, outputKey: \.nextPageToken, paginationFunction: self.listOrganizationPortfolioAccess(input:))
    }
}

extension ListOrganizationPortfolioAccessInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOrganizationPortfolioAccessInput {
        return ListOrganizationPortfolioAccessInput(
            acceptLanguage: self.acceptLanguage,
            organizationNodeType: self.organizationNodeType,
            pageSize: self.pageSize,
            pageToken: token,
            portfolioId: self.portfolioId
        )}
}
extension ServiceCatalogClient {
    /// Paginate over `[ListPortfolioAccessOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPortfolioAccessInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPortfolioAccessOutput`
    public func listPortfolioAccessPaginated(input: ListPortfolioAccessInput) -> ClientRuntime.PaginatorSequence<ListPortfolioAccessInput, ListPortfolioAccessOutput> {
        return ClientRuntime.PaginatorSequence<ListPortfolioAccessInput, ListPortfolioAccessOutput>(input: input, inputKey: \.pageToken, outputKey: \.nextPageToken, paginationFunction: self.listPortfolioAccess(input:))
    }
}

extension ListPortfolioAccessInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPortfolioAccessInput {
        return ListPortfolioAccessInput(
            acceptLanguage: self.acceptLanguage,
            organizationParentId: self.organizationParentId,
            pageSize: self.pageSize,
            pageToken: token,
            portfolioId: self.portfolioId
        )}
}
extension ServiceCatalogClient {
    /// Paginate over `[ListPortfoliosOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPortfoliosInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPortfoliosOutput`
    public func listPortfoliosPaginated(input: ListPortfoliosInput) -> ClientRuntime.PaginatorSequence<ListPortfoliosInput, ListPortfoliosOutput> {
        return ClientRuntime.PaginatorSequence<ListPortfoliosInput, ListPortfoliosOutput>(input: input, inputKey: \.pageToken, outputKey: \.nextPageToken, paginationFunction: self.listPortfolios(input:))
    }
}

extension ListPortfoliosInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPortfoliosInput {
        return ListPortfoliosInput(
            acceptLanguage: self.acceptLanguage,
            pageSize: self.pageSize,
            pageToken: token
        )}
}
extension ServiceCatalogClient {
    /// Paginate over `[ListPortfoliosForProductOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPortfoliosForProductInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPortfoliosForProductOutput`
    public func listPortfoliosForProductPaginated(input: ListPortfoliosForProductInput) -> ClientRuntime.PaginatorSequence<ListPortfoliosForProductInput, ListPortfoliosForProductOutput> {
        return ClientRuntime.PaginatorSequence<ListPortfoliosForProductInput, ListPortfoliosForProductOutput>(input: input, inputKey: \.pageToken, outputKey: \.nextPageToken, paginationFunction: self.listPortfoliosForProduct(input:))
    }
}

extension ListPortfoliosForProductInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPortfoliosForProductInput {
        return ListPortfoliosForProductInput(
            acceptLanguage: self.acceptLanguage,
            pageSize: self.pageSize,
            pageToken: token,
            productId: self.productId
        )}
}
extension ServiceCatalogClient {
    /// Paginate over `[ListPrincipalsForPortfolioOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPrincipalsForPortfolioInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPrincipalsForPortfolioOutput`
    public func listPrincipalsForPortfolioPaginated(input: ListPrincipalsForPortfolioInput) -> ClientRuntime.PaginatorSequence<ListPrincipalsForPortfolioInput, ListPrincipalsForPortfolioOutput> {
        return ClientRuntime.PaginatorSequence<ListPrincipalsForPortfolioInput, ListPrincipalsForPortfolioOutput>(input: input, inputKey: \.pageToken, outputKey: \.nextPageToken, paginationFunction: self.listPrincipalsForPortfolio(input:))
    }
}

extension ListPrincipalsForPortfolioInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPrincipalsForPortfolioInput {
        return ListPrincipalsForPortfolioInput(
            acceptLanguage: self.acceptLanguage,
            pageSize: self.pageSize,
            pageToken: token,
            portfolioId: self.portfolioId
        )}
}
extension ServiceCatalogClient {
    /// Paginate over `[ListProvisioningArtifactsForServiceActionOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListProvisioningArtifactsForServiceActionInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListProvisioningArtifactsForServiceActionOutput`
    public func listProvisioningArtifactsForServiceActionPaginated(input: ListProvisioningArtifactsForServiceActionInput) -> ClientRuntime.PaginatorSequence<ListProvisioningArtifactsForServiceActionInput, ListProvisioningArtifactsForServiceActionOutput> {
        return ClientRuntime.PaginatorSequence<ListProvisioningArtifactsForServiceActionInput, ListProvisioningArtifactsForServiceActionOutput>(input: input, inputKey: \.pageToken, outputKey: \.nextPageToken, paginationFunction: self.listProvisioningArtifactsForServiceAction(input:))
    }
}

extension ListProvisioningArtifactsForServiceActionInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListProvisioningArtifactsForServiceActionInput {
        return ListProvisioningArtifactsForServiceActionInput(
            acceptLanguage: self.acceptLanguage,
            pageSize: self.pageSize,
            pageToken: token,
            serviceActionId: self.serviceActionId
        )}
}
extension ServiceCatalogClient {
    /// Paginate over `[ListResourcesForTagOptionOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResourcesForTagOptionInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResourcesForTagOptionOutput`
    public func listResourcesForTagOptionPaginated(input: ListResourcesForTagOptionInput) -> ClientRuntime.PaginatorSequence<ListResourcesForTagOptionInput, ListResourcesForTagOptionOutput> {
        return ClientRuntime.PaginatorSequence<ListResourcesForTagOptionInput, ListResourcesForTagOptionOutput>(input: input, inputKey: \.pageToken, outputKey: \.pageToken, paginationFunction: self.listResourcesForTagOption(input:))
    }
}

extension ListResourcesForTagOptionInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResourcesForTagOptionInput {
        return ListResourcesForTagOptionInput(
            pageSize: self.pageSize,
            pageToken: token,
            resourceType: self.resourceType,
            tagOptionId: self.tagOptionId
        )}
}
extension ServiceCatalogClient {
    /// Paginate over `[ListServiceActionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListServiceActionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListServiceActionsOutput`
    public func listServiceActionsPaginated(input: ListServiceActionsInput) -> ClientRuntime.PaginatorSequence<ListServiceActionsInput, ListServiceActionsOutput> {
        return ClientRuntime.PaginatorSequence<ListServiceActionsInput, ListServiceActionsOutput>(input: input, inputKey: \.pageToken, outputKey: \.nextPageToken, paginationFunction: self.listServiceActions(input:))
    }
}

extension ListServiceActionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListServiceActionsInput {
        return ListServiceActionsInput(
            acceptLanguage: self.acceptLanguage,
            pageSize: self.pageSize,
            pageToken: token
        )}
}
extension ServiceCatalogClient {
    /// Paginate over `[ListServiceActionsForProvisioningArtifactOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListServiceActionsForProvisioningArtifactInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListServiceActionsForProvisioningArtifactOutput`
    public func listServiceActionsForProvisioningArtifactPaginated(input: ListServiceActionsForProvisioningArtifactInput) -> ClientRuntime.PaginatorSequence<ListServiceActionsForProvisioningArtifactInput, ListServiceActionsForProvisioningArtifactOutput> {
        return ClientRuntime.PaginatorSequence<ListServiceActionsForProvisioningArtifactInput, ListServiceActionsForProvisioningArtifactOutput>(input: input, inputKey: \.pageToken, outputKey: \.nextPageToken, paginationFunction: self.listServiceActionsForProvisioningArtifact(input:))
    }
}

extension ListServiceActionsForProvisioningArtifactInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListServiceActionsForProvisioningArtifactInput {
        return ListServiceActionsForProvisioningArtifactInput(
            acceptLanguage: self.acceptLanguage,
            pageSize: self.pageSize,
            pageToken: token,
            productId: self.productId,
            provisioningArtifactId: self.provisioningArtifactId
        )}
}
extension ServiceCatalogClient {
    /// Paginate over `[ListTagOptionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTagOptionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTagOptionsOutput`
    public func listTagOptionsPaginated(input: ListTagOptionsInput) -> ClientRuntime.PaginatorSequence<ListTagOptionsInput, ListTagOptionsOutput> {
        return ClientRuntime.PaginatorSequence<ListTagOptionsInput, ListTagOptionsOutput>(input: input, inputKey: \.pageToken, outputKey: \.pageToken, paginationFunction: self.listTagOptions(input:))
    }
}

extension ListTagOptionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTagOptionsInput {
        return ListTagOptionsInput(
            filters: self.filters,
            pageSize: self.pageSize,
            pageToken: token
        )}
}
extension ServiceCatalogClient {
    /// Paginate over `[SearchProductsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[SearchProductsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `SearchProductsOutput`
    public func searchProductsPaginated(input: SearchProductsInput) -> ClientRuntime.PaginatorSequence<SearchProductsInput, SearchProductsOutput> {
        return ClientRuntime.PaginatorSequence<SearchProductsInput, SearchProductsOutput>(input: input, inputKey: \.pageToken, outputKey: \.nextPageToken, paginationFunction: self.searchProducts(input:))
    }
}

extension SearchProductsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchProductsInput {
        return SearchProductsInput(
            acceptLanguage: self.acceptLanguage,
            filters: self.filters,
            pageSize: self.pageSize,
            pageToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )}
}
extension ServiceCatalogClient {
    /// Paginate over `[SearchProductsAsAdminOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[SearchProductsAsAdminInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `SearchProductsAsAdminOutput`
    public func searchProductsAsAdminPaginated(input: SearchProductsAsAdminInput) -> ClientRuntime.PaginatorSequence<SearchProductsAsAdminInput, SearchProductsAsAdminOutput> {
        return ClientRuntime.PaginatorSequence<SearchProductsAsAdminInput, SearchProductsAsAdminOutput>(input: input, inputKey: \.pageToken, outputKey: \.nextPageToken, paginationFunction: self.searchProductsAsAdmin(input:))
    }
}

extension SearchProductsAsAdminInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchProductsAsAdminInput {
        return SearchProductsAsAdminInput(
            acceptLanguage: self.acceptLanguage,
            filters: self.filters,
            pageSize: self.pageSize,
            pageToken: token,
            portfolioId: self.portfolioId,
            productSource: self.productSource,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )}
}
extension ServiceCatalogClient {
    /// Paginate over `[SearchProvisionedProductsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[SearchProvisionedProductsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `SearchProvisionedProductsOutput`
    public func searchProvisionedProductsPaginated(input: SearchProvisionedProductsInput) -> ClientRuntime.PaginatorSequence<SearchProvisionedProductsInput, SearchProvisionedProductsOutput> {
        return ClientRuntime.PaginatorSequence<SearchProvisionedProductsInput, SearchProvisionedProductsOutput>(input: input, inputKey: \.pageToken, outputKey: \.nextPageToken, paginationFunction: self.searchProvisionedProducts(input:))
    }
}

extension SearchProvisionedProductsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchProvisionedProductsInput {
        return SearchProvisionedProductsInput(
            acceptLanguage: self.acceptLanguage,
            accessLevelFilter: self.accessLevelFilter,
            filters: self.filters,
            pageSize: self.pageSize,
            pageToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )}
}

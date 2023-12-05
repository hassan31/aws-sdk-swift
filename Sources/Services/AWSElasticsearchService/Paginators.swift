// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ElasticsearchClient {
    /// Paginate over `[DescribeDomainAutoTunesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeDomainAutoTunesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeDomainAutoTunesOutput`
    public func describeDomainAutoTunesPaginated(input: DescribeDomainAutoTunesInput) -> ClientRuntime.PaginatorSequence<DescribeDomainAutoTunesInput, DescribeDomainAutoTunesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeDomainAutoTunesInput, DescribeDomainAutoTunesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeDomainAutoTunes(input:))
    }
}

extension DescribeDomainAutoTunesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeDomainAutoTunesInput {
        return DescribeDomainAutoTunesInput(
            domainName: self.domainName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ElasticsearchClient {
    /// Paginate over `[DescribeInboundCrossClusterSearchConnectionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeInboundCrossClusterSearchConnectionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeInboundCrossClusterSearchConnectionsOutput`
    public func describeInboundCrossClusterSearchConnectionsPaginated(input: DescribeInboundCrossClusterSearchConnectionsInput) -> ClientRuntime.PaginatorSequence<DescribeInboundCrossClusterSearchConnectionsInput, DescribeInboundCrossClusterSearchConnectionsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeInboundCrossClusterSearchConnectionsInput, DescribeInboundCrossClusterSearchConnectionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeInboundCrossClusterSearchConnections(input:))
    }
}

extension DescribeInboundCrossClusterSearchConnectionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeInboundCrossClusterSearchConnectionsInput {
        return DescribeInboundCrossClusterSearchConnectionsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ElasticsearchClient {
    /// Paginate over `[DescribeOutboundCrossClusterSearchConnectionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeOutboundCrossClusterSearchConnectionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeOutboundCrossClusterSearchConnectionsOutput`
    public func describeOutboundCrossClusterSearchConnectionsPaginated(input: DescribeOutboundCrossClusterSearchConnectionsInput) -> ClientRuntime.PaginatorSequence<DescribeOutboundCrossClusterSearchConnectionsInput, DescribeOutboundCrossClusterSearchConnectionsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeOutboundCrossClusterSearchConnectionsInput, DescribeOutboundCrossClusterSearchConnectionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeOutboundCrossClusterSearchConnections(input:))
    }
}

extension DescribeOutboundCrossClusterSearchConnectionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeOutboundCrossClusterSearchConnectionsInput {
        return DescribeOutboundCrossClusterSearchConnectionsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ElasticsearchClient {
    /// Paginate over `[DescribePackagesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribePackagesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribePackagesOutput`
    public func describePackagesPaginated(input: DescribePackagesInput) -> ClientRuntime.PaginatorSequence<DescribePackagesInput, DescribePackagesOutput> {
        return ClientRuntime.PaginatorSequence<DescribePackagesInput, DescribePackagesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describePackages(input:))
    }
}

extension DescribePackagesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribePackagesInput {
        return DescribePackagesInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ElasticsearchClient {
    /// Paginate over `[DescribeReservedElasticsearchInstanceOfferingsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeReservedElasticsearchInstanceOfferingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeReservedElasticsearchInstanceOfferingsOutput`
    public func describeReservedElasticsearchInstanceOfferingsPaginated(input: DescribeReservedElasticsearchInstanceOfferingsInput) -> ClientRuntime.PaginatorSequence<DescribeReservedElasticsearchInstanceOfferingsInput, DescribeReservedElasticsearchInstanceOfferingsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeReservedElasticsearchInstanceOfferingsInput, DescribeReservedElasticsearchInstanceOfferingsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeReservedElasticsearchInstanceOfferings(input:))
    }
}

extension DescribeReservedElasticsearchInstanceOfferingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeReservedElasticsearchInstanceOfferingsInput {
        return DescribeReservedElasticsearchInstanceOfferingsInput(
            maxResults: self.maxResults,
            nextToken: token,
            reservedElasticsearchInstanceOfferingId: self.reservedElasticsearchInstanceOfferingId
        )}
}
extension ElasticsearchClient {
    /// Paginate over `[DescribeReservedElasticsearchInstancesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeReservedElasticsearchInstancesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeReservedElasticsearchInstancesOutput`
    public func describeReservedElasticsearchInstancesPaginated(input: DescribeReservedElasticsearchInstancesInput) -> ClientRuntime.PaginatorSequence<DescribeReservedElasticsearchInstancesInput, DescribeReservedElasticsearchInstancesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeReservedElasticsearchInstancesInput, DescribeReservedElasticsearchInstancesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeReservedElasticsearchInstances(input:))
    }
}

extension DescribeReservedElasticsearchInstancesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeReservedElasticsearchInstancesInput {
        return DescribeReservedElasticsearchInstancesInput(
            maxResults: self.maxResults,
            nextToken: token,
            reservedElasticsearchInstanceId: self.reservedElasticsearchInstanceId
        )}
}
extension ElasticsearchClient {
    /// Paginate over `[GetPackageVersionHistoryOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetPackageVersionHistoryInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetPackageVersionHistoryOutput`
    public func getPackageVersionHistoryPaginated(input: GetPackageVersionHistoryInput) -> ClientRuntime.PaginatorSequence<GetPackageVersionHistoryInput, GetPackageVersionHistoryOutput> {
        return ClientRuntime.PaginatorSequence<GetPackageVersionHistoryInput, GetPackageVersionHistoryOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getPackageVersionHistory(input:))
    }
}

extension GetPackageVersionHistoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetPackageVersionHistoryInput {
        return GetPackageVersionHistoryInput(
            maxResults: self.maxResults,
            nextToken: token,
            packageID: self.packageID
        )}
}
extension ElasticsearchClient {
    /// Paginate over `[GetUpgradeHistoryOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetUpgradeHistoryInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetUpgradeHistoryOutput`
    public func getUpgradeHistoryPaginated(input: GetUpgradeHistoryInput) -> ClientRuntime.PaginatorSequence<GetUpgradeHistoryInput, GetUpgradeHistoryOutput> {
        return ClientRuntime.PaginatorSequence<GetUpgradeHistoryInput, GetUpgradeHistoryOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getUpgradeHistory(input:))
    }
}

extension GetUpgradeHistoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetUpgradeHistoryInput {
        return GetUpgradeHistoryInput(
            domainName: self.domainName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ElasticsearchClient {
    /// Paginate over `[ListDomainsForPackageOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDomainsForPackageInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDomainsForPackageOutput`
    public func listDomainsForPackagePaginated(input: ListDomainsForPackageInput) -> ClientRuntime.PaginatorSequence<ListDomainsForPackageInput, ListDomainsForPackageOutput> {
        return ClientRuntime.PaginatorSequence<ListDomainsForPackageInput, ListDomainsForPackageOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDomainsForPackage(input:))
    }
}

extension ListDomainsForPackageInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDomainsForPackageInput {
        return ListDomainsForPackageInput(
            maxResults: self.maxResults,
            nextToken: token,
            packageID: self.packageID
        )}
}
extension ElasticsearchClient {
    /// Paginate over `[ListElasticsearchInstanceTypesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListElasticsearchInstanceTypesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListElasticsearchInstanceTypesOutput`
    public func listElasticsearchInstanceTypesPaginated(input: ListElasticsearchInstanceTypesInput) -> ClientRuntime.PaginatorSequence<ListElasticsearchInstanceTypesInput, ListElasticsearchInstanceTypesOutput> {
        return ClientRuntime.PaginatorSequence<ListElasticsearchInstanceTypesInput, ListElasticsearchInstanceTypesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listElasticsearchInstanceTypes(input:))
    }
}

extension ListElasticsearchInstanceTypesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListElasticsearchInstanceTypesInput {
        return ListElasticsearchInstanceTypesInput(
            domainName: self.domainName,
            elasticsearchVersion: self.elasticsearchVersion,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ElasticsearchClient {
    /// Paginate over `[ListElasticsearchVersionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListElasticsearchVersionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListElasticsearchVersionsOutput`
    public func listElasticsearchVersionsPaginated(input: ListElasticsearchVersionsInput) -> ClientRuntime.PaginatorSequence<ListElasticsearchVersionsInput, ListElasticsearchVersionsOutput> {
        return ClientRuntime.PaginatorSequence<ListElasticsearchVersionsInput, ListElasticsearchVersionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listElasticsearchVersions(input:))
    }
}

extension ListElasticsearchVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListElasticsearchVersionsInput {
        return ListElasticsearchVersionsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ElasticsearchClient {
    /// Paginate over `[ListPackagesForDomainOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPackagesForDomainInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPackagesForDomainOutput`
    public func listPackagesForDomainPaginated(input: ListPackagesForDomainInput) -> ClientRuntime.PaginatorSequence<ListPackagesForDomainInput, ListPackagesForDomainOutput> {
        return ClientRuntime.PaginatorSequence<ListPackagesForDomainInput, ListPackagesForDomainOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listPackagesForDomain(input:))
    }
}

extension ListPackagesForDomainInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPackagesForDomainInput {
        return ListPackagesForDomainInput(
            domainName: self.domainName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

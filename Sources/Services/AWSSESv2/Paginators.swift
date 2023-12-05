// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SESv2Client {
    /// Paginate over `[GetDedicatedIpsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetDedicatedIpsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetDedicatedIpsOutput`
    public func getDedicatedIpsPaginated(input: GetDedicatedIpsInput) -> ClientRuntime.PaginatorSequence<GetDedicatedIpsInput, GetDedicatedIpsOutput> {
        return ClientRuntime.PaginatorSequence<GetDedicatedIpsInput, GetDedicatedIpsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getDedicatedIps(input:))
    }
}

extension GetDedicatedIpsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetDedicatedIpsInput {
        return GetDedicatedIpsInput(
            nextToken: token,
            pageSize: self.pageSize,
            poolName: self.poolName
        )}
}
extension SESv2Client {
    /// Paginate over `[ListConfigurationSetsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListConfigurationSetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListConfigurationSetsOutput`
    public func listConfigurationSetsPaginated(input: ListConfigurationSetsInput) -> ClientRuntime.PaginatorSequence<ListConfigurationSetsInput, ListConfigurationSetsOutput> {
        return ClientRuntime.PaginatorSequence<ListConfigurationSetsInput, ListConfigurationSetsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listConfigurationSets(input:))
    }
}

extension ListConfigurationSetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListConfigurationSetsInput {
        return ListConfigurationSetsInput(
            nextToken: token,
            pageSize: self.pageSize
        )}
}
extension SESv2Client {
    /// Paginate over `[ListContactListsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListContactListsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListContactListsOutput`
    public func listContactListsPaginated(input: ListContactListsInput) -> ClientRuntime.PaginatorSequence<ListContactListsInput, ListContactListsOutput> {
        return ClientRuntime.PaginatorSequence<ListContactListsInput, ListContactListsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listContactLists(input:))
    }
}

extension ListContactListsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListContactListsInput {
        return ListContactListsInput(
            nextToken: token,
            pageSize: self.pageSize
        )}
}
extension SESv2Client {
    /// Paginate over `[ListContactsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListContactsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListContactsOutput`
    public func listContactsPaginated(input: ListContactsInput) -> ClientRuntime.PaginatorSequence<ListContactsInput, ListContactsOutput> {
        return ClientRuntime.PaginatorSequence<ListContactsInput, ListContactsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listContacts(input:))
    }
}

extension ListContactsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListContactsInput {
        return ListContactsInput(
            contactListName: self.contactListName,
            filter: self.filter,
            nextToken: token,
            pageSize: self.pageSize
        )}
}
extension SESv2Client {
    /// Paginate over `[ListCustomVerificationEmailTemplatesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCustomVerificationEmailTemplatesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCustomVerificationEmailTemplatesOutput`
    public func listCustomVerificationEmailTemplatesPaginated(input: ListCustomVerificationEmailTemplatesInput) -> ClientRuntime.PaginatorSequence<ListCustomVerificationEmailTemplatesInput, ListCustomVerificationEmailTemplatesOutput> {
        return ClientRuntime.PaginatorSequence<ListCustomVerificationEmailTemplatesInput, ListCustomVerificationEmailTemplatesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCustomVerificationEmailTemplates(input:))
    }
}

extension ListCustomVerificationEmailTemplatesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCustomVerificationEmailTemplatesInput {
        return ListCustomVerificationEmailTemplatesInput(
            nextToken: token,
            pageSize: self.pageSize
        )}
}
extension SESv2Client {
    /// Paginate over `[ListDedicatedIpPoolsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDedicatedIpPoolsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDedicatedIpPoolsOutput`
    public func listDedicatedIpPoolsPaginated(input: ListDedicatedIpPoolsInput) -> ClientRuntime.PaginatorSequence<ListDedicatedIpPoolsInput, ListDedicatedIpPoolsOutput> {
        return ClientRuntime.PaginatorSequence<ListDedicatedIpPoolsInput, ListDedicatedIpPoolsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDedicatedIpPools(input:))
    }
}

extension ListDedicatedIpPoolsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDedicatedIpPoolsInput {
        return ListDedicatedIpPoolsInput(
            nextToken: token,
            pageSize: self.pageSize
        )}
}
extension SESv2Client {
    /// Paginate over `[ListDeliverabilityTestReportsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDeliverabilityTestReportsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDeliverabilityTestReportsOutput`
    public func listDeliverabilityTestReportsPaginated(input: ListDeliverabilityTestReportsInput) -> ClientRuntime.PaginatorSequence<ListDeliverabilityTestReportsInput, ListDeliverabilityTestReportsOutput> {
        return ClientRuntime.PaginatorSequence<ListDeliverabilityTestReportsInput, ListDeliverabilityTestReportsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDeliverabilityTestReports(input:))
    }
}

extension ListDeliverabilityTestReportsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDeliverabilityTestReportsInput {
        return ListDeliverabilityTestReportsInput(
            nextToken: token,
            pageSize: self.pageSize
        )}
}
extension SESv2Client {
    /// Paginate over `[ListDomainDeliverabilityCampaignsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDomainDeliverabilityCampaignsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDomainDeliverabilityCampaignsOutput`
    public func listDomainDeliverabilityCampaignsPaginated(input: ListDomainDeliverabilityCampaignsInput) -> ClientRuntime.PaginatorSequence<ListDomainDeliverabilityCampaignsInput, ListDomainDeliverabilityCampaignsOutput> {
        return ClientRuntime.PaginatorSequence<ListDomainDeliverabilityCampaignsInput, ListDomainDeliverabilityCampaignsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDomainDeliverabilityCampaigns(input:))
    }
}

extension ListDomainDeliverabilityCampaignsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDomainDeliverabilityCampaignsInput {
        return ListDomainDeliverabilityCampaignsInput(
            endDate: self.endDate,
            nextToken: token,
            pageSize: self.pageSize,
            startDate: self.startDate,
            subscribedDomain: self.subscribedDomain
        )}
}
extension SESv2Client {
    /// Paginate over `[ListEmailIdentitiesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEmailIdentitiesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEmailIdentitiesOutput`
    public func listEmailIdentitiesPaginated(input: ListEmailIdentitiesInput) -> ClientRuntime.PaginatorSequence<ListEmailIdentitiesInput, ListEmailIdentitiesOutput> {
        return ClientRuntime.PaginatorSequence<ListEmailIdentitiesInput, ListEmailIdentitiesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listEmailIdentities(input:))
    }
}

extension ListEmailIdentitiesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEmailIdentitiesInput {
        return ListEmailIdentitiesInput(
            nextToken: token,
            pageSize: self.pageSize
        )}
}
extension SESv2Client {
    /// Paginate over `[ListEmailTemplatesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEmailTemplatesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEmailTemplatesOutput`
    public func listEmailTemplatesPaginated(input: ListEmailTemplatesInput) -> ClientRuntime.PaginatorSequence<ListEmailTemplatesInput, ListEmailTemplatesOutput> {
        return ClientRuntime.PaginatorSequence<ListEmailTemplatesInput, ListEmailTemplatesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listEmailTemplates(input:))
    }
}

extension ListEmailTemplatesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEmailTemplatesInput {
        return ListEmailTemplatesInput(
            nextToken: token,
            pageSize: self.pageSize
        )}
}
extension SESv2Client {
    /// Paginate over `[ListExportJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListExportJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListExportJobsOutput`
    public func listExportJobsPaginated(input: ListExportJobsInput) -> ClientRuntime.PaginatorSequence<ListExportJobsInput, ListExportJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListExportJobsInput, ListExportJobsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listExportJobs(input:))
    }
}

extension ListExportJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListExportJobsInput {
        return ListExportJobsInput(
            exportSourceType: self.exportSourceType,
            jobStatus: self.jobStatus,
            nextToken: token,
            pageSize: self.pageSize
        )}
}
extension SESv2Client {
    /// Paginate over `[ListImportJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListImportJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListImportJobsOutput`
    public func listImportJobsPaginated(input: ListImportJobsInput) -> ClientRuntime.PaginatorSequence<ListImportJobsInput, ListImportJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListImportJobsInput, ListImportJobsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listImportJobs(input:))
    }
}

extension ListImportJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListImportJobsInput {
        return ListImportJobsInput(
            importDestinationType: self.importDestinationType,
            nextToken: token,
            pageSize: self.pageSize
        )}
}
extension SESv2Client {
    /// Paginate over `[ListRecommendationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRecommendationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRecommendationsOutput`
    public func listRecommendationsPaginated(input: ListRecommendationsInput) -> ClientRuntime.PaginatorSequence<ListRecommendationsInput, ListRecommendationsOutput> {
        return ClientRuntime.PaginatorSequence<ListRecommendationsInput, ListRecommendationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listRecommendations(input:))
    }
}

extension ListRecommendationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRecommendationsInput {
        return ListRecommendationsInput(
            filter: self.filter,
            nextToken: token,
            pageSize: self.pageSize
        )}
}
extension SESv2Client {
    /// Paginate over `[ListSuppressedDestinationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSuppressedDestinationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSuppressedDestinationsOutput`
    public func listSuppressedDestinationsPaginated(input: ListSuppressedDestinationsInput) -> ClientRuntime.PaginatorSequence<ListSuppressedDestinationsInput, ListSuppressedDestinationsOutput> {
        return ClientRuntime.PaginatorSequence<ListSuppressedDestinationsInput, ListSuppressedDestinationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listSuppressedDestinations(input:))
    }
}

extension ListSuppressedDestinationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSuppressedDestinationsInput {
        return ListSuppressedDestinationsInput(
            endDate: self.endDate,
            nextToken: token,
            pageSize: self.pageSize,
            reasons: self.reasons,
            startDate: self.startDate
        )}
}

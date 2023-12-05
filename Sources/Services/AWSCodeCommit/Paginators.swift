// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CodeCommitClient {
    /// Paginate over `[DescribeMergeConflictsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeMergeConflictsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeMergeConflictsOutput`
    public func describeMergeConflictsPaginated(input: DescribeMergeConflictsInput) -> ClientRuntime.PaginatorSequence<DescribeMergeConflictsInput, DescribeMergeConflictsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeMergeConflictsInput, DescribeMergeConflictsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeMergeConflicts(input:))
    }
}

extension DescribeMergeConflictsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeMergeConflictsInput {
        return DescribeMergeConflictsInput(
            conflictDetailLevel: self.conflictDetailLevel,
            conflictResolutionStrategy: self.conflictResolutionStrategy,
            destinationCommitSpecifier: self.destinationCommitSpecifier,
            filePath: self.filePath,
            maxMergeHunks: self.maxMergeHunks,
            mergeOption: self.mergeOption,
            nextToken: token,
            repositoryName: self.repositoryName,
            sourceCommitSpecifier: self.sourceCommitSpecifier
        )}
}
extension CodeCommitClient {
    /// Paginate over `[DescribePullRequestEventsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribePullRequestEventsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribePullRequestEventsOutput`
    public func describePullRequestEventsPaginated(input: DescribePullRequestEventsInput) -> ClientRuntime.PaginatorSequence<DescribePullRequestEventsInput, DescribePullRequestEventsOutput> {
        return ClientRuntime.PaginatorSequence<DescribePullRequestEventsInput, DescribePullRequestEventsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describePullRequestEvents(input:))
    }
}

extension DescribePullRequestEventsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribePullRequestEventsInput {
        return DescribePullRequestEventsInput(
            actorArn: self.actorArn,
            maxResults: self.maxResults,
            nextToken: token,
            pullRequestEventType: self.pullRequestEventType,
            pullRequestId: self.pullRequestId
        )}
}
extension CodeCommitClient {
    /// Paginate over `[GetCommentReactionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetCommentReactionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetCommentReactionsOutput`
    public func getCommentReactionsPaginated(input: GetCommentReactionsInput) -> ClientRuntime.PaginatorSequence<GetCommentReactionsInput, GetCommentReactionsOutput> {
        return ClientRuntime.PaginatorSequence<GetCommentReactionsInput, GetCommentReactionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getCommentReactions(input:))
    }
}

extension GetCommentReactionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetCommentReactionsInput {
        return GetCommentReactionsInput(
            commentId: self.commentId,
            maxResults: self.maxResults,
            nextToken: token,
            reactionUserArn: self.reactionUserArn
        )}
}
extension CodeCommitClient {
    /// Paginate over `[GetCommentsForComparedCommitOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetCommentsForComparedCommitInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetCommentsForComparedCommitOutput`
    public func getCommentsForComparedCommitPaginated(input: GetCommentsForComparedCommitInput) -> ClientRuntime.PaginatorSequence<GetCommentsForComparedCommitInput, GetCommentsForComparedCommitOutput> {
        return ClientRuntime.PaginatorSequence<GetCommentsForComparedCommitInput, GetCommentsForComparedCommitOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getCommentsForComparedCommit(input:))
    }
}

extension GetCommentsForComparedCommitInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetCommentsForComparedCommitInput {
        return GetCommentsForComparedCommitInput(
            afterCommitId: self.afterCommitId,
            beforeCommitId: self.beforeCommitId,
            maxResults: self.maxResults,
            nextToken: token,
            repositoryName: self.repositoryName
        )}
}
extension CodeCommitClient {
    /// Paginate over `[GetCommentsForPullRequestOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetCommentsForPullRequestInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetCommentsForPullRequestOutput`
    public func getCommentsForPullRequestPaginated(input: GetCommentsForPullRequestInput) -> ClientRuntime.PaginatorSequence<GetCommentsForPullRequestInput, GetCommentsForPullRequestOutput> {
        return ClientRuntime.PaginatorSequence<GetCommentsForPullRequestInput, GetCommentsForPullRequestOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getCommentsForPullRequest(input:))
    }
}

extension GetCommentsForPullRequestInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetCommentsForPullRequestInput {
        return GetCommentsForPullRequestInput(
            afterCommitId: self.afterCommitId,
            beforeCommitId: self.beforeCommitId,
            maxResults: self.maxResults,
            nextToken: token,
            pullRequestId: self.pullRequestId,
            repositoryName: self.repositoryName
        )}
}
extension CodeCommitClient {
    /// Paginate over `[GetDifferencesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetDifferencesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetDifferencesOutput`
    public func getDifferencesPaginated(input: GetDifferencesInput) -> ClientRuntime.PaginatorSequence<GetDifferencesInput, GetDifferencesOutput> {
        return ClientRuntime.PaginatorSequence<GetDifferencesInput, GetDifferencesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getDifferences(input:))
    }
}

extension GetDifferencesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetDifferencesInput {
        return GetDifferencesInput(
            afterCommitSpecifier: self.afterCommitSpecifier,
            afterPath: self.afterPath,
            beforeCommitSpecifier: self.beforeCommitSpecifier,
            beforePath: self.beforePath,
            maxResults: self.maxResults,
            nextToken: token,
            repositoryName: self.repositoryName
        )}
}
extension CodeCommitClient {
    /// Paginate over `[GetMergeConflictsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetMergeConflictsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetMergeConflictsOutput`
    public func getMergeConflictsPaginated(input: GetMergeConflictsInput) -> ClientRuntime.PaginatorSequence<GetMergeConflictsInput, GetMergeConflictsOutput> {
        return ClientRuntime.PaginatorSequence<GetMergeConflictsInput, GetMergeConflictsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getMergeConflicts(input:))
    }
}

extension GetMergeConflictsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetMergeConflictsInput {
        return GetMergeConflictsInput(
            conflictDetailLevel: self.conflictDetailLevel,
            conflictResolutionStrategy: self.conflictResolutionStrategy,
            destinationCommitSpecifier: self.destinationCommitSpecifier,
            maxConflictFiles: self.maxConflictFiles,
            mergeOption: self.mergeOption,
            nextToken: token,
            repositoryName: self.repositoryName,
            sourceCommitSpecifier: self.sourceCommitSpecifier
        )}
}
extension CodeCommitClient {
    /// Paginate over `[ListApprovalRuleTemplatesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListApprovalRuleTemplatesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListApprovalRuleTemplatesOutput`
    public func listApprovalRuleTemplatesPaginated(input: ListApprovalRuleTemplatesInput) -> ClientRuntime.PaginatorSequence<ListApprovalRuleTemplatesInput, ListApprovalRuleTemplatesOutput> {
        return ClientRuntime.PaginatorSequence<ListApprovalRuleTemplatesInput, ListApprovalRuleTemplatesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listApprovalRuleTemplates(input:))
    }
}

extension ListApprovalRuleTemplatesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListApprovalRuleTemplatesInput {
        return ListApprovalRuleTemplatesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension CodeCommitClient {
    /// Paginate over `[ListAssociatedApprovalRuleTemplatesForRepositoryOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAssociatedApprovalRuleTemplatesForRepositoryInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAssociatedApprovalRuleTemplatesForRepositoryOutput`
    public func listAssociatedApprovalRuleTemplatesForRepositoryPaginated(input: ListAssociatedApprovalRuleTemplatesForRepositoryInput) -> ClientRuntime.PaginatorSequence<ListAssociatedApprovalRuleTemplatesForRepositoryInput, ListAssociatedApprovalRuleTemplatesForRepositoryOutput> {
        return ClientRuntime.PaginatorSequence<ListAssociatedApprovalRuleTemplatesForRepositoryInput, ListAssociatedApprovalRuleTemplatesForRepositoryOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listAssociatedApprovalRuleTemplatesForRepository(input:))
    }
}

extension ListAssociatedApprovalRuleTemplatesForRepositoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAssociatedApprovalRuleTemplatesForRepositoryInput {
        return ListAssociatedApprovalRuleTemplatesForRepositoryInput(
            maxResults: self.maxResults,
            nextToken: token,
            repositoryName: self.repositoryName
        )}
}
extension CodeCommitClient {
    /// Paginate over `[ListBranchesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListBranchesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListBranchesOutput`
    public func listBranchesPaginated(input: ListBranchesInput) -> ClientRuntime.PaginatorSequence<ListBranchesInput, ListBranchesOutput> {
        return ClientRuntime.PaginatorSequence<ListBranchesInput, ListBranchesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listBranches(input:))
    }
}

extension ListBranchesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBranchesInput {
        return ListBranchesInput(
            nextToken: token,
            repositoryName: self.repositoryName
        )}
}

extension PaginatorSequence where OperationStackInput == ListBranchesInput, OperationStackOutput == ListBranchesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listBranchesPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func branches() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.branches }
    }
}
extension CodeCommitClient {
    /// Paginate over `[ListFileCommitHistoryOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFileCommitHistoryInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFileCommitHistoryOutput`
    public func listFileCommitHistoryPaginated(input: ListFileCommitHistoryInput) -> ClientRuntime.PaginatorSequence<ListFileCommitHistoryInput, ListFileCommitHistoryOutput> {
        return ClientRuntime.PaginatorSequence<ListFileCommitHistoryInput, ListFileCommitHistoryOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listFileCommitHistory(input:))
    }
}

extension ListFileCommitHistoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFileCommitHistoryInput {
        return ListFileCommitHistoryInput(
            commitSpecifier: self.commitSpecifier,
            filePath: self.filePath,
            maxResults: self.maxResults,
            nextToken: token,
            repositoryName: self.repositoryName
        )}
}
extension CodeCommitClient {
    /// Paginate over `[ListPullRequestsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPullRequestsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPullRequestsOutput`
    public func listPullRequestsPaginated(input: ListPullRequestsInput) -> ClientRuntime.PaginatorSequence<ListPullRequestsInput, ListPullRequestsOutput> {
        return ClientRuntime.PaginatorSequence<ListPullRequestsInput, ListPullRequestsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listPullRequests(input:))
    }
}

extension ListPullRequestsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPullRequestsInput {
        return ListPullRequestsInput(
            authorArn: self.authorArn,
            maxResults: self.maxResults,
            nextToken: token,
            pullRequestStatus: self.pullRequestStatus,
            repositoryName: self.repositoryName
        )}
}
extension CodeCommitClient {
    /// Paginate over `[ListRepositoriesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRepositoriesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRepositoriesOutput`
    public func listRepositoriesPaginated(input: ListRepositoriesInput) -> ClientRuntime.PaginatorSequence<ListRepositoriesInput, ListRepositoriesOutput> {
        return ClientRuntime.PaginatorSequence<ListRepositoriesInput, ListRepositoriesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listRepositories(input:))
    }
}

extension ListRepositoriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRepositoriesInput {
        return ListRepositoriesInput(
            nextToken: token,
            order: self.order,
            sortBy: self.sortBy
        )}
}

extension PaginatorSequence where OperationStackInput == ListRepositoriesInput, OperationStackOutput == ListRepositoriesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listRepositoriesPaginated`
    /// to access the nested member `[CodeCommitClientTypes.RepositoryNameIdPair]`
    /// - Returns: `[CodeCommitClientTypes.RepositoryNameIdPair]`
    public func repositories() async throws -> [CodeCommitClientTypes.RepositoryNameIdPair] {
        return try await self.asyncCompactMap { item in item.repositories }
    }
}
extension CodeCommitClient {
    /// Paginate over `[ListRepositoriesForApprovalRuleTemplateOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRepositoriesForApprovalRuleTemplateInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRepositoriesForApprovalRuleTemplateOutput`
    public func listRepositoriesForApprovalRuleTemplatePaginated(input: ListRepositoriesForApprovalRuleTemplateInput) -> ClientRuntime.PaginatorSequence<ListRepositoriesForApprovalRuleTemplateInput, ListRepositoriesForApprovalRuleTemplateOutput> {
        return ClientRuntime.PaginatorSequence<ListRepositoriesForApprovalRuleTemplateInput, ListRepositoriesForApprovalRuleTemplateOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listRepositoriesForApprovalRuleTemplate(input:))
    }
}

extension ListRepositoriesForApprovalRuleTemplateInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRepositoriesForApprovalRuleTemplateInput {
        return ListRepositoriesForApprovalRuleTemplateInput(
            approvalRuleTemplateName: self.approvalRuleTemplateName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

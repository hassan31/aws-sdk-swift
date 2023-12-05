// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension QBusinessClient {
    /// Paginate over `[GetChatControlsConfigurationOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetChatControlsConfigurationInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetChatControlsConfigurationOutput`
    public func getChatControlsConfigurationPaginated(input: GetChatControlsConfigurationInput) -> ClientRuntime.PaginatorSequence<GetChatControlsConfigurationInput, GetChatControlsConfigurationOutput> {
        return ClientRuntime.PaginatorSequence<GetChatControlsConfigurationInput, GetChatControlsConfigurationOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getChatControlsConfiguration(input:))
    }
}

extension GetChatControlsConfigurationInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetChatControlsConfigurationInput {
        return GetChatControlsConfigurationInput(
            applicationId: self.applicationId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == GetChatControlsConfigurationInput, OperationStackOutput == GetChatControlsConfigurationOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getChatControlsConfigurationPaginated`
    /// to access the nested member `[QBusinessClientTypes.TopicConfiguration]`
    /// - Returns: `[QBusinessClientTypes.TopicConfiguration]`
    public func topicConfigurations() async throws -> [QBusinessClientTypes.TopicConfiguration] {
        return try await self.asyncCompactMap { item in item.topicConfigurations }
    }
}
extension QBusinessClient {
    /// Paginate over `[ListConversationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListConversationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListConversationsOutput`
    public func listConversationsPaginated(input: ListConversationsInput) -> ClientRuntime.PaginatorSequence<ListConversationsInput, ListConversationsOutput> {
        return ClientRuntime.PaginatorSequence<ListConversationsInput, ListConversationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listConversations(input:))
    }
}

extension ListConversationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListConversationsInput {
        return ListConversationsInput(
            applicationId: self.applicationId,
            maxResults: self.maxResults,
            nextToken: token,
            userId: self.userId
        )}
}

extension PaginatorSequence where OperationStackInput == ListConversationsInput, OperationStackOutput == ListConversationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listConversationsPaginated`
    /// to access the nested member `[QBusinessClientTypes.Conversation]`
    /// - Returns: `[QBusinessClientTypes.Conversation]`
    public func conversations() async throws -> [QBusinessClientTypes.Conversation] {
        return try await self.asyncCompactMap { item in item.conversations }
    }
}
extension QBusinessClient {
    /// Paginate over `[ListDataSourceSyncJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDataSourceSyncJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDataSourceSyncJobsOutput`
    public func listDataSourceSyncJobsPaginated(input: ListDataSourceSyncJobsInput) -> ClientRuntime.PaginatorSequence<ListDataSourceSyncJobsInput, ListDataSourceSyncJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListDataSourceSyncJobsInput, ListDataSourceSyncJobsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDataSourceSyncJobs(input:))
    }
}

extension ListDataSourceSyncJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDataSourceSyncJobsInput {
        return ListDataSourceSyncJobsInput(
            applicationId: self.applicationId,
            dataSourceId: self.dataSourceId,
            endTime: self.endTime,
            indexId: self.indexId,
            maxResults: self.maxResults,
            nextToken: token,
            startTime: self.startTime,
            statusFilter: self.statusFilter
        )}
}

extension PaginatorSequence where OperationStackInput == ListDataSourceSyncJobsInput, OperationStackOutput == ListDataSourceSyncJobsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDataSourceSyncJobsPaginated`
    /// to access the nested member `[QBusinessClientTypes.DataSourceSyncJob]`
    /// - Returns: `[QBusinessClientTypes.DataSourceSyncJob]`
    public func history() async throws -> [QBusinessClientTypes.DataSourceSyncJob] {
        return try await self.asyncCompactMap { item in item.history }
    }
}
extension QBusinessClient {
    /// Paginate over `[ListDocumentsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDocumentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDocumentsOutput`
    public func listDocumentsPaginated(input: ListDocumentsInput) -> ClientRuntime.PaginatorSequence<ListDocumentsInput, ListDocumentsOutput> {
        return ClientRuntime.PaginatorSequence<ListDocumentsInput, ListDocumentsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDocuments(input:))
    }
}

extension ListDocumentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDocumentsInput {
        return ListDocumentsInput(
            applicationId: self.applicationId,
            dataSourceIds: self.dataSourceIds,
            indexId: self.indexId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListDocumentsInput, OperationStackOutput == ListDocumentsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDocumentsPaginated`
    /// to access the nested member `[QBusinessClientTypes.DocumentDetails]`
    /// - Returns: `[QBusinessClientTypes.DocumentDetails]`
    public func documentDetailList() async throws -> [QBusinessClientTypes.DocumentDetails] {
        return try await self.asyncCompactMap { item in item.documentDetailList }
    }
}
extension QBusinessClient {
    /// Paginate over `[ListGroupsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListGroupsOutput`
    public func listGroupsPaginated(input: ListGroupsInput) -> ClientRuntime.PaginatorSequence<ListGroupsInput, ListGroupsOutput> {
        return ClientRuntime.PaginatorSequence<ListGroupsInput, ListGroupsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listGroups(input:))
    }
}

extension ListGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGroupsInput {
        return ListGroupsInput(
            applicationId: self.applicationId,
            dataSourceId: self.dataSourceId,
            indexId: self.indexId,
            maxResults: self.maxResults,
            nextToken: token,
            updatedEarlierThan: self.updatedEarlierThan
        )}
}

extension PaginatorSequence where OperationStackInput == ListGroupsInput, OperationStackOutput == ListGroupsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listGroupsPaginated`
    /// to access the nested member `[QBusinessClientTypes.GroupSummary]`
    /// - Returns: `[QBusinessClientTypes.GroupSummary]`
    public func items() async throws -> [QBusinessClientTypes.GroupSummary] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension QBusinessClient {
    /// Paginate over `[ListMessagesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMessagesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMessagesOutput`
    public func listMessagesPaginated(input: ListMessagesInput) -> ClientRuntime.PaginatorSequence<ListMessagesInput, ListMessagesOutput> {
        return ClientRuntime.PaginatorSequence<ListMessagesInput, ListMessagesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listMessages(input:))
    }
}

extension ListMessagesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMessagesInput {
        return ListMessagesInput(
            applicationId: self.applicationId,
            conversationId: self.conversationId,
            maxResults: self.maxResults,
            nextToken: token,
            userId: self.userId
        )}
}

extension PaginatorSequence where OperationStackInput == ListMessagesInput, OperationStackOutput == ListMessagesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listMessagesPaginated`
    /// to access the nested member `[QBusinessClientTypes.Message]`
    /// - Returns: `[QBusinessClientTypes.Message]`
    public func messages() async throws -> [QBusinessClientTypes.Message] {
        return try await self.asyncCompactMap { item in item.messages }
    }
}

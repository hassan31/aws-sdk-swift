// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension IVSRealTimeClient {
    /// Paginate over `[ListCompositionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCompositionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCompositionsOutput`
    public func listCompositionsPaginated(input: ListCompositionsInput) -> ClientRuntime.PaginatorSequence<ListCompositionsInput, ListCompositionsOutput> {
        return ClientRuntime.PaginatorSequence<ListCompositionsInput, ListCompositionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCompositions(input:))
    }
}

extension ListCompositionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCompositionsInput {
        return ListCompositionsInput(
            filterByEncoderConfigurationArn: self.filterByEncoderConfigurationArn,
            filterByStageArn: self.filterByStageArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension IVSRealTimeClient {
    /// Paginate over `[ListEncoderConfigurationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEncoderConfigurationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEncoderConfigurationsOutput`
    public func listEncoderConfigurationsPaginated(input: ListEncoderConfigurationsInput) -> ClientRuntime.PaginatorSequence<ListEncoderConfigurationsInput, ListEncoderConfigurationsOutput> {
        return ClientRuntime.PaginatorSequence<ListEncoderConfigurationsInput, ListEncoderConfigurationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listEncoderConfigurations(input:))
    }
}

extension ListEncoderConfigurationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEncoderConfigurationsInput {
        return ListEncoderConfigurationsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension IVSRealTimeClient {
    /// Paginate over `[ListParticipantEventsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListParticipantEventsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListParticipantEventsOutput`
    public func listParticipantEventsPaginated(input: ListParticipantEventsInput) -> ClientRuntime.PaginatorSequence<ListParticipantEventsInput, ListParticipantEventsOutput> {
        return ClientRuntime.PaginatorSequence<ListParticipantEventsInput, ListParticipantEventsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listParticipantEvents(input:))
    }
}

extension ListParticipantEventsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListParticipantEventsInput {
        return ListParticipantEventsInput(
            maxResults: self.maxResults,
            nextToken: token,
            participantId: self.participantId,
            sessionId: self.sessionId,
            stageArn: self.stageArn
        )}
}
extension IVSRealTimeClient {
    /// Paginate over `[ListParticipantsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListParticipantsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListParticipantsOutput`
    public func listParticipantsPaginated(input: ListParticipantsInput) -> ClientRuntime.PaginatorSequence<ListParticipantsInput, ListParticipantsOutput> {
        return ClientRuntime.PaginatorSequence<ListParticipantsInput, ListParticipantsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listParticipants(input:))
    }
}

extension ListParticipantsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListParticipantsInput {
        return ListParticipantsInput(
            filterByPublished: self.filterByPublished,
            filterByState: self.filterByState,
            filterByUserId: self.filterByUserId,
            maxResults: self.maxResults,
            nextToken: token,
            sessionId: self.sessionId,
            stageArn: self.stageArn
        )}
}
extension IVSRealTimeClient {
    /// Paginate over `[ListStagesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListStagesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListStagesOutput`
    public func listStagesPaginated(input: ListStagesInput) -> ClientRuntime.PaginatorSequence<ListStagesInput, ListStagesOutput> {
        return ClientRuntime.PaginatorSequence<ListStagesInput, ListStagesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listStages(input:))
    }
}

extension ListStagesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStagesInput {
        return ListStagesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension IVSRealTimeClient {
    /// Paginate over `[ListStageSessionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListStageSessionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListStageSessionsOutput`
    public func listStageSessionsPaginated(input: ListStageSessionsInput) -> ClientRuntime.PaginatorSequence<ListStageSessionsInput, ListStageSessionsOutput> {
        return ClientRuntime.PaginatorSequence<ListStageSessionsInput, ListStageSessionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listStageSessions(input:))
    }
}

extension ListStageSessionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStageSessionsInput {
        return ListStageSessionsInput(
            maxResults: self.maxResults,
            nextToken: token,
            stageArn: self.stageArn
        )}
}
extension IVSRealTimeClient {
    /// Paginate over `[ListStorageConfigurationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListStorageConfigurationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListStorageConfigurationsOutput`
    public func listStorageConfigurationsPaginated(input: ListStorageConfigurationsInput) -> ClientRuntime.PaginatorSequence<ListStorageConfigurationsInput, ListStorageConfigurationsOutput> {
        return ClientRuntime.PaginatorSequence<ListStorageConfigurationsInput, ListStorageConfigurationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listStorageConfigurations(input:))
    }
}

extension ListStorageConfigurationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStorageConfigurationsInput {
        return ListStorageConfigurationsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

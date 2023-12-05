// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SMSClient {
    /// Paginate over `[GetConnectorsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetConnectorsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetConnectorsOutput`
    public func getConnectorsPaginated(input: GetConnectorsInput) -> ClientRuntime.PaginatorSequence<GetConnectorsInput, GetConnectorsOutput> {
        return ClientRuntime.PaginatorSequence<GetConnectorsInput, GetConnectorsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getConnectors(input:))
    }
}

extension GetConnectorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetConnectorsInput {
        return GetConnectorsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == GetConnectorsInput, OperationStackOutput == GetConnectorsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getConnectorsPaginated`
    /// to access the nested member `[SMSClientTypes.Connector]`
    /// - Returns: `[SMSClientTypes.Connector]`
    public func connectorList() async throws -> [SMSClientTypes.Connector] {
        return try await self.asyncCompactMap { item in item.connectorList }
    }
}
extension SMSClient {
    /// Paginate over `[GetReplicationJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetReplicationJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetReplicationJobsOutput`
    public func getReplicationJobsPaginated(input: GetReplicationJobsInput) -> ClientRuntime.PaginatorSequence<GetReplicationJobsInput, GetReplicationJobsOutput> {
        return ClientRuntime.PaginatorSequence<GetReplicationJobsInput, GetReplicationJobsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getReplicationJobs(input:))
    }
}

extension GetReplicationJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetReplicationJobsInput {
        return GetReplicationJobsInput(
            maxResults: self.maxResults,
            nextToken: token,
            replicationJobId: self.replicationJobId
        )}
}

extension PaginatorSequence where OperationStackInput == GetReplicationJobsInput, OperationStackOutput == GetReplicationJobsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getReplicationJobsPaginated`
    /// to access the nested member `[SMSClientTypes.ReplicationJob]`
    /// - Returns: `[SMSClientTypes.ReplicationJob]`
    public func replicationJobList() async throws -> [SMSClientTypes.ReplicationJob] {
        return try await self.asyncCompactMap { item in item.replicationJobList }
    }
}
extension SMSClient {
    /// Paginate over `[GetReplicationRunsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetReplicationRunsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetReplicationRunsOutput`
    public func getReplicationRunsPaginated(input: GetReplicationRunsInput) -> ClientRuntime.PaginatorSequence<GetReplicationRunsInput, GetReplicationRunsOutput> {
        return ClientRuntime.PaginatorSequence<GetReplicationRunsInput, GetReplicationRunsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getReplicationRuns(input:))
    }
}

extension GetReplicationRunsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetReplicationRunsInput {
        return GetReplicationRunsInput(
            maxResults: self.maxResults,
            nextToken: token,
            replicationJobId: self.replicationJobId
        )}
}

extension PaginatorSequence where OperationStackInput == GetReplicationRunsInput, OperationStackOutput == GetReplicationRunsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getReplicationRunsPaginated`
    /// to access the nested member `[SMSClientTypes.ReplicationRun]`
    /// - Returns: `[SMSClientTypes.ReplicationRun]`
    public func replicationRunList() async throws -> [SMSClientTypes.ReplicationRun] {
        return try await self.asyncCompactMap { item in item.replicationRunList }
    }
}
extension SMSClient {
    /// Paginate over `[GetServersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetServersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetServersOutput`
    public func getServersPaginated(input: GetServersInput) -> ClientRuntime.PaginatorSequence<GetServersInput, GetServersOutput> {
        return ClientRuntime.PaginatorSequence<GetServersInput, GetServersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getServers(input:))
    }
}

extension GetServersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetServersInput {
        return GetServersInput(
            maxResults: self.maxResults,
            nextToken: token,
            vmServerAddressList: self.vmServerAddressList
        )}
}

extension PaginatorSequence where OperationStackInput == GetServersInput, OperationStackOutput == GetServersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getServersPaginated`
    /// to access the nested member `[SMSClientTypes.Server]`
    /// - Returns: `[SMSClientTypes.Server]`
    public func serverList() async throws -> [SMSClientTypes.Server] {
        return try await self.asyncCompactMap { item in item.serverList }
    }
}

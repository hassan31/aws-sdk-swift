// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension FSxClient {
    /// Paginate over `[DescribeBackupsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeBackupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeBackupsOutput`
    public func describeBackupsPaginated(input: DescribeBackupsInput) -> ClientRuntime.PaginatorSequence<DescribeBackupsInput, DescribeBackupsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeBackupsInput, DescribeBackupsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeBackups(input:))
    }
}

extension DescribeBackupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeBackupsInput {
        return DescribeBackupsInput(
            backupIds: self.backupIds,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension FSxClient {
    /// Paginate over `[DescribeDataRepositoryAssociationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeDataRepositoryAssociationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeDataRepositoryAssociationsOutput`
    public func describeDataRepositoryAssociationsPaginated(input: DescribeDataRepositoryAssociationsInput) -> ClientRuntime.PaginatorSequence<DescribeDataRepositoryAssociationsInput, DescribeDataRepositoryAssociationsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeDataRepositoryAssociationsInput, DescribeDataRepositoryAssociationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeDataRepositoryAssociations(input:))
    }
}

extension DescribeDataRepositoryAssociationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeDataRepositoryAssociationsInput {
        return DescribeDataRepositoryAssociationsInput(
            associationIds: self.associationIds,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension FSxClient {
    /// Paginate over `[DescribeDataRepositoryTasksOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeDataRepositoryTasksInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeDataRepositoryTasksOutput`
    public func describeDataRepositoryTasksPaginated(input: DescribeDataRepositoryTasksInput) -> ClientRuntime.PaginatorSequence<DescribeDataRepositoryTasksInput, DescribeDataRepositoryTasksOutput> {
        return ClientRuntime.PaginatorSequence<DescribeDataRepositoryTasksInput, DescribeDataRepositoryTasksOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeDataRepositoryTasks(input:))
    }
}

extension DescribeDataRepositoryTasksInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeDataRepositoryTasksInput {
        return DescribeDataRepositoryTasksInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            taskIds: self.taskIds
        )}
}
extension FSxClient {
    /// Paginate over `[DescribeFileCachesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeFileCachesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeFileCachesOutput`
    public func describeFileCachesPaginated(input: DescribeFileCachesInput) -> ClientRuntime.PaginatorSequence<DescribeFileCachesInput, DescribeFileCachesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeFileCachesInput, DescribeFileCachesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeFileCaches(input:))
    }
}

extension DescribeFileCachesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeFileCachesInput {
        return DescribeFileCachesInput(
            fileCacheIds: self.fileCacheIds,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension FSxClient {
    /// Paginate over `[DescribeFileSystemAliasesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeFileSystemAliasesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeFileSystemAliasesOutput`
    public func describeFileSystemAliasesPaginated(input: DescribeFileSystemAliasesInput) -> ClientRuntime.PaginatorSequence<DescribeFileSystemAliasesInput, DescribeFileSystemAliasesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeFileSystemAliasesInput, DescribeFileSystemAliasesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeFileSystemAliases(input:))
    }
}

extension DescribeFileSystemAliasesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeFileSystemAliasesInput {
        return DescribeFileSystemAliasesInput(
            clientRequestToken: self.clientRequestToken,
            fileSystemId: self.fileSystemId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension FSxClient {
    /// Paginate over `[DescribeFileSystemsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeFileSystemsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeFileSystemsOutput`
    public func describeFileSystemsPaginated(input: DescribeFileSystemsInput) -> ClientRuntime.PaginatorSequence<DescribeFileSystemsInput, DescribeFileSystemsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeFileSystemsInput, DescribeFileSystemsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeFileSystems(input:))
    }
}

extension DescribeFileSystemsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeFileSystemsInput {
        return DescribeFileSystemsInput(
            fileSystemIds: self.fileSystemIds,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension FSxClient {
    /// Paginate over `[DescribeSnapshotsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeSnapshotsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeSnapshotsOutput`
    public func describeSnapshotsPaginated(input: DescribeSnapshotsInput) -> ClientRuntime.PaginatorSequence<DescribeSnapshotsInput, DescribeSnapshotsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeSnapshotsInput, DescribeSnapshotsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeSnapshots(input:))
    }
}

extension DescribeSnapshotsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeSnapshotsInput {
        return DescribeSnapshotsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            snapshotIds: self.snapshotIds
        )}
}
extension FSxClient {
    /// Paginate over `[DescribeStorageVirtualMachinesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeStorageVirtualMachinesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeStorageVirtualMachinesOutput`
    public func describeStorageVirtualMachinesPaginated(input: DescribeStorageVirtualMachinesInput) -> ClientRuntime.PaginatorSequence<DescribeStorageVirtualMachinesInput, DescribeStorageVirtualMachinesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeStorageVirtualMachinesInput, DescribeStorageVirtualMachinesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeStorageVirtualMachines(input:))
    }
}

extension DescribeStorageVirtualMachinesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeStorageVirtualMachinesInput {
        return DescribeStorageVirtualMachinesInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            storageVirtualMachineIds: self.storageVirtualMachineIds
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeStorageVirtualMachinesInput, OperationStackOutput == DescribeStorageVirtualMachinesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeStorageVirtualMachinesPaginated`
    /// to access the nested member `[FSxClientTypes.StorageVirtualMachine]`
    /// - Returns: `[FSxClientTypes.StorageVirtualMachine]`
    public func storageVirtualMachines() async throws -> [FSxClientTypes.StorageVirtualMachine] {
        return try await self.asyncCompactMap { item in item.storageVirtualMachines }
    }
}
extension FSxClient {
    /// Paginate over `[DescribeVolumesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeVolumesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeVolumesOutput`
    public func describeVolumesPaginated(input: DescribeVolumesInput) -> ClientRuntime.PaginatorSequence<DescribeVolumesInput, DescribeVolumesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeVolumesInput, DescribeVolumesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeVolumes(input:))
    }
}

extension DescribeVolumesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeVolumesInput {
        return DescribeVolumesInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            volumeIds: self.volumeIds
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeVolumesInput, OperationStackOutput == DescribeVolumesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeVolumesPaginated`
    /// to access the nested member `[FSxClientTypes.Volume]`
    /// - Returns: `[FSxClientTypes.Volume]`
    public func volumes() async throws -> [FSxClientTypes.Volume] {
        return try await self.asyncCompactMap { item in item.volumes }
    }
}
extension FSxClient {
    /// Paginate over `[ListTagsForResourceOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTagsForResourceInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTagsForResourceOutput`
    public func listTagsForResourcePaginated(input: ListTagsForResourceInput) -> ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutput> {
        return ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listTagsForResource(input:))
    }
}

extension ListTagsForResourceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTagsForResourceInput {
        return ListTagsForResourceInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceARN: self.resourceARN
        )}
}

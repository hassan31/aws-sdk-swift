// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GlobalAcceleratorClient {
    /// Paginate over `[ListAcceleratorsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAcceleratorsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAcceleratorsOutput`
    public func listAcceleratorsPaginated(input: ListAcceleratorsInput) -> ClientRuntime.PaginatorSequence<ListAcceleratorsInput, ListAcceleratorsOutput> {
        return ClientRuntime.PaginatorSequence<ListAcceleratorsInput, ListAcceleratorsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listAccelerators(input:))
    }
}

extension ListAcceleratorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAcceleratorsInput {
        return ListAcceleratorsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListAcceleratorsInput, OperationStackOutput == ListAcceleratorsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listAcceleratorsPaginated`
    /// to access the nested member `[GlobalAcceleratorClientTypes.Accelerator]`
    /// - Returns: `[GlobalAcceleratorClientTypes.Accelerator]`
    public func accelerators() async throws -> [GlobalAcceleratorClientTypes.Accelerator] {
        return try await self.asyncCompactMap { item in item.accelerators }
    }
}
extension GlobalAcceleratorClient {
    /// Paginate over `[ListByoipCidrsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListByoipCidrsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListByoipCidrsOutput`
    public func listByoipCidrsPaginated(input: ListByoipCidrsInput) -> ClientRuntime.PaginatorSequence<ListByoipCidrsInput, ListByoipCidrsOutput> {
        return ClientRuntime.PaginatorSequence<ListByoipCidrsInput, ListByoipCidrsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listByoipCidrs(input:))
    }
}

extension ListByoipCidrsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListByoipCidrsInput {
        return ListByoipCidrsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListByoipCidrsInput, OperationStackOutput == ListByoipCidrsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listByoipCidrsPaginated`
    /// to access the nested member `[GlobalAcceleratorClientTypes.ByoipCidr]`
    /// - Returns: `[GlobalAcceleratorClientTypes.ByoipCidr]`
    public func byoipCidrs() async throws -> [GlobalAcceleratorClientTypes.ByoipCidr] {
        return try await self.asyncCompactMap { item in item.byoipCidrs }
    }
}
extension GlobalAcceleratorClient {
    /// Paginate over `[ListCrossAccountAttachmentsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCrossAccountAttachmentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCrossAccountAttachmentsOutput`
    public func listCrossAccountAttachmentsPaginated(input: ListCrossAccountAttachmentsInput) -> ClientRuntime.PaginatorSequence<ListCrossAccountAttachmentsInput, ListCrossAccountAttachmentsOutput> {
        return ClientRuntime.PaginatorSequence<ListCrossAccountAttachmentsInput, ListCrossAccountAttachmentsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCrossAccountAttachments(input:))
    }
}

extension ListCrossAccountAttachmentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCrossAccountAttachmentsInput {
        return ListCrossAccountAttachmentsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListCrossAccountAttachmentsInput, OperationStackOutput == ListCrossAccountAttachmentsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCrossAccountAttachmentsPaginated`
    /// to access the nested member `[GlobalAcceleratorClientTypes.Attachment]`
    /// - Returns: `[GlobalAcceleratorClientTypes.Attachment]`
    public func crossAccountAttachments() async throws -> [GlobalAcceleratorClientTypes.Attachment] {
        return try await self.asyncCompactMap { item in item.crossAccountAttachments }
    }
}
extension GlobalAcceleratorClient {
    /// Paginate over `[ListCrossAccountResourcesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCrossAccountResourcesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCrossAccountResourcesOutput`
    public func listCrossAccountResourcesPaginated(input: ListCrossAccountResourcesInput) -> ClientRuntime.PaginatorSequence<ListCrossAccountResourcesInput, ListCrossAccountResourcesOutput> {
        return ClientRuntime.PaginatorSequence<ListCrossAccountResourcesInput, ListCrossAccountResourcesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCrossAccountResources(input:))
    }
}

extension ListCrossAccountResourcesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCrossAccountResourcesInput {
        return ListCrossAccountResourcesInput(
            acceleratorArn: self.acceleratorArn,
            maxResults: self.maxResults,
            nextToken: token,
            resourceOwnerAwsAccountId: self.resourceOwnerAwsAccountId
        )}
}

extension PaginatorSequence where OperationStackInput == ListCrossAccountResourcesInput, OperationStackOutput == ListCrossAccountResourcesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCrossAccountResourcesPaginated`
    /// to access the nested member `[GlobalAcceleratorClientTypes.CrossAccountResource]`
    /// - Returns: `[GlobalAcceleratorClientTypes.CrossAccountResource]`
    public func crossAccountResources() async throws -> [GlobalAcceleratorClientTypes.CrossAccountResource] {
        return try await self.asyncCompactMap { item in item.crossAccountResources }
    }
}
extension GlobalAcceleratorClient {
    /// Paginate over `[ListCustomRoutingAcceleratorsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCustomRoutingAcceleratorsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCustomRoutingAcceleratorsOutput`
    public func listCustomRoutingAcceleratorsPaginated(input: ListCustomRoutingAcceleratorsInput) -> ClientRuntime.PaginatorSequence<ListCustomRoutingAcceleratorsInput, ListCustomRoutingAcceleratorsOutput> {
        return ClientRuntime.PaginatorSequence<ListCustomRoutingAcceleratorsInput, ListCustomRoutingAcceleratorsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCustomRoutingAccelerators(input:))
    }
}

extension ListCustomRoutingAcceleratorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCustomRoutingAcceleratorsInput {
        return ListCustomRoutingAcceleratorsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListCustomRoutingAcceleratorsInput, OperationStackOutput == ListCustomRoutingAcceleratorsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCustomRoutingAcceleratorsPaginated`
    /// to access the nested member `[GlobalAcceleratorClientTypes.CustomRoutingAccelerator]`
    /// - Returns: `[GlobalAcceleratorClientTypes.CustomRoutingAccelerator]`
    public func accelerators() async throws -> [GlobalAcceleratorClientTypes.CustomRoutingAccelerator] {
        return try await self.asyncCompactMap { item in item.accelerators }
    }
}
extension GlobalAcceleratorClient {
    /// Paginate over `[ListCustomRoutingEndpointGroupsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCustomRoutingEndpointGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCustomRoutingEndpointGroupsOutput`
    public func listCustomRoutingEndpointGroupsPaginated(input: ListCustomRoutingEndpointGroupsInput) -> ClientRuntime.PaginatorSequence<ListCustomRoutingEndpointGroupsInput, ListCustomRoutingEndpointGroupsOutput> {
        return ClientRuntime.PaginatorSequence<ListCustomRoutingEndpointGroupsInput, ListCustomRoutingEndpointGroupsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCustomRoutingEndpointGroups(input:))
    }
}

extension ListCustomRoutingEndpointGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCustomRoutingEndpointGroupsInput {
        return ListCustomRoutingEndpointGroupsInput(
            listenerArn: self.listenerArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListCustomRoutingEndpointGroupsInput, OperationStackOutput == ListCustomRoutingEndpointGroupsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCustomRoutingEndpointGroupsPaginated`
    /// to access the nested member `[GlobalAcceleratorClientTypes.CustomRoutingEndpointGroup]`
    /// - Returns: `[GlobalAcceleratorClientTypes.CustomRoutingEndpointGroup]`
    public func endpointGroups() async throws -> [GlobalAcceleratorClientTypes.CustomRoutingEndpointGroup] {
        return try await self.asyncCompactMap { item in item.endpointGroups }
    }
}
extension GlobalAcceleratorClient {
    /// Paginate over `[ListCustomRoutingListenersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCustomRoutingListenersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCustomRoutingListenersOutput`
    public func listCustomRoutingListenersPaginated(input: ListCustomRoutingListenersInput) -> ClientRuntime.PaginatorSequence<ListCustomRoutingListenersInput, ListCustomRoutingListenersOutput> {
        return ClientRuntime.PaginatorSequence<ListCustomRoutingListenersInput, ListCustomRoutingListenersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCustomRoutingListeners(input:))
    }
}

extension ListCustomRoutingListenersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCustomRoutingListenersInput {
        return ListCustomRoutingListenersInput(
            acceleratorArn: self.acceleratorArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListCustomRoutingListenersInput, OperationStackOutput == ListCustomRoutingListenersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCustomRoutingListenersPaginated`
    /// to access the nested member `[GlobalAcceleratorClientTypes.CustomRoutingListener]`
    /// - Returns: `[GlobalAcceleratorClientTypes.CustomRoutingListener]`
    public func listeners() async throws -> [GlobalAcceleratorClientTypes.CustomRoutingListener] {
        return try await self.asyncCompactMap { item in item.listeners }
    }
}
extension GlobalAcceleratorClient {
    /// Paginate over `[ListCustomRoutingPortMappingsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCustomRoutingPortMappingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCustomRoutingPortMappingsOutput`
    public func listCustomRoutingPortMappingsPaginated(input: ListCustomRoutingPortMappingsInput) -> ClientRuntime.PaginatorSequence<ListCustomRoutingPortMappingsInput, ListCustomRoutingPortMappingsOutput> {
        return ClientRuntime.PaginatorSequence<ListCustomRoutingPortMappingsInput, ListCustomRoutingPortMappingsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCustomRoutingPortMappings(input:))
    }
}

extension ListCustomRoutingPortMappingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCustomRoutingPortMappingsInput {
        return ListCustomRoutingPortMappingsInput(
            acceleratorArn: self.acceleratorArn,
            endpointGroupArn: self.endpointGroupArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListCustomRoutingPortMappingsInput, OperationStackOutput == ListCustomRoutingPortMappingsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCustomRoutingPortMappingsPaginated`
    /// to access the nested member `[GlobalAcceleratorClientTypes.PortMapping]`
    /// - Returns: `[GlobalAcceleratorClientTypes.PortMapping]`
    public func portMappings() async throws -> [GlobalAcceleratorClientTypes.PortMapping] {
        return try await self.asyncCompactMap { item in item.portMappings }
    }
}
extension GlobalAcceleratorClient {
    /// Paginate over `[ListCustomRoutingPortMappingsByDestinationOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCustomRoutingPortMappingsByDestinationInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCustomRoutingPortMappingsByDestinationOutput`
    public func listCustomRoutingPortMappingsByDestinationPaginated(input: ListCustomRoutingPortMappingsByDestinationInput) -> ClientRuntime.PaginatorSequence<ListCustomRoutingPortMappingsByDestinationInput, ListCustomRoutingPortMappingsByDestinationOutput> {
        return ClientRuntime.PaginatorSequence<ListCustomRoutingPortMappingsByDestinationInput, ListCustomRoutingPortMappingsByDestinationOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCustomRoutingPortMappingsByDestination(input:))
    }
}

extension ListCustomRoutingPortMappingsByDestinationInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCustomRoutingPortMappingsByDestinationInput {
        return ListCustomRoutingPortMappingsByDestinationInput(
            destinationAddress: self.destinationAddress,
            endpointId: self.endpointId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListCustomRoutingPortMappingsByDestinationInput, OperationStackOutput == ListCustomRoutingPortMappingsByDestinationOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCustomRoutingPortMappingsByDestinationPaginated`
    /// to access the nested member `[GlobalAcceleratorClientTypes.DestinationPortMapping]`
    /// - Returns: `[GlobalAcceleratorClientTypes.DestinationPortMapping]`
    public func destinationPortMappings() async throws -> [GlobalAcceleratorClientTypes.DestinationPortMapping] {
        return try await self.asyncCompactMap { item in item.destinationPortMappings }
    }
}
extension GlobalAcceleratorClient {
    /// Paginate over `[ListEndpointGroupsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEndpointGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEndpointGroupsOutput`
    public func listEndpointGroupsPaginated(input: ListEndpointGroupsInput) -> ClientRuntime.PaginatorSequence<ListEndpointGroupsInput, ListEndpointGroupsOutput> {
        return ClientRuntime.PaginatorSequence<ListEndpointGroupsInput, ListEndpointGroupsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listEndpointGroups(input:))
    }
}

extension ListEndpointGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEndpointGroupsInput {
        return ListEndpointGroupsInput(
            listenerArn: self.listenerArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListEndpointGroupsInput, OperationStackOutput == ListEndpointGroupsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listEndpointGroupsPaginated`
    /// to access the nested member `[GlobalAcceleratorClientTypes.EndpointGroup]`
    /// - Returns: `[GlobalAcceleratorClientTypes.EndpointGroup]`
    public func endpointGroups() async throws -> [GlobalAcceleratorClientTypes.EndpointGroup] {
        return try await self.asyncCompactMap { item in item.endpointGroups }
    }
}
extension GlobalAcceleratorClient {
    /// Paginate over `[ListListenersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListListenersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListListenersOutput`
    public func listListenersPaginated(input: ListListenersInput) -> ClientRuntime.PaginatorSequence<ListListenersInput, ListListenersOutput> {
        return ClientRuntime.PaginatorSequence<ListListenersInput, ListListenersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listListeners(input:))
    }
}

extension ListListenersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListListenersInput {
        return ListListenersInput(
            acceleratorArn: self.acceleratorArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListListenersInput, OperationStackOutput == ListListenersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listListenersPaginated`
    /// to access the nested member `[GlobalAcceleratorClientTypes.Listener]`
    /// - Returns: `[GlobalAcceleratorClientTypes.Listener]`
    public func listeners() async throws -> [GlobalAcceleratorClientTypes.Listener] {
        return try await self.asyncCompactMap { item in item.listeners }
    }
}

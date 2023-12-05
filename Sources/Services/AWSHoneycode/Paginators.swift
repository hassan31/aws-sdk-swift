// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension HoneycodeClient {
    /// Paginate over `[ListTableColumnsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTableColumnsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTableColumnsOutput`
    public func listTableColumnsPaginated(input: ListTableColumnsInput) -> ClientRuntime.PaginatorSequence<ListTableColumnsInput, ListTableColumnsOutput> {
        return ClientRuntime.PaginatorSequence<ListTableColumnsInput, ListTableColumnsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listTableColumns(input:))
    }
}

extension ListTableColumnsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTableColumnsInput {
        return ListTableColumnsInput(
            nextToken: token,
            tableId: self.tableId,
            workbookId: self.workbookId
        )}
}

extension PaginatorSequence where OperationStackInput == ListTableColumnsInput, OperationStackOutput == ListTableColumnsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listTableColumnsPaginated`
    /// to access the nested member `[HoneycodeClientTypes.TableColumn]`
    /// - Returns: `[HoneycodeClientTypes.TableColumn]`
    public func tableColumns() async throws -> [HoneycodeClientTypes.TableColumn] {
        return try await self.asyncCompactMap { item in item.tableColumns }
    }
}
extension HoneycodeClient {
    /// Paginate over `[ListTableRowsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTableRowsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTableRowsOutput`
    public func listTableRowsPaginated(input: ListTableRowsInput) -> ClientRuntime.PaginatorSequence<ListTableRowsInput, ListTableRowsOutput> {
        return ClientRuntime.PaginatorSequence<ListTableRowsInput, ListTableRowsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listTableRows(input:))
    }
}

extension ListTableRowsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTableRowsInput {
        return ListTableRowsInput(
            maxResults: self.maxResults,
            nextToken: token,
            rowIds: self.rowIds,
            tableId: self.tableId,
            workbookId: self.workbookId
        )}
}

extension PaginatorSequence where OperationStackInput == ListTableRowsInput, OperationStackOutput == ListTableRowsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listTableRowsPaginated`
    /// to access the nested member `[HoneycodeClientTypes.TableRow]`
    /// - Returns: `[HoneycodeClientTypes.TableRow]`
    public func rows() async throws -> [HoneycodeClientTypes.TableRow] {
        return try await self.asyncCompactMap { item in item.rows }
    }
}
extension HoneycodeClient {
    /// Paginate over `[ListTablesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTablesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTablesOutput`
    public func listTablesPaginated(input: ListTablesInput) -> ClientRuntime.PaginatorSequence<ListTablesInput, ListTablesOutput> {
        return ClientRuntime.PaginatorSequence<ListTablesInput, ListTablesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listTables(input:))
    }
}

extension ListTablesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTablesInput {
        return ListTablesInput(
            maxResults: self.maxResults,
            nextToken: token,
            workbookId: self.workbookId
        )}
}

extension PaginatorSequence where OperationStackInput == ListTablesInput, OperationStackOutput == ListTablesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listTablesPaginated`
    /// to access the nested member `[HoneycodeClientTypes.Table]`
    /// - Returns: `[HoneycodeClientTypes.Table]`
    public func tables() async throws -> [HoneycodeClientTypes.Table] {
        return try await self.asyncCompactMap { item in item.tables }
    }
}
extension HoneycodeClient {
    /// Paginate over `[QueryTableRowsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[QueryTableRowsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `QueryTableRowsOutput`
    public func queryTableRowsPaginated(input: QueryTableRowsInput) -> ClientRuntime.PaginatorSequence<QueryTableRowsInput, QueryTableRowsOutput> {
        return ClientRuntime.PaginatorSequence<QueryTableRowsInput, QueryTableRowsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.queryTableRows(input:))
    }
}

extension QueryTableRowsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> QueryTableRowsInput {
        return QueryTableRowsInput(
            filterFormula: self.filterFormula,
            maxResults: self.maxResults,
            nextToken: token,
            tableId: self.tableId,
            workbookId: self.workbookId
        )}
}

extension PaginatorSequence where OperationStackInput == QueryTableRowsInput, OperationStackOutput == QueryTableRowsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `queryTableRowsPaginated`
    /// to access the nested member `[HoneycodeClientTypes.TableRow]`
    /// - Returns: `[HoneycodeClientTypes.TableRow]`
    public func rows() async throws -> [HoneycodeClientTypes.TableRow] {
        return try await self.asyncCompactMap { item in item.rows }
    }
}

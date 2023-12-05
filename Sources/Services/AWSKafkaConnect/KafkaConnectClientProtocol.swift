// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

///
public protocol KafkaConnectClientProtocol {
    /// Performs the `CreateConnector` operation on the `KafkaConnect` service.
    ///
    /// Creates a connector using the specified properties.
    ///
    /// - Parameter CreateConnectorInput : [no documentation found]
    ///
    /// - Returns: `CreateConnectorOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : HTTP Status Code 400: Bad request due to incorrect input. Correct your request and then retry it.
    /// - `ConflictException` : HTTP Status Code 409: Conflict. A resource with this name already exists. Retry your request with another name.
    /// - `ForbiddenException` : HTTP Status Code 403: Access forbidden. Correct your credentials and then retry your request.
    /// - `InternalServerErrorException` : HTTP Status Code 500: Unexpected internal server error. Retrying your request might resolve the issue.
    /// - `NotFoundException` : HTTP Status Code 404: Resource not found due to incorrect input. Correct your request and then retry it.
    /// - `ServiceUnavailableException` : HTTP Status Code 503: Service Unavailable. Retrying your request in some time might resolve the issue.
    /// - `TooManyRequestsException` : HTTP Status Code 429: Limit exceeded. Resource limit reached.
    /// - `UnauthorizedException` : HTTP Status Code 401: Unauthorized request. The provided credentials couldn't be validated.
    func createConnector(input: CreateConnectorInput) async throws -> CreateConnectorOutput
    /// Performs the `CreateCustomPlugin` operation on the `KafkaConnect` service.
    ///
    /// Creates a custom plugin using the specified properties.
    ///
    /// - Parameter CreateCustomPluginInput : [no documentation found]
    ///
    /// - Returns: `CreateCustomPluginOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : HTTP Status Code 400: Bad request due to incorrect input. Correct your request and then retry it.
    /// - `ConflictException` : HTTP Status Code 409: Conflict. A resource with this name already exists. Retry your request with another name.
    /// - `ForbiddenException` : HTTP Status Code 403: Access forbidden. Correct your credentials and then retry your request.
    /// - `InternalServerErrorException` : HTTP Status Code 500: Unexpected internal server error. Retrying your request might resolve the issue.
    /// - `NotFoundException` : HTTP Status Code 404: Resource not found due to incorrect input. Correct your request and then retry it.
    /// - `ServiceUnavailableException` : HTTP Status Code 503: Service Unavailable. Retrying your request in some time might resolve the issue.
    /// - `TooManyRequestsException` : HTTP Status Code 429: Limit exceeded. Resource limit reached.
    /// - `UnauthorizedException` : HTTP Status Code 401: Unauthorized request. The provided credentials couldn't be validated.
    func createCustomPlugin(input: CreateCustomPluginInput) async throws -> CreateCustomPluginOutput
    /// Performs the `CreateWorkerConfiguration` operation on the `KafkaConnect` service.
    ///
    /// Creates a worker configuration using the specified properties.
    ///
    /// - Parameter CreateWorkerConfigurationInput : [no documentation found]
    ///
    /// - Returns: `CreateWorkerConfigurationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : HTTP Status Code 400: Bad request due to incorrect input. Correct your request and then retry it.
    /// - `ConflictException` : HTTP Status Code 409: Conflict. A resource with this name already exists. Retry your request with another name.
    /// - `ForbiddenException` : HTTP Status Code 403: Access forbidden. Correct your credentials and then retry your request.
    /// - `InternalServerErrorException` : HTTP Status Code 500: Unexpected internal server error. Retrying your request might resolve the issue.
    /// - `NotFoundException` : HTTP Status Code 404: Resource not found due to incorrect input. Correct your request and then retry it.
    /// - `ServiceUnavailableException` : HTTP Status Code 503: Service Unavailable. Retrying your request in some time might resolve the issue.
    /// - `TooManyRequestsException` : HTTP Status Code 429: Limit exceeded. Resource limit reached.
    /// - `UnauthorizedException` : HTTP Status Code 401: Unauthorized request. The provided credentials couldn't be validated.
    func createWorkerConfiguration(input: CreateWorkerConfigurationInput) async throws -> CreateWorkerConfigurationOutput
    /// Performs the `DeleteConnector` operation on the `KafkaConnect` service.
    ///
    /// Deletes the specified connector.
    ///
    /// - Parameter DeleteConnectorInput : [no documentation found]
    ///
    /// - Returns: `DeleteConnectorOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : HTTP Status Code 400: Bad request due to incorrect input. Correct your request and then retry it.
    /// - `ForbiddenException` : HTTP Status Code 403: Access forbidden. Correct your credentials and then retry your request.
    /// - `InternalServerErrorException` : HTTP Status Code 500: Unexpected internal server error. Retrying your request might resolve the issue.
    /// - `NotFoundException` : HTTP Status Code 404: Resource not found due to incorrect input. Correct your request and then retry it.
    /// - `ServiceUnavailableException` : HTTP Status Code 503: Service Unavailable. Retrying your request in some time might resolve the issue.
    /// - `TooManyRequestsException` : HTTP Status Code 429: Limit exceeded. Resource limit reached.
    /// - `UnauthorizedException` : HTTP Status Code 401: Unauthorized request. The provided credentials couldn't be validated.
    func deleteConnector(input: DeleteConnectorInput) async throws -> DeleteConnectorOutput
    /// Performs the `DeleteCustomPlugin` operation on the `KafkaConnect` service.
    ///
    /// Deletes a custom plugin.
    ///
    /// - Parameter DeleteCustomPluginInput : [no documentation found]
    ///
    /// - Returns: `DeleteCustomPluginOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : HTTP Status Code 400: Bad request due to incorrect input. Correct your request and then retry it.
    /// - `ForbiddenException` : HTTP Status Code 403: Access forbidden. Correct your credentials and then retry your request.
    /// - `InternalServerErrorException` : HTTP Status Code 500: Unexpected internal server error. Retrying your request might resolve the issue.
    /// - `NotFoundException` : HTTP Status Code 404: Resource not found due to incorrect input. Correct your request and then retry it.
    /// - `ServiceUnavailableException` : HTTP Status Code 503: Service Unavailable. Retrying your request in some time might resolve the issue.
    /// - `TooManyRequestsException` : HTTP Status Code 429: Limit exceeded. Resource limit reached.
    /// - `UnauthorizedException` : HTTP Status Code 401: Unauthorized request. The provided credentials couldn't be validated.
    func deleteCustomPlugin(input: DeleteCustomPluginInput) async throws -> DeleteCustomPluginOutput
    /// Performs the `DescribeConnector` operation on the `KafkaConnect` service.
    ///
    /// Returns summary information about the connector.
    ///
    /// - Parameter DescribeConnectorInput : [no documentation found]
    ///
    /// - Returns: `DescribeConnectorOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : HTTP Status Code 400: Bad request due to incorrect input. Correct your request and then retry it.
    /// - `ForbiddenException` : HTTP Status Code 403: Access forbidden. Correct your credentials and then retry your request.
    /// - `InternalServerErrorException` : HTTP Status Code 500: Unexpected internal server error. Retrying your request might resolve the issue.
    /// - `NotFoundException` : HTTP Status Code 404: Resource not found due to incorrect input. Correct your request and then retry it.
    /// - `ServiceUnavailableException` : HTTP Status Code 503: Service Unavailable. Retrying your request in some time might resolve the issue.
    /// - `TooManyRequestsException` : HTTP Status Code 429: Limit exceeded. Resource limit reached.
    /// - `UnauthorizedException` : HTTP Status Code 401: Unauthorized request. The provided credentials couldn't be validated.
    func describeConnector(input: DescribeConnectorInput) async throws -> DescribeConnectorOutput
    /// Performs the `DescribeCustomPlugin` operation on the `KafkaConnect` service.
    ///
    /// A summary description of the custom plugin.
    ///
    /// - Parameter DescribeCustomPluginInput : [no documentation found]
    ///
    /// - Returns: `DescribeCustomPluginOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : HTTP Status Code 400: Bad request due to incorrect input. Correct your request and then retry it.
    /// - `ForbiddenException` : HTTP Status Code 403: Access forbidden. Correct your credentials and then retry your request.
    /// - `InternalServerErrorException` : HTTP Status Code 500: Unexpected internal server error. Retrying your request might resolve the issue.
    /// - `NotFoundException` : HTTP Status Code 404: Resource not found due to incorrect input. Correct your request and then retry it.
    /// - `ServiceUnavailableException` : HTTP Status Code 503: Service Unavailable. Retrying your request in some time might resolve the issue.
    /// - `TooManyRequestsException` : HTTP Status Code 429: Limit exceeded. Resource limit reached.
    /// - `UnauthorizedException` : HTTP Status Code 401: Unauthorized request. The provided credentials couldn't be validated.
    func describeCustomPlugin(input: DescribeCustomPluginInput) async throws -> DescribeCustomPluginOutput
    /// Performs the `DescribeWorkerConfiguration` operation on the `KafkaConnect` service.
    ///
    /// Returns information about a worker configuration.
    ///
    /// - Parameter DescribeWorkerConfigurationInput : [no documentation found]
    ///
    /// - Returns: `DescribeWorkerConfigurationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : HTTP Status Code 400: Bad request due to incorrect input. Correct your request and then retry it.
    /// - `ForbiddenException` : HTTP Status Code 403: Access forbidden. Correct your credentials and then retry your request.
    /// - `InternalServerErrorException` : HTTP Status Code 500: Unexpected internal server error. Retrying your request might resolve the issue.
    /// - `NotFoundException` : HTTP Status Code 404: Resource not found due to incorrect input. Correct your request and then retry it.
    /// - `ServiceUnavailableException` : HTTP Status Code 503: Service Unavailable. Retrying your request in some time might resolve the issue.
    /// - `TooManyRequestsException` : HTTP Status Code 429: Limit exceeded. Resource limit reached.
    /// - `UnauthorizedException` : HTTP Status Code 401: Unauthorized request. The provided credentials couldn't be validated.
    func describeWorkerConfiguration(input: DescribeWorkerConfigurationInput) async throws -> DescribeWorkerConfigurationOutput
    /// Performs the `ListConnectors` operation on the `KafkaConnect` service.
    ///
    /// Returns a list of all the connectors in this account and Region. The list is limited to connectors whose name starts with the specified prefix. The response also includes a description of each of the listed connectors.
    ///
    /// - Parameter ListConnectorsInput : [no documentation found]
    ///
    /// - Returns: `ListConnectorsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : HTTP Status Code 400: Bad request due to incorrect input. Correct your request and then retry it.
    /// - `ForbiddenException` : HTTP Status Code 403: Access forbidden. Correct your credentials and then retry your request.
    /// - `InternalServerErrorException` : HTTP Status Code 500: Unexpected internal server error. Retrying your request might resolve the issue.
    /// - `NotFoundException` : HTTP Status Code 404: Resource not found due to incorrect input. Correct your request and then retry it.
    /// - `ServiceUnavailableException` : HTTP Status Code 503: Service Unavailable. Retrying your request in some time might resolve the issue.
    /// - `TooManyRequestsException` : HTTP Status Code 429: Limit exceeded. Resource limit reached.
    /// - `UnauthorizedException` : HTTP Status Code 401: Unauthorized request. The provided credentials couldn't be validated.
    func listConnectors(input: ListConnectorsInput) async throws -> ListConnectorsOutput
    /// Performs the `ListCustomPlugins` operation on the `KafkaConnect` service.
    ///
    /// Returns a list of all of the custom plugins in this account and Region.
    ///
    /// - Parameter ListCustomPluginsInput : [no documentation found]
    ///
    /// - Returns: `ListCustomPluginsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : HTTP Status Code 400: Bad request due to incorrect input. Correct your request and then retry it.
    /// - `ForbiddenException` : HTTP Status Code 403: Access forbidden. Correct your credentials and then retry your request.
    /// - `InternalServerErrorException` : HTTP Status Code 500: Unexpected internal server error. Retrying your request might resolve the issue.
    /// - `NotFoundException` : HTTP Status Code 404: Resource not found due to incorrect input. Correct your request and then retry it.
    /// - `ServiceUnavailableException` : HTTP Status Code 503: Service Unavailable. Retrying your request in some time might resolve the issue.
    /// - `TooManyRequestsException` : HTTP Status Code 429: Limit exceeded. Resource limit reached.
    /// - `UnauthorizedException` : HTTP Status Code 401: Unauthorized request. The provided credentials couldn't be validated.
    func listCustomPlugins(input: ListCustomPluginsInput) async throws -> ListCustomPluginsOutput
    /// Performs the `ListWorkerConfigurations` operation on the `KafkaConnect` service.
    ///
    /// Returns a list of all of the worker configurations in this account and Region.
    ///
    /// - Parameter ListWorkerConfigurationsInput : [no documentation found]
    ///
    /// - Returns: `ListWorkerConfigurationsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : HTTP Status Code 400: Bad request due to incorrect input. Correct your request and then retry it.
    /// - `ForbiddenException` : HTTP Status Code 403: Access forbidden. Correct your credentials and then retry your request.
    /// - `InternalServerErrorException` : HTTP Status Code 500: Unexpected internal server error. Retrying your request might resolve the issue.
    /// - `NotFoundException` : HTTP Status Code 404: Resource not found due to incorrect input. Correct your request and then retry it.
    /// - `ServiceUnavailableException` : HTTP Status Code 503: Service Unavailable. Retrying your request in some time might resolve the issue.
    /// - `TooManyRequestsException` : HTTP Status Code 429: Limit exceeded. Resource limit reached.
    /// - `UnauthorizedException` : HTTP Status Code 401: Unauthorized request. The provided credentials couldn't be validated.
    func listWorkerConfigurations(input: ListWorkerConfigurationsInput) async throws -> ListWorkerConfigurationsOutput
    /// Performs the `UpdateConnector` operation on the `KafkaConnect` service.
    ///
    /// Updates the specified connector.
    ///
    /// - Parameter UpdateConnectorInput : [no documentation found]
    ///
    /// - Returns: `UpdateConnectorOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : HTTP Status Code 400: Bad request due to incorrect input. Correct your request and then retry it.
    /// - `ForbiddenException` : HTTP Status Code 403: Access forbidden. Correct your credentials and then retry your request.
    /// - `InternalServerErrorException` : HTTP Status Code 500: Unexpected internal server error. Retrying your request might resolve the issue.
    /// - `NotFoundException` : HTTP Status Code 404: Resource not found due to incorrect input. Correct your request and then retry it.
    /// - `ServiceUnavailableException` : HTTP Status Code 503: Service Unavailable. Retrying your request in some time might resolve the issue.
    /// - `TooManyRequestsException` : HTTP Status Code 429: Limit exceeded. Resource limit reached.
    /// - `UnauthorizedException` : HTTP Status Code 401: Unauthorized request. The provided credentials couldn't be validated.
    func updateConnector(input: UpdateConnectorInput) async throws -> UpdateConnectorOutput
}

public enum KafkaConnectClientTypes {}

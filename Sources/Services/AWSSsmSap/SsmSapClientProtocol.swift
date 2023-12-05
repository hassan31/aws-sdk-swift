// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// This API reference provides descriptions, syntax, and other details about each of the actions and data types for AWS Systems Manager for SAP. The topic for each action shows the API request parameters and responses.
public protocol SsmSapClientProtocol {
    /// Performs the `DeleteResourcePermission` operation on the `SsmSap` service.
    ///
    /// Removes permissions associated with the target database.
    ///
    /// - Parameter DeleteResourcePermissionInput : [no documentation found]
    ///
    /// - Returns: `DeleteResourcePermissionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func deleteResourcePermission(input: DeleteResourcePermissionInput) async throws -> DeleteResourcePermissionOutput
    /// Performs the `DeregisterApplication` operation on the `SsmSap` service.
    ///
    /// Deregister an SAP application with AWS Systems Manager for SAP. This action does not aﬀect the existing setup of your SAP workloads on Amazon EC2.
    ///
    /// - Parameter DeregisterApplicationInput : [no documentation found]
    ///
    /// - Returns: `DeregisterApplicationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `UnauthorizedException` : The request is not authorized.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func deregisterApplication(input: DeregisterApplicationInput) async throws -> DeregisterApplicationOutput
    /// Performs the `GetApplication` operation on the `SsmSap` service.
    ///
    /// Gets an application registered with AWS Systems Manager for SAP. It also returns the components of the application.
    ///
    /// - Parameter GetApplicationInput : [no documentation found]
    ///
    /// - Returns: `GetApplicationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getApplication(input: GetApplicationInput) async throws -> GetApplicationOutput
    /// Performs the `GetComponent` operation on the `SsmSap` service.
    ///
    /// Gets the component of an application registered with AWS Systems Manager for SAP.
    ///
    /// - Parameter GetComponentInput : [no documentation found]
    ///
    /// - Returns: `GetComponentOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `UnauthorizedException` : The request is not authorized.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getComponent(input: GetComponentInput) async throws -> GetComponentOutput
    /// Performs the `GetDatabase` operation on the `SsmSap` service.
    ///
    /// Gets the SAP HANA database of an application registered with AWS Systems Manager for SAP.
    ///
    /// - Parameter GetDatabaseInput : [no documentation found]
    ///
    /// - Returns: `GetDatabaseOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getDatabase(input: GetDatabaseInput) async throws -> GetDatabaseOutput
    /// Performs the `GetOperation` operation on the `SsmSap` service.
    ///
    /// Gets the details of an operation by specifying the operation ID.
    ///
    /// - Parameter GetOperationInput : [no documentation found]
    ///
    /// - Returns: `GetOperationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getOperation(input: GetOperationInput) async throws -> GetOperationOutput
    /// Performs the `GetResourcePermission` operation on the `SsmSap` service.
    ///
    /// Gets permissions associated with the target database.
    ///
    /// - Parameter GetResourcePermissionInput : [no documentation found]
    ///
    /// - Returns: `GetResourcePermissionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func getResourcePermission(input: GetResourcePermissionInput) async throws -> GetResourcePermissionOutput
    /// Performs the `ListApplications` operation on the `SsmSap` service.
    ///
    /// Lists all the applications registered with AWS Systems Manager for SAP.
    ///
    /// - Parameter ListApplicationsInput : [no documentation found]
    ///
    /// - Returns: `ListApplicationsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listApplications(input: ListApplicationsInput) async throws -> ListApplicationsOutput
    /// Performs the `ListComponents` operation on the `SsmSap` service.
    ///
    /// Lists all the components registered with AWS Systems Manager for SAP.
    ///
    /// - Parameter ListComponentsInput : [no documentation found]
    ///
    /// - Returns: `ListComponentsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `UnauthorizedException` : The request is not authorized.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listComponents(input: ListComponentsInput) async throws -> ListComponentsOutput
    /// Performs the `ListDatabases` operation on the `SsmSap` service.
    ///
    /// Lists the SAP HANA databases of an application registered with AWS Systems Manager for SAP.
    ///
    /// - Parameter ListDatabasesInput : [no documentation found]
    ///
    /// - Returns: `ListDatabasesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listDatabases(input: ListDatabasesInput) async throws -> ListDatabasesOutput
    /// Performs the `ListOperations` operation on the `SsmSap` service.
    ///
    /// Lists the operations performed by AWS Systems Manager for SAP.
    ///
    /// - Parameter ListOperationsInput : [no documentation found]
    ///
    /// - Returns: `ListOperationsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listOperations(input: ListOperationsInput) async throws -> ListOperationsOutput
    /// Performs the `ListTagsForResource` operation on the `SsmSap` service.
    ///
    /// Lists all tags on an SAP HANA application and/or database registered with AWS Systems Manager for SAP.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : A conflict has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Performs the `PutResourcePermission` operation on the `SsmSap` service.
    ///
    /// Adds permissions to the target database.
    ///
    /// - Parameter PutResourcePermissionInput : [no documentation found]
    ///
    /// - Returns: `PutResourcePermissionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func putResourcePermission(input: PutResourcePermissionInput) async throws -> PutResourcePermissionOutput
    /// Performs the `RegisterApplication` operation on the `SsmSap` service.
    ///
    /// Register an SAP application with AWS Systems Manager for SAP. You must meet the following requirements before registering. The SAP application you want to register with AWS Systems Manager for SAP is running on Amazon EC2. AWS Systems Manager Agent must be setup on an Amazon EC2 instance along with the required IAM permissions. Amazon EC2 instance(s) must have access to the secrets created in AWS Secrets Manager to manage SAP applications and components.
    ///
    /// - Parameter RegisterApplicationInput : [no documentation found]
    ///
    /// - Returns: `RegisterApplicationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : A conflict has occurred.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func registerApplication(input: RegisterApplicationInput) async throws -> RegisterApplicationOutput
    /// Performs the `StartApplicationRefresh` operation on the `SsmSap` service.
    ///
    /// Refreshes a registered application.
    ///
    /// - Parameter StartApplicationRefreshInput : [no documentation found]
    ///
    /// - Returns: `StartApplicationRefreshOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : A conflict has occurred.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `UnauthorizedException` : The request is not authorized.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func startApplicationRefresh(input: StartApplicationRefreshInput) async throws -> StartApplicationRefreshOutput
    /// Performs the `TagResource` operation on the `SsmSap` service.
    ///
    /// Creates tag for a resource by specifying the ARN.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : A conflict has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Performs the `UntagResource` operation on the `SsmSap` service.
    ///
    /// Delete the tags for a resource.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : A conflict has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Performs the `UpdateApplicationSettings` operation on the `SsmSap` service.
    ///
    /// Updates the settings of an application registered with AWS Systems Manager for SAP.
    ///
    /// - Parameter UpdateApplicationSettingsInput : [no documentation found]
    ///
    /// - Returns: `UpdateApplicationSettingsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : A conflict has occurred.
    /// - `InternalServerException` : An internal error has occurred.
    /// - `ResourceNotFoundException` : The resource is not available.
    /// - `UnauthorizedException` : The request is not authorized.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an AWS service.
    func updateApplicationSettings(input: UpdateApplicationSettingsInput) async throws -> UpdateApplicationSettingsOutput
}

public enum SsmSapClientTypes {}

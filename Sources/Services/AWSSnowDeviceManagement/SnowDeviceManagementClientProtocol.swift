// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Web Services Snow Device Management documentation.
public protocol SnowDeviceManagementClientProtocol {
    /// Performs the `CancelTask` operation on the `SnowDeviceManagement` service.
    ///
    /// Sends a cancel request for a specified task. You can cancel a task only if it's still in a QUEUED state. Tasks that are already running can't be cancelled. A task might still run if it's processed from the queue before the CancelTask operation changes the task's state.
    ///
    /// - Parameter CancelTaskInput : [no documentation found]
    ///
    /// - Returns: `CancelTaskOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that doesn't exist.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func cancelTask(input: CancelTaskInput) async throws -> CancelTaskOutput
    /// Performs the `CreateTask` operation on the `SnowDeviceManagement` service.
    ///
    /// Instructs one or more devices to start a task, such as unlocking or rebooting.
    ///
    /// - Parameter CreateTaskInput : [no documentation found]
    ///
    /// - Returns: `CreateTaskOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that doesn't exist.
    /// - `ServiceQuotaExceededException` : The request would cause a service quota to be exceeded.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func createTask(input: CreateTaskInput) async throws -> CreateTaskOutput
    /// Performs the `DescribeDevice` operation on the `SnowDeviceManagement` service.
    ///
    /// Checks device-specific information, such as the device type, software version, IP addresses, and lock status.
    ///
    /// - Parameter DescribeDeviceInput : [no documentation found]
    ///
    /// - Returns: `DescribeDeviceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that doesn't exist.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func describeDevice(input: DescribeDeviceInput) async throws -> DescribeDeviceOutput
    /// Performs the `DescribeDeviceEc2Instances` operation on the `SnowDeviceManagement` service.
    ///
    /// Checks the current state of the Amazon EC2 instances. The output is similar to describeDevice, but the results are sourced from the device cache in the Amazon Web Services Cloud and include a subset of the available fields.
    ///
    /// - Parameter DescribeDeviceEc2InstancesInput : [no documentation found]
    ///
    /// - Returns: `DescribeDeviceEc2InstancesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that doesn't exist.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func describeDeviceEc2Instances(input: DescribeDeviceEc2InstancesInput) async throws -> DescribeDeviceEc2InstancesOutput
    /// Performs the `DescribeExecution` operation on the `SnowDeviceManagement` service.
    ///
    /// Checks the status of a remote task running on one or more target devices.
    ///
    /// - Parameter DescribeExecutionInput : [no documentation found]
    ///
    /// - Returns: `DescribeExecutionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that doesn't exist.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func describeExecution(input: DescribeExecutionInput) async throws -> DescribeExecutionOutput
    /// Performs the `DescribeTask` operation on the `SnowDeviceManagement` service.
    ///
    /// Checks the metadata for a given task on a device.
    ///
    /// - Parameter DescribeTaskInput : [no documentation found]
    ///
    /// - Returns: `DescribeTaskOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that doesn't exist.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func describeTask(input: DescribeTaskInput) async throws -> DescribeTaskOutput
    /// Performs the `ListDeviceResources` operation on the `SnowDeviceManagement` service.
    ///
    /// Returns a list of the Amazon Web Services resources available for a device. Currently, Amazon EC2 instances are the only supported resource type.
    ///
    /// - Parameter ListDeviceResourcesInput : [no documentation found]
    ///
    /// - Returns: `ListDeviceResourcesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that doesn't exist.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func listDeviceResources(input: ListDeviceResourcesInput) async throws -> ListDeviceResourcesOutput
    /// Performs the `ListDevices` operation on the `SnowDeviceManagement` service.
    ///
    /// Returns a list of all devices on your Amazon Web Services account that have Amazon Web Services Snow Device Management enabled in the Amazon Web Services Region where the command is run.
    ///
    /// - Parameter ListDevicesInput : [no documentation found]
    ///
    /// - Returns: `ListDevicesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func listDevices(input: ListDevicesInput) async throws -> ListDevicesOutput
    /// Performs the `ListExecutions` operation on the `SnowDeviceManagement` service.
    ///
    /// Returns the status of tasks for one or more target devices.
    ///
    /// - Parameter ListExecutionsInput : [no documentation found]
    ///
    /// - Returns: `ListExecutionsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that doesn't exist.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func listExecutions(input: ListExecutionsInput) async throws -> ListExecutionsOutput
    /// Performs the `ListTagsForResource` operation on the `SnowDeviceManagement` service.
    ///
    /// Returns a list of tags for a managed device or task.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that doesn't exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Performs the `ListTasks` operation on the `SnowDeviceManagement` service.
    ///
    /// Returns a list of tasks that can be filtered by state.
    ///
    /// - Parameter ListTasksInput : [no documentation found]
    ///
    /// - Returns: `ListTasksOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You don't have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func listTasks(input: ListTasksInput) async throws -> ListTasksOutput
    /// Performs the `TagResource` operation on the `SnowDeviceManagement` service.
    ///
    /// Adds or replaces tags on a device or task.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that doesn't exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Performs the `UntagResource` operation on the `SnowDeviceManagement` service.
    ///
    /// Removes a tag from a device or task.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that doesn't exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
}

public enum SnowDeviceManagementClientTypes {}

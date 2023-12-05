// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS Panorama Overview This is the AWS Panorama API Reference. For an introduction to the service, see [What is AWS Panorama?](https://docs.aws.amazon.com/panorama/latest/dev/panorama-welcome.html) in the AWS Panorama Developer Guide.
public protocol PanoramaClientProtocol {
    /// Performs the `CreateApplicationInstance` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Creates an application instance and deploys it to a device.
    ///
    /// - Parameter CreateApplicationInstanceInput : [no documentation found]
    ///
    /// - Returns: `CreateApplicationInstanceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ServiceQuotaExceededException` : The request would cause a limit to be exceeded.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func createApplicationInstance(input: CreateApplicationInstanceInput) async throws -> CreateApplicationInstanceOutput
    /// Performs the `CreateJobForDevices` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Creates a job to run on a device. A job can update a device's software or reboot it.
    ///
    /// - Parameter CreateJobForDevicesInput : [no documentation found]
    ///
    /// - Returns: `CreateJobForDevicesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func createJobForDevices(input: CreateJobForDevicesInput) async throws -> CreateJobForDevicesOutput
    /// Performs the `CreateNodeFromTemplateJob` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Creates a camera stream node.
    ///
    /// - Parameter CreateNodeFromTemplateJobInput : [no documentation found]
    ///
    /// - Returns: `CreateNodeFromTemplateJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func createNodeFromTemplateJob(input: CreateNodeFromTemplateJobInput) async throws -> CreateNodeFromTemplateJobOutput
    /// Performs the `CreatePackage` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Creates a package and storage location in an Amazon S3 access point.
    ///
    /// - Parameter CreatePackageInput : [no documentation found]
    ///
    /// - Returns: `CreatePackageOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func createPackage(input: CreatePackageInput) async throws -> CreatePackageOutput
    /// Performs the `CreatePackageImportJob` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Imports a node package.
    ///
    /// - Parameter CreatePackageImportJobInput : [no documentation found]
    ///
    /// - Returns: `CreatePackageImportJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func createPackageImportJob(input: CreatePackageImportJobInput) async throws -> CreatePackageImportJobOutput
    /// Performs the `DeleteDevice` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Deletes a device.
    ///
    /// - Parameter DeleteDeviceInput : [no documentation found]
    ///
    /// - Returns: `DeleteDeviceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func deleteDevice(input: DeleteDeviceInput) async throws -> DeleteDeviceOutput
    /// Performs the `DeletePackage` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Deletes a package. To delete a package, you need permission to call s3:DeleteObject in addition to permissions for the AWS Panorama API.
    ///
    /// - Parameter DeletePackageInput : [no documentation found]
    ///
    /// - Returns: `DeletePackageOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func deletePackage(input: DeletePackageInput) async throws -> DeletePackageOutput
    /// Performs the `DeregisterPackageVersion` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Deregisters a package version.
    ///
    /// - Parameter DeregisterPackageVersionInput : [no documentation found]
    ///
    /// - Returns: `DeregisterPackageVersionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func deregisterPackageVersion(input: DeregisterPackageVersionInput) async throws -> DeregisterPackageVersionOutput
    /// Performs the `DescribeApplicationInstance` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Returns information about an application instance on a device.
    ///
    /// - Parameter DescribeApplicationInstanceInput : [no documentation found]
    ///
    /// - Returns: `DescribeApplicationInstanceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func describeApplicationInstance(input: DescribeApplicationInstanceInput) async throws -> DescribeApplicationInstanceOutput
    /// Performs the `DescribeApplicationInstanceDetails` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Returns information about an application instance's configuration manifest.
    ///
    /// - Parameter DescribeApplicationInstanceDetailsInput : [no documentation found]
    ///
    /// - Returns: `DescribeApplicationInstanceDetailsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func describeApplicationInstanceDetails(input: DescribeApplicationInstanceDetailsInput) async throws -> DescribeApplicationInstanceDetailsOutput
    /// Performs the `DescribeDevice` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Returns information about a device.
    ///
    /// - Parameter DescribeDeviceInput : [no documentation found]
    ///
    /// - Returns: `DescribeDeviceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func describeDevice(input: DescribeDeviceInput) async throws -> DescribeDeviceOutput
    /// Performs the `DescribeDeviceJob` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Returns information about a device job.
    ///
    /// - Parameter DescribeDeviceJobInput : [no documentation found]
    ///
    /// - Returns: `DescribeDeviceJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func describeDeviceJob(input: DescribeDeviceJobInput) async throws -> DescribeDeviceJobOutput
    /// Performs the `DescribeNode` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Returns information about a node.
    ///
    /// - Parameter DescribeNodeInput : [no documentation found]
    ///
    /// - Returns: `DescribeNodeOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func describeNode(input: DescribeNodeInput) async throws -> DescribeNodeOutput
    /// Performs the `DescribeNodeFromTemplateJob` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Returns information about a job to create a camera stream node.
    ///
    /// - Parameter DescribeNodeFromTemplateJobInput : [no documentation found]
    ///
    /// - Returns: `DescribeNodeFromTemplateJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func describeNodeFromTemplateJob(input: DescribeNodeFromTemplateJobInput) async throws -> DescribeNodeFromTemplateJobOutput
    /// Performs the `DescribePackage` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Returns information about a package.
    ///
    /// - Parameter DescribePackageInput : [no documentation found]
    ///
    /// - Returns: `DescribePackageOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func describePackage(input: DescribePackageInput) async throws -> DescribePackageOutput
    /// Performs the `DescribePackageImportJob` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Returns information about a package import job.
    ///
    /// - Parameter DescribePackageImportJobInput : [no documentation found]
    ///
    /// - Returns: `DescribePackageImportJobOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func describePackageImportJob(input: DescribePackageImportJobInput) async throws -> DescribePackageImportJobOutput
    /// Performs the `DescribePackageVersion` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Returns information about a package version.
    ///
    /// - Parameter DescribePackageVersionInput : [no documentation found]
    ///
    /// - Returns: `DescribePackageVersionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func describePackageVersion(input: DescribePackageVersionInput) async throws -> DescribePackageVersionOutput
    /// Performs the `ListApplicationInstanceDependencies` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Returns a list of application instance dependencies.
    ///
    /// - Parameter ListApplicationInstanceDependenciesInput : [no documentation found]
    ///
    /// - Returns: `ListApplicationInstanceDependenciesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `InternalServerException` : An internal error occurred.
    func listApplicationInstanceDependencies(input: ListApplicationInstanceDependenciesInput) async throws -> ListApplicationInstanceDependenciesOutput
    /// Performs the `ListApplicationInstanceNodeInstances` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Returns a list of application node instances.
    ///
    /// - Parameter ListApplicationInstanceNodeInstancesInput : [no documentation found]
    ///
    /// - Returns: `ListApplicationInstanceNodeInstancesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `InternalServerException` : An internal error occurred.
    func listApplicationInstanceNodeInstances(input: ListApplicationInstanceNodeInstancesInput) async throws -> ListApplicationInstanceNodeInstancesOutput
    /// Performs the `ListApplicationInstances` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Returns a list of application instances.
    ///
    /// - Parameter ListApplicationInstancesInput : [no documentation found]
    ///
    /// - Returns: `ListApplicationInstancesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `InternalServerException` : An internal error occurred.
    func listApplicationInstances(input: ListApplicationInstancesInput) async throws -> ListApplicationInstancesOutput
    /// Performs the `ListDevices` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Returns a list of devices.
    ///
    /// - Parameter ListDevicesInput : [no documentation found]
    ///
    /// - Returns: `ListDevicesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func listDevices(input: ListDevicesInput) async throws -> ListDevicesOutput
    /// Performs the `ListDevicesJobs` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Returns a list of jobs.
    ///
    /// - Parameter ListDevicesJobsInput : [no documentation found]
    ///
    /// - Returns: `ListDevicesJobsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func listDevicesJobs(input: ListDevicesJobsInput) async throws -> ListDevicesJobsOutput
    /// Performs the `ListNodeFromTemplateJobs` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Returns a list of camera stream node jobs.
    ///
    /// - Parameter ListNodeFromTemplateJobsInput : [no documentation found]
    ///
    /// - Returns: `ListNodeFromTemplateJobsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func listNodeFromTemplateJobs(input: ListNodeFromTemplateJobsInput) async throws -> ListNodeFromTemplateJobsOutput
    /// Performs the `ListNodes` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Returns a list of nodes.
    ///
    /// - Parameter ListNodesInput : [no documentation found]
    ///
    /// - Returns: `ListNodesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func listNodes(input: ListNodesInput) async throws -> ListNodesOutput
    /// Performs the `ListPackageImportJobs` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Returns a list of package import jobs.
    ///
    /// - Parameter ListPackageImportJobsInput : [no documentation found]
    ///
    /// - Returns: `ListPackageImportJobsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func listPackageImportJobs(input: ListPackageImportJobsInput) async throws -> ListPackageImportJobsOutput
    /// Performs the `ListPackages` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Returns a list of packages.
    ///
    /// - Parameter ListPackagesInput : [no documentation found]
    ///
    /// - Returns: `ListPackagesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func listPackages(input: ListPackagesInput) async throws -> ListPackagesOutput
    /// Performs the `ListTagsForResource` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Returns a list of tags for a resource.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Performs the `ProvisionDevice` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Creates a device and returns a configuration archive. The configuration archive is a ZIP file that contains a provisioning certificate that is valid for 5 minutes. Name the configuration archive certificates-omni_device-name.zip and transfer it to the device within 5 minutes. Use the included USB storage device and connect it to the USB 3.0 port next to the HDMI output.
    ///
    /// - Parameter ProvisionDeviceInput : [no documentation found]
    ///
    /// - Returns: `ProvisionDeviceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ServiceQuotaExceededException` : The request would cause a limit to be exceeded.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func provisionDevice(input: ProvisionDeviceInput) async throws -> ProvisionDeviceOutput
    /// Performs the `RegisterPackageVersion` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Registers a package version.
    ///
    /// - Parameter RegisterPackageVersionInput : [no documentation found]
    ///
    /// - Returns: `RegisterPackageVersionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func registerPackageVersion(input: RegisterPackageVersionInput) async throws -> RegisterPackageVersionOutput
    /// Performs the `RemoveApplicationInstance` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Removes an application instance.
    ///
    /// - Parameter RemoveApplicationInstanceInput : [no documentation found]
    ///
    /// - Returns: `RemoveApplicationInstanceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func removeApplicationInstance(input: RemoveApplicationInstanceInput) async throws -> RemoveApplicationInstanceOutput
    /// Performs the `SignalApplicationInstanceNodeInstances` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Signal camera nodes to stop or resume.
    ///
    /// - Parameter SignalApplicationInstanceNodeInstancesInput : [no documentation found]
    ///
    /// - Returns: `SignalApplicationInstanceNodeInstancesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ServiceQuotaExceededException` : The request would cause a limit to be exceeded.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func signalApplicationInstanceNodeInstances(input: SignalApplicationInstanceNodeInstancesInput) async throws -> SignalApplicationInstanceNodeInstancesOutput
    /// Performs the `TagResource` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Tags a resource.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Performs the `UntagResource` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Removes tags from a resource.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Performs the `UpdateDeviceMetadata` operation on the `OmniCloudServiceLambda` service.
    ///
    /// Updates a device's metadata.
    ///
    /// - Parameter UpdateDeviceMetadataInput : [no documentation found]
    ///
    /// - Returns: `UpdateDeviceMetadataOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The requestor does not have permission to access the target action or resource.
    /// - `ConflictException` : The target resource is in use.
    /// - `InternalServerException` : An internal error occurred.
    /// - `ResourceNotFoundException` : The target resource was not found.
    /// - `ValidationException` : The request contains an invalid parameter value.
    func updateDeviceMetadata(input: UpdateDeviceMetadataInput) async throws -> UpdateDeviceMetadataOutput
}

public enum PanoramaClientTypes {}

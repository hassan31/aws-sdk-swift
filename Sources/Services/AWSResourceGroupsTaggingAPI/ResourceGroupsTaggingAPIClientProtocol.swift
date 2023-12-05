// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Resource Groups Tagging API
public protocol ResourceGroupsTaggingAPIClientProtocol {
    /// Performs the `DescribeReportCreation` operation on the `ResourceGroupsTaggingAPI_20170126` service.
    ///
    /// Describes the status of the StartReportCreation operation. You can call this operation only from the organization's management account and from the us-east-1 Region.
    ///
    /// - Parameter DescribeReportCreationInput : [no documentation found]
    ///
    /// - Returns: `DescribeReportCreationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConstraintViolationException` : The request was denied because performing this operation violates a constraint. Some of the reasons in the following list might not apply to this specific operation.
    ///
    /// * You must meet the prerequisites for using tag policies. For information, see [Prerequisites and Permissions for Using Tag Policies](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies-prereqs.html) in the Organizations User Guide.
    ///
    /// * You must enable the tag policies service principal (tagpolicies.tag.amazonaws.com) to integrate with Organizations For information, see [EnableAWSServiceAccess](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnableAWSServiceAccess.html).
    ///
    /// * You must have a tag policy attached to the organization root, an OU, or an account.
    /// - `InternalServiceException` : The request processing failed because of an unknown error, exception, or failure. You can retry the request.
    /// - `InvalidParameterException` : This error indicates one of the following:
    ///
    /// * A parameter is missing.
    ///
    /// * A malformed string was supplied for the request parameter.
    ///
    /// * An out-of-range value was supplied for the request parameter.
    ///
    /// * The target ID is invalid, unsupported, or doesn't exist.
    ///
    /// * You can't access the Amazon S3 bucket for report storage. For more information, see [Additional Requirements for Organization-wide Tag Compliance Reports](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies-prereqs.html#bucket-policies-org-report) in the Organizations User Guide.
    /// - `ThrottledException` : The request was denied to limit the frequency of submitted requests.
    func describeReportCreation(input: DescribeReportCreationInput) async throws -> DescribeReportCreationOutput
    /// Performs the `GetComplianceSummary` operation on the `ResourceGroupsTaggingAPI_20170126` service.
    ///
    /// Returns a table that shows counts of resources that are noncompliant with their tag policies. For more information on tag policies, see [Tag Policies](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html) in the Organizations User Guide. You can call this operation only from the organization's management account and from the us-east-1 Region. This operation supports pagination, where the response can be sent in multiple pages. You should check the PaginationToken response parameter to determine if there are additional results available to return. Repeat the query, passing the PaginationToken response parameter value as an input to the next request until you recieve a null value. A null value for PaginationToken indicates that there are no more results waiting to be returned.
    ///
    /// - Parameter GetComplianceSummaryInput : [no documentation found]
    ///
    /// - Returns: `GetComplianceSummaryOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConstraintViolationException` : The request was denied because performing this operation violates a constraint. Some of the reasons in the following list might not apply to this specific operation.
    ///
    /// * You must meet the prerequisites for using tag policies. For information, see [Prerequisites and Permissions for Using Tag Policies](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies-prereqs.html) in the Organizations User Guide.
    ///
    /// * You must enable the tag policies service principal (tagpolicies.tag.amazonaws.com) to integrate with Organizations For information, see [EnableAWSServiceAccess](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnableAWSServiceAccess.html).
    ///
    /// * You must have a tag policy attached to the organization root, an OU, or an account.
    /// - `InternalServiceException` : The request processing failed because of an unknown error, exception, or failure. You can retry the request.
    /// - `InvalidParameterException` : This error indicates one of the following:
    ///
    /// * A parameter is missing.
    ///
    /// * A malformed string was supplied for the request parameter.
    ///
    /// * An out-of-range value was supplied for the request parameter.
    ///
    /// * The target ID is invalid, unsupported, or doesn't exist.
    ///
    /// * You can't access the Amazon S3 bucket for report storage. For more information, see [Additional Requirements for Organization-wide Tag Compliance Reports](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies-prereqs.html#bucket-policies-org-report) in the Organizations User Guide.
    /// - `ThrottledException` : The request was denied to limit the frequency of submitted requests.
    func getComplianceSummary(input: GetComplianceSummaryInput) async throws -> GetComplianceSummaryOutput
    /// Performs the `GetResources` operation on the `ResourceGroupsTaggingAPI_20170126` service.
    ///
    /// Returns all the tagged or previously tagged resources that are located in the specified Amazon Web Services Region for the account. Depending on what information you want returned, you can also specify the following:
    ///
    /// * Filters that specify what tags and resource types you want returned. The response includes all tags that are associated with the requested resources.
    ///
    /// * Information about compliance with the account's effective tag policy. For more information on tag policies, see [Tag Policies](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html) in the Organizations User Guide.
    ///
    ///
    /// This operation supports pagination, where the response can be sent in multiple pages. You should check the PaginationToken response parameter to determine if there are additional results available to return. Repeat the query, passing the PaginationToken response parameter value as an input to the next request until you recieve a null value. A null value for PaginationToken indicates that there are no more results waiting to be returned.
    ///
    /// - Parameter GetResourcesInput : [no documentation found]
    ///
    /// - Returns: `GetResourcesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServiceException` : The request processing failed because of an unknown error, exception, or failure. You can retry the request.
    /// - `InvalidParameterException` : This error indicates one of the following:
    ///
    /// * A parameter is missing.
    ///
    /// * A malformed string was supplied for the request parameter.
    ///
    /// * An out-of-range value was supplied for the request parameter.
    ///
    /// * The target ID is invalid, unsupported, or doesn't exist.
    ///
    /// * You can't access the Amazon S3 bucket for report storage. For more information, see [Additional Requirements for Organization-wide Tag Compliance Reports](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies-prereqs.html#bucket-policies-org-report) in the Organizations User Guide.
    /// - `PaginationTokenExpiredException` : A PaginationToken is valid for a maximum of 15 minutes. Your request was denied because the specified PaginationToken has expired.
    /// - `ThrottledException` : The request was denied to limit the frequency of submitted requests.
    func getResources(input: GetResourcesInput) async throws -> GetResourcesOutput
    /// Performs the `GetTagKeys` operation on the `ResourceGroupsTaggingAPI_20170126` service.
    ///
    /// Returns all tag keys currently in use in the specified Amazon Web Services Region for the calling account. This operation supports pagination, where the response can be sent in multiple pages. You should check the PaginationToken response parameter to determine if there are additional results available to return. Repeat the query, passing the PaginationToken response parameter value as an input to the next request until you recieve a null value. A null value for PaginationToken indicates that there are no more results waiting to be returned.
    ///
    /// - Parameter GetTagKeysInput : [no documentation found]
    ///
    /// - Returns: `GetTagKeysOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServiceException` : The request processing failed because of an unknown error, exception, or failure. You can retry the request.
    /// - `InvalidParameterException` : This error indicates one of the following:
    ///
    /// * A parameter is missing.
    ///
    /// * A malformed string was supplied for the request parameter.
    ///
    /// * An out-of-range value was supplied for the request parameter.
    ///
    /// * The target ID is invalid, unsupported, or doesn't exist.
    ///
    /// * You can't access the Amazon S3 bucket for report storage. For more information, see [Additional Requirements for Organization-wide Tag Compliance Reports](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies-prereqs.html#bucket-policies-org-report) in the Organizations User Guide.
    /// - `PaginationTokenExpiredException` : A PaginationToken is valid for a maximum of 15 minutes. Your request was denied because the specified PaginationToken has expired.
    /// - `ThrottledException` : The request was denied to limit the frequency of submitted requests.
    func getTagKeys(input: GetTagKeysInput) async throws -> GetTagKeysOutput
    /// Performs the `GetTagValues` operation on the `ResourceGroupsTaggingAPI_20170126` service.
    ///
    /// Returns all tag values for the specified key that are used in the specified Amazon Web Services Region for the calling account. This operation supports pagination, where the response can be sent in multiple pages. You should check the PaginationToken response parameter to determine if there are additional results available to return. Repeat the query, passing the PaginationToken response parameter value as an input to the next request until you recieve a null value. A null value for PaginationToken indicates that there are no more results waiting to be returned.
    ///
    /// - Parameter GetTagValuesInput : [no documentation found]
    ///
    /// - Returns: `GetTagValuesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServiceException` : The request processing failed because of an unknown error, exception, or failure. You can retry the request.
    /// - `InvalidParameterException` : This error indicates one of the following:
    ///
    /// * A parameter is missing.
    ///
    /// * A malformed string was supplied for the request parameter.
    ///
    /// * An out-of-range value was supplied for the request parameter.
    ///
    /// * The target ID is invalid, unsupported, or doesn't exist.
    ///
    /// * You can't access the Amazon S3 bucket for report storage. For more information, see [Additional Requirements for Organization-wide Tag Compliance Reports](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies-prereqs.html#bucket-policies-org-report) in the Organizations User Guide.
    /// - `PaginationTokenExpiredException` : A PaginationToken is valid for a maximum of 15 minutes. Your request was denied because the specified PaginationToken has expired.
    /// - `ThrottledException` : The request was denied to limit the frequency of submitted requests.
    func getTagValues(input: GetTagValuesInput) async throws -> GetTagValuesOutput
    /// Performs the `StartReportCreation` operation on the `ResourceGroupsTaggingAPI_20170126` service.
    ///
    /// Generates a report that lists all tagged resources in the accounts across your organization and tells whether each resource is compliant with the effective tag policy. Compliance data is refreshed daily. The report is generated asynchronously. The generated report is saved to the following location: s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv You can call this operation only from the organization's management account and from the us-east-1 Region.
    ///
    /// - Parameter StartReportCreationInput : [no documentation found]
    ///
    /// - Returns: `StartReportCreationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConcurrentModificationException` : The target of the operation is currently being modified by a different request. Try again later.
    /// - `ConstraintViolationException` : The request was denied because performing this operation violates a constraint. Some of the reasons in the following list might not apply to this specific operation.
    ///
    /// * You must meet the prerequisites for using tag policies. For information, see [Prerequisites and Permissions for Using Tag Policies](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies-prereqs.html) in the Organizations User Guide.
    ///
    /// * You must enable the tag policies service principal (tagpolicies.tag.amazonaws.com) to integrate with Organizations For information, see [EnableAWSServiceAccess](https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnableAWSServiceAccess.html).
    ///
    /// * You must have a tag policy attached to the organization root, an OU, or an account.
    /// - `InternalServiceException` : The request processing failed because of an unknown error, exception, or failure. You can retry the request.
    /// - `InvalidParameterException` : This error indicates one of the following:
    ///
    /// * A parameter is missing.
    ///
    /// * A malformed string was supplied for the request parameter.
    ///
    /// * An out-of-range value was supplied for the request parameter.
    ///
    /// * The target ID is invalid, unsupported, or doesn't exist.
    ///
    /// * You can't access the Amazon S3 bucket for report storage. For more information, see [Additional Requirements for Organization-wide Tag Compliance Reports](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies-prereqs.html#bucket-policies-org-report) in the Organizations User Guide.
    /// - `ThrottledException` : The request was denied to limit the frequency of submitted requests.
    func startReportCreation(input: StartReportCreationInput) async throws -> StartReportCreationOutput
    /// Performs the `TagResources` operation on the `ResourceGroupsTaggingAPI_20170126` service.
    ///
    /// Applies one or more tags to the specified resources. Note the following:
    ///
    /// * Not all resources can have tags. For a list of services with resources that support tagging using this operation, see [Services that support the Resource Groups Tagging API](https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html). If the resource doesn't yet support this operation, the resource's service might support tagging using its own API operations. For more information, refer to the documentation for that service.
    ///
    /// * Each resource can have up to 50 tags. For other limits, see [Tag Naming and Usage Conventions](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions) in the Amazon Web Services General Reference.
    ///
    /// * You can only tag resources that are located in the specified Amazon Web Services Region for the Amazon Web Services account.
    ///
    /// * To add tags to a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for adding tags. For more information, see the documentation for each service.
    ///
    ///
    /// Do not store personally identifiable information (PII) or other confidential or sensitive information in tags. We use tags to provide you with billing and administration services. Tags are not intended to be used for private or sensitive data. Minimum permissions In addition to the tag:TagResources permission required by this operation, you must also have the tagging permission defined by the service that created the resource. For example, to tag an Amazon EC2 instance using the TagResources operation, you must have both of the following permissions:
    ///
    /// * tag:TagResource
    ///
    /// * ec2:CreateTags
    ///
    /// - Parameter TagResourcesInput : [no documentation found]
    ///
    /// - Returns: `TagResourcesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServiceException` : The request processing failed because of an unknown error, exception, or failure. You can retry the request.
    /// - `InvalidParameterException` : This error indicates one of the following:
    ///
    /// * A parameter is missing.
    ///
    /// * A malformed string was supplied for the request parameter.
    ///
    /// * An out-of-range value was supplied for the request parameter.
    ///
    /// * The target ID is invalid, unsupported, or doesn't exist.
    ///
    /// * You can't access the Amazon S3 bucket for report storage. For more information, see [Additional Requirements for Organization-wide Tag Compliance Reports](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies-prereqs.html#bucket-policies-org-report) in the Organizations User Guide.
    /// - `ThrottledException` : The request was denied to limit the frequency of submitted requests.
    func tagResources(input: TagResourcesInput) async throws -> TagResourcesOutput
    /// Performs the `UntagResources` operation on the `ResourceGroupsTaggingAPI_20170126` service.
    ///
    /// Removes the specified tags from the specified resources. When you specify a tag key, the action removes both that key and its associated value. The operation succeeds even if you attempt to remove tags from a resource that were already removed. Note the following:
    ///
    /// * To remove tags from a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for removing tags. For more information, see the documentation for the service whose resource you want to untag.
    ///
    /// * You can only tag resources that are located in the specified Amazon Web Services Region for the calling Amazon Web Services account.
    ///
    ///
    /// Minimum permissions In addition to the tag:UntagResources permission required by this operation, you must also have the remove tags permission defined by the service that created the resource. For example, to remove the tags from an Amazon EC2 instance using the UntagResources operation, you must have both of the following permissions:
    ///
    /// * tag:UntagResource
    ///
    /// * ec2:DeleteTags
    ///
    /// - Parameter UntagResourcesInput : [no documentation found]
    ///
    /// - Returns: `UntagResourcesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServiceException` : The request processing failed because of an unknown error, exception, or failure. You can retry the request.
    /// - `InvalidParameterException` : This error indicates one of the following:
    ///
    /// * A parameter is missing.
    ///
    /// * A malformed string was supplied for the request parameter.
    ///
    /// * An out-of-range value was supplied for the request parameter.
    ///
    /// * The target ID is invalid, unsupported, or doesn't exist.
    ///
    /// * You can't access the Amazon S3 bucket for report storage. For more information, see [Additional Requirements for Organization-wide Tag Compliance Reports](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies-prereqs.html#bucket-policies-org-report) in the Organizations User Guide.
    /// - `ThrottledException` : The request was denied to limit the frequency of submitted requests.
    func untagResources(input: UntagResourcesInput) async throws -> UntagResourcesOutput
}

public enum ResourceGroupsTaggingAPIClientTypes {}

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// You can use the Amazon Web Services Cost and Usage Report API to programmatically create, query, and delete Amazon Web Services Cost and Usage Report definitions. Amazon Web Services Cost and Usage Report track the monthly Amazon Web Services costs and usage associated with your Amazon Web Services account. The report contains line items for each unique combination of Amazon Web Services product, usage type, and operation that your Amazon Web Services account uses. You can configure the Amazon Web Services Cost and Usage Report to show only the data that you want, using the Amazon Web Services Cost and Usage Report API. Service Endpoint The Amazon Web Services Cost and Usage Report API provides the following endpoint:
///
/// * cur.us-east-1.amazonaws.com
public protocol CostandUsageReportClientProtocol {
    /// Performs the `DeleteReportDefinition` operation on the `AWSOrigamiServiceGatewayService` service.
    ///
    /// Deletes the specified report. Any tags associated with the report are also deleted.
    ///
    /// - Parameter DeleteReportDefinitionInput : Deletes the specified report.
    ///
    /// - Returns: `DeleteReportDefinitionOutput` : If the action is successful, the service sends back an HTTP 200 response.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func deleteReportDefinition(input: DeleteReportDefinitionInput) async throws -> DeleteReportDefinitionOutput
    /// Performs the `DescribeReportDefinitions` operation on the `AWSOrigamiServiceGatewayService` service.
    ///
    /// Lists the Amazon Web Services Cost and Usage Report available to this account.
    ///
    /// - Parameter DescribeReportDefinitionsInput : Requests a Amazon Web Services Cost and Usage Report list owned by the account.
    ///
    /// - Returns: `DescribeReportDefinitionsOutput` : If the action is successful, the service sends back an HTTP 200 response.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    func describeReportDefinitions(input: DescribeReportDefinitionsInput) async throws -> DescribeReportDefinitionsOutput
    /// Performs the `ListTagsForResource` operation on the `AWSOrigamiServiceGatewayService` service.
    ///
    /// Lists the tags associated with the specified report definition.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The specified report (ReportName) in the request doesn't exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Performs the `ModifyReportDefinition` operation on the `AWSOrigamiServiceGatewayService` service.
    ///
    /// Allows you to programmatically update your report preferences.
    ///
    /// - Parameter ModifyReportDefinitionInput : [no documentation found]
    ///
    /// - Returns: `ModifyReportDefinitionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func modifyReportDefinition(input: ModifyReportDefinitionInput) async throws -> ModifyReportDefinitionOutput
    /// Performs the `PutReportDefinition` operation on the `AWSOrigamiServiceGatewayService` service.
    ///
    /// Creates a new report using the description that you provide.
    ///
    /// - Parameter PutReportDefinitionInput : Creates a Cost and Usage Report.
    ///
    /// - Returns: `PutReportDefinitionOutput` : If the action is successful, the service sends back an HTTP 200 response with an empty HTTP body.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DuplicateReportNameException` : A report with the specified name already exists in the account. Specify a different report name.
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ReportLimitReachedException` : This account already has five reports defined. To define a new report, you must delete an existing report.
    /// - `ResourceNotFoundException` : The specified report (ReportName) in the request doesn't exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func putReportDefinition(input: PutReportDefinitionInput) async throws -> PutReportDefinitionOutput
    /// Performs the `TagResource` operation on the `AWSOrigamiServiceGatewayService` service.
    ///
    /// Associates a set of tags with a report definition.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The specified report (ReportName) in the request doesn't exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Performs the `UntagResource` operation on the `AWSOrigamiServiceGatewayService` service.
    ///
    /// Disassociates a set of tags from a report definition.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalErrorException` : An error on the server occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The specified report (ReportName) in the request doesn't exist.
    /// - `ValidationException` : The input fails to satisfy the constraints specified by an Amazon Web Services service.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
}

public enum CostandUsageReportClientTypes {}

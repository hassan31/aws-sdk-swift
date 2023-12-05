// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Provides AWS Marketplace business intelligence data on-demand.
public protocol MarketplaceCommerceAnalyticsClientProtocol {
    /// Performs the `GenerateDataSet` operation on the `MarketplaceCommerceAnalytics20150701` service.
    ///
    /// Given a data set type and data set publication date, asynchronously publishes the requested data set to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that can be used to correlate requests with notifications from the SNS topic. Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD.csv. If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will be overwritten by the new file. Requires a Role with an attached permissions policy providing Allow permissions for the following actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
    ///
    /// - Parameter GenerateDataSetInput : Container for the parameters to the GenerateDataSet operation.
    ///
    /// - Returns: `GenerateDataSetOutput` : Container for the result of the GenerateDataSet operation.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `MarketplaceCommerceAnalyticsException` : This exception is thrown when an internal service error occurs.
    func generateDataSet(input: GenerateDataSetInput) async throws -> GenerateDataSetOutput
    /// Performs the `StartSupportDataExport` operation on the `MarketplaceCommerceAnalytics20150701` service.
    ///
    /// This target has been deprecated. Given a data set type and a from date, asynchronously publishes the requested customer support data to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that can be used to correlate requests with notifications from the SNS topic. Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD'T'HH-mm-ss'Z'.csv. If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will be overwritten by the new file. Requires a Role with an attached permissions policy providing Allow permissions for the following actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
    @available(*, deprecated, message: "This target has been deprecated. As of December 2022 Product Support Connection is no longer supported.")
    ///
    /// - Parameter StartSupportDataExportInput : This target has been deprecated. Container for the parameters to the StartSupportDataExport operation.
    ///
    /// - Returns: `StartSupportDataExportOutput` : This target has been deprecated. Container for the result of the StartSupportDataExport operation.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `MarketplaceCommerceAnalyticsException` : This exception is thrown when an internal service error occurs.
    func startSupportDataExport(input: StartSupportDataExportInput) async throws -> StartSupportDataExportOutput
}

public enum MarketplaceCommerceAnalyticsClientTypes {}

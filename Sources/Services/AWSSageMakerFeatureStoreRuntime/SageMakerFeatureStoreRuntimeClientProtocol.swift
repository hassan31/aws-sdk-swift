// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Contains all data plane API operations and data types for the Amazon SageMaker Feature Store. Use this API to put, delete, and retrieve (get) features from a feature store. Use the following operations to configure your OnlineStore and OfflineStore features, and to create and manage feature groups:
///
/// * [CreateFeatureGroup](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateFeatureGroup.html)
///
/// * [DeleteFeatureGroup](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteFeatureGroup.html)
///
/// * [DescribeFeatureGroup](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeFeatureGroup.html)
///
/// * [ListFeatureGroups](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListFeatureGroups.html)
public protocol SageMakerFeatureStoreRuntimeClientProtocol {
    /// Performs the `BatchGetRecord` operation on the `AmazonSageMakerFeatureStoreRuntime` service.
    ///
    /// Retrieves a batch of Records from a FeatureGroup.
    ///
    /// - Parameter BatchGetRecordInput : [no documentation found]
    ///
    /// - Returns: `BatchGetRecordOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessForbidden` : You do not have permission to perform an action.
    /// - `InternalFailure` : An internal failure occurred. Try your request again. If the problem persists, contact Amazon Web Services customer support.
    /// - `ServiceUnavailable` : The service is currently unavailable.
    /// - `ValidationError` : There was an error validating your request.
    func batchGetRecord(input: BatchGetRecordInput) async throws -> BatchGetRecordOutput
    /// Performs the `DeleteRecord` operation on the `AmazonSageMakerFeatureStoreRuntime` service.
    ///
    /// Deletes a Record from a FeatureGroup in the OnlineStore. Feature Store supports both SoftDelete and HardDelete. For SoftDelete (default), feature columns are set to null and the record is no longer retrievable by GetRecord or BatchGetRecord. For HardDelete, the complete Record is removed from the OnlineStore. In both cases, Feature Store appends the deleted record marker to the OfflineStore with feature values set to null, is_deleted value set to True, and EventTime set to the delete input EventTime. Note that the EventTime specified in DeleteRecord should be set later than the EventTime of the existing record in the OnlineStore for that RecordIdentifer. If it is not, the deletion does not occur:
    ///
    /// * For SoftDelete, the existing (undeleted) record remains in the OnlineStore, though the delete record marker is still written to the OfflineStore.
    ///
    /// * HardDelete returns EventTime: 400 ValidationException to indicate that the delete operation failed. No delete record marker is written to the OfflineStore.
    ///
    /// - Parameter DeleteRecordInput : [no documentation found]
    ///
    /// - Returns: `DeleteRecordOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessForbidden` : You do not have permission to perform an action.
    /// - `InternalFailure` : An internal failure occurred. Try your request again. If the problem persists, contact Amazon Web Services customer support.
    /// - `ServiceUnavailable` : The service is currently unavailable.
    /// - `ValidationError` : There was an error validating your request.
    func deleteRecord(input: DeleteRecordInput) async throws -> DeleteRecordOutput
    /// Performs the `GetRecord` operation on the `AmazonSageMakerFeatureStoreRuntime` service.
    ///
    /// Use for OnlineStore serving from a FeatureStore. Only the latest records stored in the OnlineStore can be retrieved. If no Record with RecordIdentifierValue is found, then an empty result is returned.
    ///
    /// - Parameter GetRecordInput : [no documentation found]
    ///
    /// - Returns: `GetRecordOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessForbidden` : You do not have permission to perform an action.
    /// - `InternalFailure` : An internal failure occurred. Try your request again. If the problem persists, contact Amazon Web Services customer support.
    /// - `ResourceNotFound` : A resource that is required to perform an action was not found.
    /// - `ServiceUnavailable` : The service is currently unavailable.
    /// - `ValidationError` : There was an error validating your request.
    func getRecord(input: GetRecordInput) async throws -> GetRecordOutput
    /// Performs the `PutRecord` operation on the `AmazonSageMakerFeatureStoreRuntime` service.
    ///
    /// The PutRecord API is used to ingest a list of Records into your feature group. If a new record’s EventTime is greater, the new record is written to both the OnlineStore and OfflineStore. Otherwise, the record is a historic record and it is written only to the OfflineStore. You can specify the ingestion to be applied to the OnlineStore, OfflineStore, or both by using the TargetStores request parameter. You can set the ingested record to expire at a given time to live (TTL) duration after the record’s event time, ExpiresAt = EventTime + TtlDuration, by specifying the TtlDuration parameter. A record level TtlDuration is set when specifying the TtlDuration parameter using the PutRecord API call. If the input TtlDuration is null or unspecified, TtlDuration is set to the default feature group level TtlDuration. A record level TtlDuration supersedes the group level TtlDuration.
    ///
    /// - Parameter PutRecordInput : [no documentation found]
    ///
    /// - Returns: `PutRecordOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessForbidden` : You do not have permission to perform an action.
    /// - `InternalFailure` : An internal failure occurred. Try your request again. If the problem persists, contact Amazon Web Services customer support.
    /// - `ServiceUnavailable` : The service is currently unavailable.
    /// - `ValidationError` : There was an error validating your request.
    func putRecord(input: PutRecordInput) async throws -> PutRecordOutput
}

public enum SageMakerFeatureStoreRuntimeClientTypes {}

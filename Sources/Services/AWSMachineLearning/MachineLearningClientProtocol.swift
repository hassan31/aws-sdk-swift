// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Definition of the public APIs exposed by Amazon Machine Learning
public protocol MachineLearningClientProtocol {
    /// Performs the `AddTags` operation on the `AmazonML_20141212` service.
    ///
    /// Adds one or more tags to an object, up to a limit of 10. Each tag consists of a key and an optional value. If you add a tag using a key that is already associated with the ML object, AddTags updates the tag's value.
    ///
    /// - Parameter AddTagsInput : [no documentation found]
    ///
    /// - Returns: `AddTagsOutput` : Amazon ML returns the following elements.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    /// - `InvalidTagException` : [no documentation found]
    /// - `ResourceNotFoundException` : A specified resource cannot be located.
    /// - `TagLimitExceededException` : [no documentation found]
    func addTags(input: AddTagsInput) async throws -> AddTagsOutput
    /// Performs the `CreateBatchPrediction` operation on the `AmazonML_20141212` service.
    ///
    /// Generates predictions for a group of observations. The observations to process exist in one or more data files referenced by a DataSource. This operation creates a new BatchPrediction, and uses an MLModel and the data files referenced by the DataSource as information sources. CreateBatchPrediction is an asynchronous operation. In response to CreateBatchPrediction, Amazon Machine Learning (Amazon ML) immediately returns and sets the BatchPrediction status to PENDING. After the BatchPrediction completes, Amazon ML sets the status to COMPLETED. You can poll for status updates by using the [GetBatchPrediction] operation and checking the Status parameter of the result. After the COMPLETED status appears, the results are available in the location specified by the OutputUri parameter.
    ///
    /// - Parameter CreateBatchPredictionInput : [no documentation found]
    ///
    /// - Returns: `CreateBatchPredictionOutput` : Represents the output of a CreateBatchPrediction operation, and is an acknowledgement that Amazon ML received the request. The CreateBatchPrediction operation is asynchronous. You can poll for status updates by using the >GetBatchPrediction operation and checking the Status parameter of the result.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `IdempotentParameterMismatchException` : A second request to use or change an object was not allowed. This can result from retrying a request using a parameter that was not present in the original request.
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    func createBatchPrediction(input: CreateBatchPredictionInput) async throws -> CreateBatchPredictionOutput
    /// Performs the `CreateDataSourceFromRDS` operation on the `AmazonML_20141212` service.
    ///
    /// Creates a DataSource object from an [ Amazon Relational Database Service](http://aws.amazon.com/rds/) (Amazon RDS). A DataSource references data that can be used to perform CreateMLModel, CreateEvaluation, or CreateBatchPrediction operations. CreateDataSourceFromRDS is an asynchronous operation. In response to CreateDataSourceFromRDS, Amazon Machine Learning (Amazon ML) immediately returns and sets the DataSource status to PENDING. After the DataSource is created and ready for use, Amazon ML sets the Status parameter to COMPLETED. DataSource in the COMPLETED or PENDING state can be used only to perform >CreateMLModel>, CreateEvaluation, or CreateBatchPrediction operations. If Amazon ML cannot accept the input source, it sets the Status parameter to FAILED and includes an error message in the Message attribute of the GetDataSource operation response.
    ///
    /// - Parameter CreateDataSourceFromRDSInput : [no documentation found]
    ///
    /// - Returns: `CreateDataSourceFromRDSOutput` : Represents the output of a CreateDataSourceFromRDS operation, and is an acknowledgement that Amazon ML received the request. The CreateDataSourceFromRDS> operation is asynchronous. You can poll for updates by using the GetBatchPrediction operation and checking the Status parameter. You can inspect the Message when Status shows up as FAILED. You can also check the progress of the copy operation by going to the DataPipeline console and looking up the pipeline using the pipelineId  from the describe call.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `IdempotentParameterMismatchException` : A second request to use or change an object was not allowed. This can result from retrying a request using a parameter that was not present in the original request.
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    func createDataSourceFromRDS(input: CreateDataSourceFromRDSInput) async throws -> CreateDataSourceFromRDSOutput
    /// Performs the `CreateDataSourceFromRedshift` operation on the `AmazonML_20141212` service.
    ///
    /// Creates a DataSource from a database hosted on an Amazon Redshift cluster. A DataSource references data that can be used to perform either CreateMLModel, CreateEvaluation, or CreateBatchPrediction operations. CreateDataSourceFromRedshift is an asynchronous operation. In response to CreateDataSourceFromRedshift, Amazon Machine Learning (Amazon ML) immediately returns and sets the DataSource status to PENDING. After the DataSource is created and ready for use, Amazon ML sets the Status parameter to COMPLETED. DataSource in COMPLETED or PENDING states can be used to perform only CreateMLModel, CreateEvaluation, or CreateBatchPrediction operations. If Amazon ML can't accept the input source, it sets the Status parameter to FAILED and includes an error message in the Message attribute of the GetDataSource operation response. The observations should be contained in the database hosted on an Amazon Redshift cluster and should be specified by a SelectSqlQuery query. Amazon ML executes an Unload command in Amazon Redshift to transfer the result set of the SelectSqlQuery query to S3StagingLocation. After the DataSource has been created, it's ready for use in evaluations and batch predictions. If you plan to use the DataSource to train an MLModel, the DataSource also requires a recipe. A recipe describes how each input variable will be used in training an MLModel. Will the variable be included or excluded from training? Will the variable be manipulated; for example, will it be combined with another variable or will it be split apart into word combinations? The recipe provides answers to these questions. You can't change an existing datasource, but you can copy and modify the settings from an existing Amazon Redshift datasource to create a new datasource. To do so, call GetDataSource for an existing datasource and copy the values to a CreateDataSource call. Change the settings that you want to change and make sure that all required fields have the appropriate values.
    ///
    /// - Parameter CreateDataSourceFromRedshiftInput : [no documentation found]
    ///
    /// - Returns: `CreateDataSourceFromRedshiftOutput` : Represents the output of a CreateDataSourceFromRedshift operation, and is an acknowledgement that Amazon ML received the request. The CreateDataSourceFromRedshift operation is asynchronous. You can poll for updates by using the GetBatchPrediction operation and checking the Status parameter.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `IdempotentParameterMismatchException` : A second request to use or change an object was not allowed. This can result from retrying a request using a parameter that was not present in the original request.
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    func createDataSourceFromRedshift(input: CreateDataSourceFromRedshiftInput) async throws -> CreateDataSourceFromRedshiftOutput
    /// Performs the `CreateDataSourceFromS3` operation on the `AmazonML_20141212` service.
    ///
    /// Creates a DataSource object. A DataSource references data that can be used to perform CreateMLModel, CreateEvaluation, or CreateBatchPrediction operations. CreateDataSourceFromS3 is an asynchronous operation. In response to CreateDataSourceFromS3, Amazon Machine Learning (Amazon ML) immediately returns and sets the DataSource status to PENDING. After the DataSource has been created and is ready for use, Amazon ML sets the Status parameter to COMPLETED. DataSource in the COMPLETED or PENDING state can be used to perform only CreateMLModel, CreateEvaluation or CreateBatchPrediction operations. If Amazon ML can't accept the input source, it sets the Status parameter to FAILED and includes an error message in the Message attribute of the GetDataSource operation response. The observation data used in a DataSource should be ready to use; that is, it should have a consistent structure, and missing data values should be kept to a minimum. The observation data must reside in one or more .csv files in an Amazon Simple Storage Service (Amazon S3) location, along with a schema that describes the data items by name and type. The same schema must be used for all of the data files referenced by the DataSource. After the DataSource has been created, it's ready to use in evaluations and batch predictions. If you plan to use the DataSource to train an MLModel, the DataSource also needs a recipe. A recipe describes how each input variable will be used in training an MLModel. Will the variable be included or excluded from training? Will the variable be manipulated; for example, will it be combined with another variable or will it be split apart into word combinations? The recipe provides answers to these questions.
    ///
    /// - Parameter CreateDataSourceFromS3Input : [no documentation found]
    ///
    /// - Returns: `CreateDataSourceFromS3Output` : Represents the output of a CreateDataSourceFromS3 operation, and is an acknowledgement that Amazon ML received the request. The CreateDataSourceFromS3 operation is asynchronous. You can poll for updates by using the GetBatchPrediction operation and checking the Status parameter.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `IdempotentParameterMismatchException` : A second request to use or change an object was not allowed. This can result from retrying a request using a parameter that was not present in the original request.
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    func createDataSourceFromS3(input: CreateDataSourceFromS3Input) async throws -> CreateDataSourceFromS3Output
    /// Performs the `CreateEvaluation` operation on the `AmazonML_20141212` service.
    ///
    /// Creates a new Evaluation of an MLModel. An MLModel is evaluated on a set of observations associated to a DataSource. Like a DataSource for an MLModel, the DataSource for an Evaluation contains values for the Target Variable. The Evaluation compares the predicted result for each observation to the actual outcome and provides a summary so that you know how effective the MLModel functions on the test data. Evaluation generates a relevant performance metric, such as BinaryAUC, RegressionRMSE or MulticlassAvgFScore based on the corresponding MLModelType: BINARY, REGRESSION or MULTICLASS. CreateEvaluation is an asynchronous operation. In response to CreateEvaluation, Amazon Machine Learning (Amazon ML) immediately returns and sets the evaluation status to PENDING. After the Evaluation is created and ready for use, Amazon ML sets the status to COMPLETED. You can use the GetEvaluation operation to check progress of the evaluation during the creation operation.
    ///
    /// - Parameter CreateEvaluationInput : [no documentation found]
    ///
    /// - Returns: `CreateEvaluationOutput` : Represents the output of a CreateEvaluation operation, and is an acknowledgement that Amazon ML received the request. CreateEvaluation operation is asynchronous. You can poll for status updates by using the GetEvcaluation operation and checking the Status parameter.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `IdempotentParameterMismatchException` : A second request to use or change an object was not allowed. This can result from retrying a request using a parameter that was not present in the original request.
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    func createEvaluation(input: CreateEvaluationInput) async throws -> CreateEvaluationOutput
    /// Performs the `CreateMLModel` operation on the `AmazonML_20141212` service.
    ///
    /// Creates a new MLModel using the DataSource and the recipe as information sources. An MLModel is nearly immutable. Users can update only the MLModelName and the ScoreThreshold in an MLModel without creating a new MLModel. CreateMLModel is an asynchronous operation. In response to CreateMLModel, Amazon Machine Learning (Amazon ML) immediately returns and sets the MLModel status to PENDING. After the MLModel has been created and ready is for use, Amazon ML sets the status to COMPLETED. You can use the GetMLModel operation to check the progress of the MLModel during the creation operation. CreateMLModel requires a DataSource with computed statistics, which can be created by setting ComputeStatistics to true in CreateDataSourceFromRDS, CreateDataSourceFromS3, or CreateDataSourceFromRedshift operations.
    ///
    /// - Parameter CreateMLModelInput : [no documentation found]
    ///
    /// - Returns: `CreateMLModelOutput` : Represents the output of a CreateMLModel operation, and is an acknowledgement that Amazon ML received the request. The CreateMLModel operation is asynchronous. You can poll for status updates by using the GetMLModel operation and checking the Status parameter.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `IdempotentParameterMismatchException` : A second request to use or change an object was not allowed. This can result from retrying a request using a parameter that was not present in the original request.
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    func createMLModel(input: CreateMLModelInput) async throws -> CreateMLModelOutput
    /// Performs the `CreateRealtimeEndpoint` operation on the `AmazonML_20141212` service.
    ///
    /// Creates a real-time endpoint for the MLModel. The endpoint contains the URI of the MLModel; that is, the location to send real-time prediction requests for the specified MLModel.
    ///
    /// - Parameter CreateRealtimeEndpointInput : [no documentation found]
    ///
    /// - Returns: `CreateRealtimeEndpointOutput` : Represents the output of an CreateRealtimeEndpoint operation. The result contains the MLModelId and the endpoint information for the MLModel. Note: The endpoint information includes the URI of the MLModel; that is, the location to send online prediction requests for the specified MLModel.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    /// - `ResourceNotFoundException` : A specified resource cannot be located.
    func createRealtimeEndpoint(input: CreateRealtimeEndpointInput) async throws -> CreateRealtimeEndpointOutput
    /// Performs the `DeleteBatchPrediction` operation on the `AmazonML_20141212` service.
    ///
    /// Assigns the DELETED status to a BatchPrediction, rendering it unusable. After using the DeleteBatchPrediction operation, you can use the [GetBatchPrediction] operation to verify that the status of the BatchPrediction changed to DELETED. Caution: The result of the DeleteBatchPrediction operation is irreversible.
    ///
    /// - Parameter DeleteBatchPredictionInput : [no documentation found]
    ///
    /// - Returns: `DeleteBatchPredictionOutput` : Represents the output of a DeleteBatchPrediction operation.
    ///
    ///
    /// You can use the GetBatchPrediction operation and check the value of the Status parameter to see whether a BatchPrediction is marked as DELETED.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    /// - `ResourceNotFoundException` : A specified resource cannot be located.
    func deleteBatchPrediction(input: DeleteBatchPredictionInput) async throws -> DeleteBatchPredictionOutput
    /// Performs the `DeleteDataSource` operation on the `AmazonML_20141212` service.
    ///
    /// Assigns the DELETED status to a DataSource, rendering it unusable. After using the DeleteDataSource operation, you can use the [GetDataSource] operation to verify that the status of the DataSource changed to DELETED. Caution: The results of the DeleteDataSource operation are irreversible.
    ///
    /// - Parameter DeleteDataSourceInput : [no documentation found]
    ///
    /// - Returns: `DeleteDataSourceOutput` : Represents the output of a DeleteDataSource operation.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    /// - `ResourceNotFoundException` : A specified resource cannot be located.
    func deleteDataSource(input: DeleteDataSourceInput) async throws -> DeleteDataSourceOutput
    /// Performs the `DeleteEvaluation` operation on the `AmazonML_20141212` service.
    ///
    /// Assigns the DELETED status to an Evaluation, rendering it unusable. After invoking the DeleteEvaluation operation, you can use the GetEvaluation operation to verify that the status of the Evaluation changed to DELETED. Caution: The results of the DeleteEvaluation operation are irreversible.
    ///
    /// - Parameter DeleteEvaluationInput : [no documentation found]
    ///
    /// - Returns: `DeleteEvaluationOutput` : Represents the output of a DeleteEvaluation operation. The output indicates that Amazon Machine Learning (Amazon ML) received the request. You can use the GetEvaluation operation and check the value of the Status parameter to see whether an Evaluation is marked as DELETED.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    /// - `ResourceNotFoundException` : A specified resource cannot be located.
    func deleteEvaluation(input: DeleteEvaluationInput) async throws -> DeleteEvaluationOutput
    /// Performs the `DeleteMLModel` operation on the `AmazonML_20141212` service.
    ///
    /// Assigns the DELETED status to an MLModel, rendering it unusable. After using the DeleteMLModel operation, you can use the GetMLModel operation to verify that the status of the MLModel changed to DELETED. Caution: The result of the DeleteMLModel operation is irreversible.
    ///
    /// - Parameter DeleteMLModelInput : [no documentation found]
    ///
    /// - Returns: `DeleteMLModelOutput` : Represents the output of a DeleteMLModel operation. You can use the GetMLModel operation and check the value of the Status parameter to see whether an MLModel is marked as DELETED.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    /// - `ResourceNotFoundException` : A specified resource cannot be located.
    func deleteMLModel(input: DeleteMLModelInput) async throws -> DeleteMLModelOutput
    /// Performs the `DeleteRealtimeEndpoint` operation on the `AmazonML_20141212` service.
    ///
    /// Deletes a real time endpoint of an MLModel.
    ///
    /// - Parameter DeleteRealtimeEndpointInput : [no documentation found]
    ///
    /// - Returns: `DeleteRealtimeEndpointOutput` : Represents the output of an DeleteRealtimeEndpoint operation. The result contains the MLModelId and the endpoint information for the MLModel.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    /// - `ResourceNotFoundException` : A specified resource cannot be located.
    func deleteRealtimeEndpoint(input: DeleteRealtimeEndpointInput) async throws -> DeleteRealtimeEndpointOutput
    /// Performs the `DeleteTags` operation on the `AmazonML_20141212` service.
    ///
    /// Deletes the specified tags associated with an ML object. After this operation is complete, you can't recover deleted tags. If you specify a tag that doesn't exist, Amazon ML ignores it.
    ///
    /// - Parameter DeleteTagsInput : [no documentation found]
    ///
    /// - Returns: `DeleteTagsOutput` : Amazon ML returns the following elements.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    /// - `InvalidTagException` : [no documentation found]
    /// - `ResourceNotFoundException` : A specified resource cannot be located.
    func deleteTags(input: DeleteTagsInput) async throws -> DeleteTagsOutput
    /// Performs the `DescribeBatchPredictions` operation on the `AmazonML_20141212` service.
    ///
    /// Returns a list of BatchPrediction operations that match the search criteria in the request.
    ///
    /// - Parameter DescribeBatchPredictionsInput : [no documentation found]
    ///
    /// - Returns: `DescribeBatchPredictionsOutput` : Represents the output of a DescribeBatchPredictions operation. The content is essentially a list of BatchPredictions.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    func describeBatchPredictions(input: DescribeBatchPredictionsInput) async throws -> DescribeBatchPredictionsOutput
    /// Performs the `DescribeDataSources` operation on the `AmazonML_20141212` service.
    ///
    /// Returns a list of DataSource that match the search criteria in the request.
    ///
    /// - Parameter DescribeDataSourcesInput : [no documentation found]
    ///
    /// - Returns: `DescribeDataSourcesOutput` : Represents the query results from a [DescribeDataSources] operation. The content is essentially a list of DataSource.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    func describeDataSources(input: DescribeDataSourcesInput) async throws -> DescribeDataSourcesOutput
    /// Performs the `DescribeEvaluations` operation on the `AmazonML_20141212` service.
    ///
    /// Returns a list of DescribeEvaluations that match the search criteria in the request.
    ///
    /// - Parameter DescribeEvaluationsInput : [no documentation found]
    ///
    /// - Returns: `DescribeEvaluationsOutput` : Represents the query results from a DescribeEvaluations operation. The content is essentially a list of Evaluation.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    func describeEvaluations(input: DescribeEvaluationsInput) async throws -> DescribeEvaluationsOutput
    /// Performs the `DescribeMLModels` operation on the `AmazonML_20141212` service.
    ///
    /// Returns a list of MLModel that match the search criteria in the request.
    ///
    /// - Parameter DescribeMLModelsInput : [no documentation found]
    ///
    /// - Returns: `DescribeMLModelsOutput` : Represents the output of a DescribeMLModels operation. The content is essentially a list of MLModel.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    func describeMLModels(input: DescribeMLModelsInput) async throws -> DescribeMLModelsOutput
    /// Performs the `DescribeTags` operation on the `AmazonML_20141212` service.
    ///
    /// Describes one or more of the tags for your Amazon ML object.
    ///
    /// - Parameter DescribeTagsInput : [no documentation found]
    ///
    /// - Returns: `DescribeTagsOutput` : Amazon ML returns the following elements.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    /// - `ResourceNotFoundException` : A specified resource cannot be located.
    func describeTags(input: DescribeTagsInput) async throws -> DescribeTagsOutput
    /// Performs the `GetBatchPrediction` operation on the `AmazonML_20141212` service.
    ///
    /// Returns a BatchPrediction that includes detailed metadata, status, and data file information for a Batch Prediction request.
    ///
    /// - Parameter GetBatchPredictionInput : [no documentation found]
    ///
    /// - Returns: `GetBatchPredictionOutput` : Represents the output of a GetBatchPrediction operation and describes a BatchPrediction.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    /// - `ResourceNotFoundException` : A specified resource cannot be located.
    func getBatchPrediction(input: GetBatchPredictionInput) async throws -> GetBatchPredictionOutput
    /// Performs the `GetDataSource` operation on the `AmazonML_20141212` service.
    ///
    /// Returns a DataSource that includes metadata and data file information, as well as the current status of the DataSource. GetDataSource provides results in normal or verbose format. The verbose format adds the schema description and the list of files pointed to by the DataSource to the normal format.
    ///
    /// - Parameter GetDataSourceInput : [no documentation found]
    ///
    /// - Returns: `GetDataSourceOutput` : Represents the output of a GetDataSource operation and describes a DataSource.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    /// - `ResourceNotFoundException` : A specified resource cannot be located.
    func getDataSource(input: GetDataSourceInput) async throws -> GetDataSourceOutput
    /// Performs the `GetEvaluation` operation on the `AmazonML_20141212` service.
    ///
    /// Returns an Evaluation that includes metadata as well as the current status of the Evaluation.
    ///
    /// - Parameter GetEvaluationInput : [no documentation found]
    ///
    /// - Returns: `GetEvaluationOutput` : Represents the output of a GetEvaluation operation and describes an Evaluation.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    /// - `ResourceNotFoundException` : A specified resource cannot be located.
    func getEvaluation(input: GetEvaluationInput) async throws -> GetEvaluationOutput
    /// Performs the `GetMLModel` operation on the `AmazonML_20141212` service.
    ///
    /// Returns an MLModel that includes detailed metadata, data source information, and the current status of the MLModel. GetMLModel provides results in normal or verbose format.
    ///
    /// - Parameter GetMLModelInput : [no documentation found]
    ///
    /// - Returns: `GetMLModelOutput` : Represents the output of a GetMLModel operation, and provides detailed information about a MLModel.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    /// - `ResourceNotFoundException` : A specified resource cannot be located.
    func getMLModel(input: GetMLModelInput) async throws -> GetMLModelOutput
    /// Performs the `Predict` operation on the `AmazonML_20141212` service.
    ///
    /// Generates a prediction for the observation using the specified ML Model. Note: Not all response parameters will be populated. Whether a response parameter is populated depends on the type of model requested.
    ///
    /// - Parameter PredictInput : [no documentation found]
    ///
    /// - Returns: `PredictOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    /// - `LimitExceededException` : The subscriber exceeded the maximum number of operations. This exception can occur when listing objects such as DataSource.
    /// - `PredictorNotMountedException` : The exception is thrown when a predict request is made to an unmounted MLModel.
    /// - `ResourceNotFoundException` : A specified resource cannot be located.
    func predict(input: PredictInput) async throws -> PredictOutput
    /// Performs the `UpdateBatchPrediction` operation on the `AmazonML_20141212` service.
    ///
    /// Updates the BatchPredictionName of a BatchPrediction. You can use the GetBatchPrediction operation to view the contents of the updated data element.
    ///
    /// - Parameter UpdateBatchPredictionInput : [no documentation found]
    ///
    /// - Returns: `UpdateBatchPredictionOutput` : Represents the output of an UpdateBatchPrediction operation. You can see the updated content by using the GetBatchPrediction operation.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    /// - `ResourceNotFoundException` : A specified resource cannot be located.
    func updateBatchPrediction(input: UpdateBatchPredictionInput) async throws -> UpdateBatchPredictionOutput
    /// Performs the `UpdateDataSource` operation on the `AmazonML_20141212` service.
    ///
    /// Updates the DataSourceName of a DataSource. You can use the GetDataSource operation to view the contents of the updated data element.
    ///
    /// - Parameter UpdateDataSourceInput : [no documentation found]
    ///
    /// - Returns: `UpdateDataSourceOutput` : Represents the output of an UpdateDataSource operation. You can see the updated content by using the GetBatchPrediction operation.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    /// - `ResourceNotFoundException` : A specified resource cannot be located.
    func updateDataSource(input: UpdateDataSourceInput) async throws -> UpdateDataSourceOutput
    /// Performs the `UpdateEvaluation` operation on the `AmazonML_20141212` service.
    ///
    /// Updates the EvaluationName of an Evaluation. You can use the GetEvaluation operation to view the contents of the updated data element.
    ///
    /// - Parameter UpdateEvaluationInput : [no documentation found]
    ///
    /// - Returns: `UpdateEvaluationOutput` : Represents the output of an UpdateEvaluation operation. You can see the updated content by using the GetEvaluation operation.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    /// - `ResourceNotFoundException` : A specified resource cannot be located.
    func updateEvaluation(input: UpdateEvaluationInput) async throws -> UpdateEvaluationOutput
    /// Performs the `UpdateMLModel` operation on the `AmazonML_20141212` service.
    ///
    /// Updates the MLModelName and the ScoreThreshold of an MLModel. You can use the GetMLModel operation to view the contents of the updated data element.
    ///
    /// - Parameter UpdateMLModelInput : [no documentation found]
    ///
    /// - Returns: `UpdateMLModelOutput` : Represents the output of an UpdateMLModel operation. You can see the updated content by using the GetMLModel operation.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An error on the server occurred when trying to process a request.
    /// - `InvalidInputException` : An error on the client occurred. Typically, the cause is an invalid input value.
    /// - `ResourceNotFoundException` : A specified resource cannot be located.
    func updateMLModel(input: UpdateMLModelInput) async throws -> UpdateMLModelOutput
}

public enum MachineLearningClientTypes {}

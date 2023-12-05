// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// With Application Auto Scaling, you can configure automatic scaling for the following resources:
///
/// * Amazon AppStream 2.0 fleets
///
/// * Amazon Aurora Replicas
///
/// * Amazon Comprehend document classification and entity recognizer endpoints
///
/// * Amazon DynamoDB tables and global secondary indexes throughput capacity
///
/// * Amazon ECS services
///
/// * Amazon ElastiCache for Redis clusters (replication groups)
///
/// * Amazon EMR clusters
///
/// * Amazon Keyspaces (for Apache Cassandra) tables
///
/// * Lambda function provisioned concurrency
///
/// * Amazon Managed Streaming for Apache Kafka broker storage
///
/// * Amazon Neptune clusters
///
/// * Amazon SageMaker endpoint variants
///
/// * Amazon SageMaker Serverless endpoint provisioned concurrency
///
/// * Amazon SageMaker inference components
///
/// * Spot Fleets (Amazon EC2)
///
/// * Custom resources provided by your own applications or services
///
///
/// To learn more about Application Auto Scaling, see the [Application Auto Scaling User Guide](https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html). API Summary The Application Auto Scaling service API includes three key sets of actions:
///
/// * Register and manage scalable targets - Register Amazon Web Services or custom resources as scalable targets (a resource that Application Auto Scaling can scale), set minimum and maximum capacity limits, and retrieve information on existing scalable targets.
///
/// * Configure and manage automatic scaling - Define scaling policies to dynamically scale your resources in response to CloudWatch alarms, schedule one-time or recurring scaling actions, and retrieve your recent scaling activity history.
///
/// * Suspend and resume scaling - Temporarily suspend and later resume automatic scaling by calling the [RegisterScalableTarget](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html) API action for any Application Auto Scaling scalable target. You can suspend and resume (individually or in combination) scale-out activities that are triggered by a scaling policy, scale-in activities that are triggered by a scaling policy, and scheduled scaling.
public protocol ApplicationAutoScalingClientProtocol {
    /// Performs the `DeleteScalingPolicy` operation on the `AnyScaleFrontendService` service.
    ///
    /// Deletes the specified scaling policy for an Application Auto Scaling scalable target. Deleting a step scaling policy deletes the underlying alarm action, but does not delete the CloudWatch alarm associated with the scaling policy, even if it no longer has an associated action. For more information, see [Delete a step scaling policy](https://docs.aws.amazon.com/autoscaling/application/userguide/create-step-scaling-policy-cli.html#delete-step-scaling-policy) and [Delete a target tracking scaling policy](https://docs.aws.amazon.com/autoscaling/application/userguide/create-target-tracking-policy-cli.html#delete-target-tracking-policy) in the Application Auto Scaling User Guide.
    ///
    /// - Parameter DeleteScalingPolicyInput : [no documentation found]
    ///
    /// - Returns: `DeleteScalingPolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConcurrentUpdateException` : Concurrent updates caused an exception, for example, if you request an update to an Application Auto Scaling resource that already has a pending update.
    /// - `InternalServiceException` : The service encountered an internal error.
    /// - `ObjectNotFoundException` : The specified object could not be found. For any operation that depends on the existence of a scalable target, this exception is thrown if the scalable target with the specified service namespace, resource ID, and scalable dimension does not exist. For any operation that deletes or deregisters a resource, this exception is thrown if the resource cannot be found.
    /// - `ValidationException` : An exception was thrown for a validation issue. Review the available parameters for the API request.
    func deleteScalingPolicy(input: DeleteScalingPolicyInput) async throws -> DeleteScalingPolicyOutput
    /// Performs the `DeleteScheduledAction` operation on the `AnyScaleFrontendService` service.
    ///
    /// Deletes the specified scheduled action for an Application Auto Scaling scalable target. For more information, see [Delete a scheduled action](https://docs.aws.amazon.com/autoscaling/application/userguide/scheduled-scaling-additional-cli-commands.html#delete-scheduled-action) in the Application Auto Scaling User Guide.
    ///
    /// - Parameter DeleteScheduledActionInput : [no documentation found]
    ///
    /// - Returns: `DeleteScheduledActionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConcurrentUpdateException` : Concurrent updates caused an exception, for example, if you request an update to an Application Auto Scaling resource that already has a pending update.
    /// - `InternalServiceException` : The service encountered an internal error.
    /// - `ObjectNotFoundException` : The specified object could not be found. For any operation that depends on the existence of a scalable target, this exception is thrown if the scalable target with the specified service namespace, resource ID, and scalable dimension does not exist. For any operation that deletes or deregisters a resource, this exception is thrown if the resource cannot be found.
    /// - `ValidationException` : An exception was thrown for a validation issue. Review the available parameters for the API request.
    func deleteScheduledAction(input: DeleteScheduledActionInput) async throws -> DeleteScheduledActionOutput
    /// Performs the `DeregisterScalableTarget` operation on the `AnyScaleFrontendService` service.
    ///
    /// Deregisters an Application Auto Scaling scalable target when you have finished using it. To see which resources have been registered, use [DescribeScalableTargets](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html). Deregistering a scalable target deletes the scaling policies and the scheduled actions that are associated with it.
    ///
    /// - Parameter DeregisterScalableTargetInput : [no documentation found]
    ///
    /// - Returns: `DeregisterScalableTargetOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConcurrentUpdateException` : Concurrent updates caused an exception, for example, if you request an update to an Application Auto Scaling resource that already has a pending update.
    /// - `InternalServiceException` : The service encountered an internal error.
    /// - `ObjectNotFoundException` : The specified object could not be found. For any operation that depends on the existence of a scalable target, this exception is thrown if the scalable target with the specified service namespace, resource ID, and scalable dimension does not exist. For any operation that deletes or deregisters a resource, this exception is thrown if the resource cannot be found.
    /// - `ValidationException` : An exception was thrown for a validation issue. Review the available parameters for the API request.
    func deregisterScalableTarget(input: DeregisterScalableTargetInput) async throws -> DeregisterScalableTargetOutput
    /// Performs the `DescribeScalableTargets` operation on the `AnyScaleFrontendService` service.
    ///
    /// Gets information about the scalable targets in the specified namespace. You can filter the results using ResourceIds and ScalableDimension.
    ///
    /// - Parameter DescribeScalableTargetsInput : [no documentation found]
    ///
    /// - Returns: `DescribeScalableTargetsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConcurrentUpdateException` : Concurrent updates caused an exception, for example, if you request an update to an Application Auto Scaling resource that already has a pending update.
    /// - `InternalServiceException` : The service encountered an internal error.
    /// - `InvalidNextTokenException` : The next token supplied was invalid.
    /// - `ValidationException` : An exception was thrown for a validation issue. Review the available parameters for the API request.
    func describeScalableTargets(input: DescribeScalableTargetsInput) async throws -> DescribeScalableTargetsOutput
    /// Performs the `DescribeScalingActivities` operation on the `AnyScaleFrontendService` service.
    ///
    /// Provides descriptive information about the scaling activities in the specified namespace from the previous six weeks. You can filter the results using ResourceId and ScalableDimension. For information about viewing scaling activities using the Amazon Web Services CLI, see [Scaling activities for Application Auto Scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scaling-activities.html).
    ///
    /// - Parameter DescribeScalingActivitiesInput : [no documentation found]
    ///
    /// - Returns: `DescribeScalingActivitiesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConcurrentUpdateException` : Concurrent updates caused an exception, for example, if you request an update to an Application Auto Scaling resource that already has a pending update.
    /// - `InternalServiceException` : The service encountered an internal error.
    /// - `InvalidNextTokenException` : The next token supplied was invalid.
    /// - `ValidationException` : An exception was thrown for a validation issue. Review the available parameters for the API request.
    func describeScalingActivities(input: DescribeScalingActivitiesInput) async throws -> DescribeScalingActivitiesOutput
    /// Performs the `DescribeScalingPolicies` operation on the `AnyScaleFrontendService` service.
    ///
    /// Describes the Application Auto Scaling scaling policies for the specified service namespace. You can filter the results using ResourceId, ScalableDimension, and PolicyNames. For more information, see [Target tracking scaling policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html) and [Step scaling policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html) in the Application Auto Scaling User Guide.
    ///
    /// - Parameter DescribeScalingPoliciesInput : [no documentation found]
    ///
    /// - Returns: `DescribeScalingPoliciesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConcurrentUpdateException` : Concurrent updates caused an exception, for example, if you request an update to an Application Auto Scaling resource that already has a pending update.
    /// - `FailedResourceAccessException` : Failed access to resources caused an exception. This exception is thrown when Application Auto Scaling is unable to retrieve the alarms associated with a scaling policy due to a client error, for example, if the role ARN specified for a scalable target does not have permission to call the CloudWatch [DescribeAlarms](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarms.html) on your behalf.
    /// - `InternalServiceException` : The service encountered an internal error.
    /// - `InvalidNextTokenException` : The next token supplied was invalid.
    /// - `ValidationException` : An exception was thrown for a validation issue. Review the available parameters for the API request.
    func describeScalingPolicies(input: DescribeScalingPoliciesInput) async throws -> DescribeScalingPoliciesOutput
    /// Performs the `DescribeScheduledActions` operation on the `AnyScaleFrontendService` service.
    ///
    /// Describes the Application Auto Scaling scheduled actions for the specified service namespace. You can filter the results using the ResourceId, ScalableDimension, and ScheduledActionNames parameters. For more information, see [Scheduled scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html) and [Managing scheduled scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/scheduled-scaling-additional-cli-commands.html) in the Application Auto Scaling User Guide.
    ///
    /// - Parameter DescribeScheduledActionsInput : [no documentation found]
    ///
    /// - Returns: `DescribeScheduledActionsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConcurrentUpdateException` : Concurrent updates caused an exception, for example, if you request an update to an Application Auto Scaling resource that already has a pending update.
    /// - `InternalServiceException` : The service encountered an internal error.
    /// - `InvalidNextTokenException` : The next token supplied was invalid.
    /// - `ValidationException` : An exception was thrown for a validation issue. Review the available parameters for the API request.
    func describeScheduledActions(input: DescribeScheduledActionsInput) async throws -> DescribeScheduledActionsOutput
    /// Performs the `ListTagsForResource` operation on the `AnyScaleFrontendService` service.
    ///
    /// Returns all the tags on the specified Application Auto Scaling scalable target. For general information about tags, including the format and syntax, see [Tagging Amazon Web Services resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the Amazon Web Services General Reference.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Performs the `PutScalingPolicy` operation on the `AnyScaleFrontendService` service.
    ///
    /// Creates or updates a scaling policy for an Application Auto Scaling scalable target. Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scaling policy applies to the scalable target identified by those three attributes. You cannot create a scaling policy until you have registered the resource as a scalable target. Multiple scaling policies can be in force at the same time for the same scalable target. You can have one or more target tracking scaling policies, one or more step scaling policies, or both. However, there is a chance that multiple policies could conflict, instructing the scalable target to scale out or in at the same time. Application Auto Scaling gives precedence to the policy that provides the largest capacity for both scale out and scale in. For example, if one policy increases capacity by 3, another policy increases capacity by 200 percent, and the current capacity is 10, Application Auto Scaling uses the policy with the highest calculated capacity (200% of 10 = 20) and scales out to 30. We recommend caution, however, when using target tracking scaling policies with step scaling policies because conflicts between these policies can cause undesirable behavior. For example, if the step scaling policy initiates a scale-in activity before the target tracking policy is ready to scale in, the scale-in activity will not be blocked. After the scale-in activity completes, the target tracking policy could instruct the scalable target to scale out again. For more information, see [Target tracking scaling policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html) and [Step scaling policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html) in the Application Auto Scaling User Guide. If a scalable target is deregistered, the scalable target is no longer available to use scaling policies. Any scaling policies that were specified for the scalable target are deleted.
    ///
    /// - Parameter PutScalingPolicyInput : [no documentation found]
    ///
    /// - Returns: `PutScalingPolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConcurrentUpdateException` : Concurrent updates caused an exception, for example, if you request an update to an Application Auto Scaling resource that already has a pending update.
    /// - `FailedResourceAccessException` : Failed access to resources caused an exception. This exception is thrown when Application Auto Scaling is unable to retrieve the alarms associated with a scaling policy due to a client error, for example, if the role ARN specified for a scalable target does not have permission to call the CloudWatch [DescribeAlarms](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarms.html) on your behalf.
    /// - `InternalServiceException` : The service encountered an internal error.
    /// - `LimitExceededException` : A per-account resource limit is exceeded. For more information, see [Application Auto Scaling service quotas](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-limits.html).
    /// - `ObjectNotFoundException` : The specified object could not be found. For any operation that depends on the existence of a scalable target, this exception is thrown if the scalable target with the specified service namespace, resource ID, and scalable dimension does not exist. For any operation that deletes or deregisters a resource, this exception is thrown if the resource cannot be found.
    /// - `ValidationException` : An exception was thrown for a validation issue. Review the available parameters for the API request.
    func putScalingPolicy(input: PutScalingPolicyInput) async throws -> PutScalingPolicyOutput
    /// Performs the `PutScheduledAction` operation on the `AnyScaleFrontendService` service.
    ///
    /// Creates or updates a scheduled action for an Application Auto Scaling scalable target. Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scheduled action applies to the scalable target identified by those three attributes. You cannot create a scheduled action until you have registered the resource as a scalable target. When you specify start and end times with a recurring schedule using a cron expression or rates, they form the boundaries for when the recurring action starts and stops. To update a scheduled action, specify the parameters that you want to change. If you don't specify start and end times, the old values are deleted. For more information, see [Scheduled scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html) in the Application Auto Scaling User Guide. If a scalable target is deregistered, the scalable target is no longer available to run scheduled actions. Any scheduled actions that were specified for the scalable target are deleted.
    ///
    /// - Parameter PutScheduledActionInput : [no documentation found]
    ///
    /// - Returns: `PutScheduledActionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConcurrentUpdateException` : Concurrent updates caused an exception, for example, if you request an update to an Application Auto Scaling resource that already has a pending update.
    /// - `InternalServiceException` : The service encountered an internal error.
    /// - `LimitExceededException` : A per-account resource limit is exceeded. For more information, see [Application Auto Scaling service quotas](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-limits.html).
    /// - `ObjectNotFoundException` : The specified object could not be found. For any operation that depends on the existence of a scalable target, this exception is thrown if the scalable target with the specified service namespace, resource ID, and scalable dimension does not exist. For any operation that deletes or deregisters a resource, this exception is thrown if the resource cannot be found.
    /// - `ValidationException` : An exception was thrown for a validation issue. Review the available parameters for the API request.
    func putScheduledAction(input: PutScheduledActionInput) async throws -> PutScheduledActionOutput
    /// Performs the `RegisterScalableTarget` operation on the `AnyScaleFrontendService` service.
    ///
    /// Registers or updates a scalable target, which is the resource that you want to scale. Scalable targets are uniquely identified by the combination of resource ID, scalable dimension, and namespace, which represents some capacity dimension of the underlying service. When you register a new scalable target, you must specify values for the minimum and maximum capacity. If the specified resource is not active in the target service, this operation does not change the resource's current capacity. Otherwise, it changes the resource's current capacity to a value that is inside of this range. If you add a scaling policy, current capacity is adjustable within the specified range when scaling starts. Application Auto Scaling scaling policies will not scale capacity to values that are outside of the minimum and maximum range. After you register a scalable target, you do not need to register it again to use other Application Auto Scaling operations. To see which resources have been registered, use [DescribeScalableTargets](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html). You can also view the scaling policies for a service namespace by using [DescribeScalableTargets](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html). If you no longer need a scalable target, you can deregister it by using [DeregisterScalableTarget](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DeregisterScalableTarget.html). To update a scalable target, specify the parameters that you want to change. Include the parameters that identify the scalable target: resource ID, scalable dimension, and namespace. Any parameters that you don't specify are not changed by this update request. If you call the RegisterScalableTarget API operation to create a scalable target, there might be a brief delay until the operation achieves [eventual consistency](https://en.wikipedia.org/wiki/Eventual_consistency). You might become aware of this brief delay if you get unexpected errors when performing sequential operations. The typical strategy is to retry the request, and some Amazon Web Services SDKs include automatic backoff and retry logic. If you call the RegisterScalableTarget API operation to update an existing scalable target, Application Auto Scaling retrieves the current capacity of the resource. If it's below the minimum capacity or above the maximum capacity, Application Auto Scaling adjusts the capacity of the scalable target to place it within these bounds, even if you don't include the MinCapacity or MaxCapacity request parameters.
    ///
    /// - Parameter RegisterScalableTargetInput : [no documentation found]
    ///
    /// - Returns: `RegisterScalableTargetOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConcurrentUpdateException` : Concurrent updates caused an exception, for example, if you request an update to an Application Auto Scaling resource that already has a pending update.
    /// - `InternalServiceException` : The service encountered an internal error.
    /// - `LimitExceededException` : A per-account resource limit is exceeded. For more information, see [Application Auto Scaling service quotas](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-limits.html).
    /// - `ValidationException` : An exception was thrown for a validation issue. Review the available parameters for the API request.
    func registerScalableTarget(input: RegisterScalableTargetInput) async throws -> RegisterScalableTargetOutput
    /// Performs the `TagResource` operation on the `AnyScaleFrontendService` service.
    ///
    /// Adds or edits tags on an Application Auto Scaling scalable target. Each tag consists of a tag key and a tag value, which are both case-sensitive strings. To add a tag, specify a new tag key and a tag value. To edit a tag, specify an existing tag key and a new tag value. You can use this operation to tag an Application Auto Scaling scalable target, but you cannot tag a scaling policy or scheduled action. You can also add tags to an Application Auto Scaling scalable target while creating it (RegisterScalableTarget). For general information about tags, including the format and syntax, see [Tagging Amazon Web Services resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the Amazon Web Services General Reference. Use tags to control access to a scalable target. For more information, see [Tagging support for Application Auto Scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/resource-tagging-support.html) in the Application Auto Scaling User Guide.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    /// - `TooManyTagsException` : The request contains too many tags. Try the request again with fewer tags.
    /// - `ValidationException` : An exception was thrown for a validation issue. Review the available parameters for the API request.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Performs the `UntagResource` operation on the `AnyScaleFrontendService` service.
    ///
    /// Deletes tags from an Application Auto Scaling scalable target. To delete a tag, specify the tag key and the Application Auto Scaling scalable target.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : The specified resource doesn't exist.
    /// - `ValidationException` : An exception was thrown for a validation issue. Review the available parameters for the API request.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
}

public enum ApplicationAutoScalingClientTypes {}

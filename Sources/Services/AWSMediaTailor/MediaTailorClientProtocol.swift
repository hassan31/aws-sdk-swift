// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Use the AWS Elemental MediaTailor SDKs and CLI to configure scalable ad insertion and linear channels. With MediaTailor, you can assemble existing content into a linear stream and serve targeted ads to viewers while maintaining broadcast quality in over-the-top (OTT) video applications. For information about using the service, including detailed information about the settings covered in this guide, see the [AWS Elemental MediaTailor User Guide](https://docs.aws.amazon.com/mediatailor/latest/ug/). Through the SDKs and the CLI you manage AWS Elemental MediaTailor configurations and channels the same as you do through the console. For example, you specify ad insertion behavior and mapping information for the origin server and the ad decision server (ADS).
public protocol MediaTailorClientProtocol {
    /// Performs the `ConfigureLogsForChannel` operation on the `MediaTailor` service.
    ///
    /// Configures Amazon CloudWatch log settings for a channel.
    ///
    /// - Parameter ConfigureLogsForChannelInput : [no documentation found]
    ///
    /// - Returns: `ConfigureLogsForChannelOutput` : [no documentation found]
    func configureLogsForChannel(input: ConfigureLogsForChannelInput) async throws -> ConfigureLogsForChannelOutput
    /// Performs the `ConfigureLogsForPlaybackConfiguration` operation on the `MediaTailor` service.
    ///
    /// Amazon CloudWatch log settings for a playback configuration.
    ///
    /// - Parameter ConfigureLogsForPlaybackConfigurationInput : Configures Amazon CloudWatch log settings for a playback configuration.
    ///
    /// - Returns: `ConfigureLogsForPlaybackConfigurationOutput` : [no documentation found]
    func configureLogsForPlaybackConfiguration(input: ConfigureLogsForPlaybackConfigurationInput) async throws -> ConfigureLogsForPlaybackConfigurationOutput
    /// Performs the `CreateChannel` operation on the `MediaTailor` service.
    ///
    /// Creates a channel. For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html) in the MediaTailor User Guide.
    ///
    /// - Parameter CreateChannelInput : [no documentation found]
    ///
    /// - Returns: `CreateChannelOutput` : [no documentation found]
    func createChannel(input: CreateChannelInput) async throws -> CreateChannelOutput
    /// Performs the `CreateLiveSource` operation on the `MediaTailor` service.
    ///
    /// The live source configuration.
    ///
    /// - Parameter CreateLiveSourceInput : [no documentation found]
    ///
    /// - Returns: `CreateLiveSourceOutput` : [no documentation found]
    func createLiveSource(input: CreateLiveSourceInput) async throws -> CreateLiveSourceOutput
    /// Performs the `CreatePrefetchSchedule` operation on the `MediaTailor` service.
    ///
    /// Creates a prefetch schedule for a playback configuration. A prefetch schedule allows you to tell MediaTailor to fetch and prepare certain ads before an ad break happens. For more information about ad prefetching, see [Using ad prefetching](https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html) in the MediaTailor User Guide.
    ///
    /// - Parameter CreatePrefetchScheduleInput : [no documentation found]
    ///
    /// - Returns: `CreatePrefetchScheduleOutput` : [no documentation found]
    func createPrefetchSchedule(input: CreatePrefetchScheduleInput) async throws -> CreatePrefetchScheduleOutput
    /// Performs the `CreateProgram` operation on the `MediaTailor` service.
    ///
    /// Creates a program within a channel. For information about programs, see [Working with programs](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html) in the MediaTailor User Guide.
    ///
    /// - Parameter CreateProgramInput : [no documentation found]
    ///
    /// - Returns: `CreateProgramOutput` : [no documentation found]
    func createProgram(input: CreateProgramInput) async throws -> CreateProgramOutput
    /// Performs the `CreateSourceLocation` operation on the `MediaTailor` service.
    ///
    /// Creates a source location. A source location is a container for sources. For more information about source locations, see [Working with source locations](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html) in the MediaTailor User Guide.
    ///
    /// - Parameter CreateSourceLocationInput : [no documentation found]
    ///
    /// - Returns: `CreateSourceLocationOutput` : [no documentation found]
    func createSourceLocation(input: CreateSourceLocationInput) async throws -> CreateSourceLocationOutput
    /// Performs the `CreateVodSource` operation on the `MediaTailor` service.
    ///
    /// The VOD source configuration parameters.
    ///
    /// - Parameter CreateVodSourceInput : [no documentation found]
    ///
    /// - Returns: `CreateVodSourceOutput` : [no documentation found]
    func createVodSource(input: CreateVodSourceInput) async throws -> CreateVodSourceOutput
    /// Performs the `DeleteChannel` operation on the `MediaTailor` service.
    ///
    /// Deletes a channel. For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html) in the MediaTailor User Guide.
    ///
    /// - Parameter DeleteChannelInput : [no documentation found]
    ///
    /// - Returns: `DeleteChannelOutput` : [no documentation found]
    func deleteChannel(input: DeleteChannelInput) async throws -> DeleteChannelOutput
    /// Performs the `DeleteChannelPolicy` operation on the `MediaTailor` service.
    ///
    /// The channel policy to delete.
    ///
    /// - Parameter DeleteChannelPolicyInput : [no documentation found]
    ///
    /// - Returns: `DeleteChannelPolicyOutput` : [no documentation found]
    func deleteChannelPolicy(input: DeleteChannelPolicyInput) async throws -> DeleteChannelPolicyOutput
    /// Performs the `DeleteLiveSource` operation on the `MediaTailor` service.
    ///
    /// The live source to delete.
    ///
    /// - Parameter DeleteLiveSourceInput : [no documentation found]
    ///
    /// - Returns: `DeleteLiveSourceOutput` : [no documentation found]
    func deleteLiveSource(input: DeleteLiveSourceInput) async throws -> DeleteLiveSourceOutput
    /// Performs the `DeletePlaybackConfiguration` operation on the `MediaTailor` service.
    ///
    /// Deletes a playback configuration. For information about MediaTailor configurations, see [Working with configurations in AWS Elemental MediaTailor](https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html).
    ///
    /// - Parameter DeletePlaybackConfigurationInput : [no documentation found]
    ///
    /// - Returns: `DeletePlaybackConfigurationOutput` : [no documentation found]
    func deletePlaybackConfiguration(input: DeletePlaybackConfigurationInput) async throws -> DeletePlaybackConfigurationOutput
    /// Performs the `DeletePrefetchSchedule` operation on the `MediaTailor` service.
    ///
    /// Deletes a prefetch schedule for a specific playback configuration. If you call DeletePrefetchSchedule on an expired prefetch schedule, MediaTailor returns an HTTP 404 status code. For more information about ad prefetching, see [Using ad prefetching](https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html) in the MediaTailor User Guide.
    ///
    /// - Parameter DeletePrefetchScheduleInput : [no documentation found]
    ///
    /// - Returns: `DeletePrefetchScheduleOutput` : [no documentation found]
    func deletePrefetchSchedule(input: DeletePrefetchScheduleInput) async throws -> DeletePrefetchScheduleOutput
    /// Performs the `DeleteProgram` operation on the `MediaTailor` service.
    ///
    /// Deletes a program within a channel. For information about programs, see [Working with programs](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html) in the MediaTailor User Guide.
    ///
    /// - Parameter DeleteProgramInput : [no documentation found]
    ///
    /// - Returns: `DeleteProgramOutput` : [no documentation found]
    func deleteProgram(input: DeleteProgramInput) async throws -> DeleteProgramOutput
    /// Performs the `DeleteSourceLocation` operation on the `MediaTailor` service.
    ///
    /// Deletes a source location. A source location is a container for sources. For more information about source locations, see [Working with source locations](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html) in the MediaTailor User Guide.
    ///
    /// - Parameter DeleteSourceLocationInput : [no documentation found]
    ///
    /// - Returns: `DeleteSourceLocationOutput` : [no documentation found]
    func deleteSourceLocation(input: DeleteSourceLocationInput) async throws -> DeleteSourceLocationOutput
    /// Performs the `DeleteVodSource` operation on the `MediaTailor` service.
    ///
    /// The video on demand (VOD) source to delete.
    ///
    /// - Parameter DeleteVodSourceInput : [no documentation found]
    ///
    /// - Returns: `DeleteVodSourceOutput` : [no documentation found]
    func deleteVodSource(input: DeleteVodSourceInput) async throws -> DeleteVodSourceOutput
    /// Performs the `DescribeChannel` operation on the `MediaTailor` service.
    ///
    /// Describes a channel. For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html) in the MediaTailor User Guide.
    ///
    /// - Parameter DescribeChannelInput : [no documentation found]
    ///
    /// - Returns: `DescribeChannelOutput` : [no documentation found]
    func describeChannel(input: DescribeChannelInput) async throws -> DescribeChannelOutput
    /// Performs the `DescribeLiveSource` operation on the `MediaTailor` service.
    ///
    /// The live source to describe.
    ///
    /// - Parameter DescribeLiveSourceInput : [no documentation found]
    ///
    /// - Returns: `DescribeLiveSourceOutput` : [no documentation found]
    func describeLiveSource(input: DescribeLiveSourceInput) async throws -> DescribeLiveSourceOutput
    /// Performs the `DescribeProgram` operation on the `MediaTailor` service.
    ///
    /// Describes a program within a channel. For information about programs, see [Working with programs](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html) in the MediaTailor User Guide.
    ///
    /// - Parameter DescribeProgramInput : [no documentation found]
    ///
    /// - Returns: `DescribeProgramOutput` : [no documentation found]
    func describeProgram(input: DescribeProgramInput) async throws -> DescribeProgramOutput
    /// Performs the `DescribeSourceLocation` operation on the `MediaTailor` service.
    ///
    /// Describes a source location. A source location is a container for sources. For more information about source locations, see [Working with source locations](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html) in the MediaTailor User Guide.
    ///
    /// - Parameter DescribeSourceLocationInput : [no documentation found]
    ///
    /// - Returns: `DescribeSourceLocationOutput` : [no documentation found]
    func describeSourceLocation(input: DescribeSourceLocationInput) async throws -> DescribeSourceLocationOutput
    /// Performs the `DescribeVodSource` operation on the `MediaTailor` service.
    ///
    /// Provides details about a specific video on demand (VOD) source in a specific source location.
    ///
    /// - Parameter DescribeVodSourceInput : [no documentation found]
    ///
    /// - Returns: `DescribeVodSourceOutput` : [no documentation found]
    func describeVodSource(input: DescribeVodSourceInput) async throws -> DescribeVodSourceOutput
    /// Performs the `GetChannelPolicy` operation on the `MediaTailor` service.
    ///
    /// Returns the channel's IAM policy. IAM policies are used to control access to your channel.
    ///
    /// - Parameter GetChannelPolicyInput : [no documentation found]
    ///
    /// - Returns: `GetChannelPolicyOutput` : [no documentation found]
    func getChannelPolicy(input: GetChannelPolicyInput) async throws -> GetChannelPolicyOutput
    /// Performs the `GetChannelSchedule` operation on the `MediaTailor` service.
    ///
    /// Retrieves information about your channel's schedule.
    ///
    /// - Parameter GetChannelScheduleInput : [no documentation found]
    ///
    /// - Returns: `GetChannelScheduleOutput` : [no documentation found]
    func getChannelSchedule(input: GetChannelScheduleInput) async throws -> GetChannelScheduleOutput
    /// Performs the `GetPlaybackConfiguration` operation on the `MediaTailor` service.
    ///
    /// Retrieves a playback configuration. For information about MediaTailor configurations, see [Working with configurations in AWS Elemental MediaTailor](https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html).
    ///
    /// - Parameter GetPlaybackConfigurationInput : [no documentation found]
    ///
    /// - Returns: `GetPlaybackConfigurationOutput` : [no documentation found]
    func getPlaybackConfiguration(input: GetPlaybackConfigurationInput) async throws -> GetPlaybackConfigurationOutput
    /// Performs the `GetPrefetchSchedule` operation on the `MediaTailor` service.
    ///
    /// Retrieves a prefetch schedule for a playback configuration. A prefetch schedule allows you to tell MediaTailor to fetch and prepare certain ads before an ad break happens. For more information about ad prefetching, see [Using ad prefetching](https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html) in the MediaTailor User Guide.
    ///
    /// - Parameter GetPrefetchScheduleInput : [no documentation found]
    ///
    /// - Returns: `GetPrefetchScheduleOutput` : [no documentation found]
    func getPrefetchSchedule(input: GetPrefetchScheduleInput) async throws -> GetPrefetchScheduleOutput
    /// Performs the `ListAlerts` operation on the `MediaTailor` service.
    ///
    /// Lists the alerts that are associated with a MediaTailor channel assembly resource.
    ///
    /// - Parameter ListAlertsInput : [no documentation found]
    ///
    /// - Returns: `ListAlertsOutput` : [no documentation found]
    func listAlerts(input: ListAlertsInput) async throws -> ListAlertsOutput
    /// Performs the `ListChannels` operation on the `MediaTailor` service.
    ///
    /// Retrieves information about the channels that are associated with the current AWS account.
    ///
    /// - Parameter ListChannelsInput : [no documentation found]
    ///
    /// - Returns: `ListChannelsOutput` : [no documentation found]
    func listChannels(input: ListChannelsInput) async throws -> ListChannelsOutput
    /// Performs the `ListLiveSources` operation on the `MediaTailor` service.
    ///
    /// Lists the live sources contained in a source location. A source represents a piece of content.
    ///
    /// - Parameter ListLiveSourcesInput : [no documentation found]
    ///
    /// - Returns: `ListLiveSourcesOutput` : [no documentation found]
    func listLiveSources(input: ListLiveSourcesInput) async throws -> ListLiveSourcesOutput
    /// Performs the `ListPlaybackConfigurations` operation on the `MediaTailor` service.
    ///
    /// Retrieves existing playback configurations. For information about MediaTailor configurations, see [Working with Configurations in AWS Elemental MediaTailor](https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html).
    ///
    /// - Parameter ListPlaybackConfigurationsInput : [no documentation found]
    ///
    /// - Returns: `ListPlaybackConfigurationsOutput` : [no documentation found]
    func listPlaybackConfigurations(input: ListPlaybackConfigurationsInput) async throws -> ListPlaybackConfigurationsOutput
    /// Performs the `ListPrefetchSchedules` operation on the `MediaTailor` service.
    ///
    /// Lists the prefetch schedules for a playback configuration.
    ///
    /// - Parameter ListPrefetchSchedulesInput : [no documentation found]
    ///
    /// - Returns: `ListPrefetchSchedulesOutput` : [no documentation found]
    func listPrefetchSchedules(input: ListPrefetchSchedulesInput) async throws -> ListPrefetchSchedulesOutput
    /// Performs the `ListSourceLocations` operation on the `MediaTailor` service.
    ///
    /// Lists the source locations for a channel. A source location defines the host server URL, and contains a list of sources.
    ///
    /// - Parameter ListSourceLocationsInput : [no documentation found]
    ///
    /// - Returns: `ListSourceLocationsOutput` : [no documentation found]
    func listSourceLocations(input: ListSourceLocationsInput) async throws -> ListSourceLocationsOutput
    /// Performs the `ListTagsForResource` operation on the `MediaTailor` service.
    ///
    /// A list of tags that are associated with this resource. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see [Tagging AWS Elemental MediaTailor Resources](https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html).
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : A request contains unexpected data.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Performs the `ListVodSources` operation on the `MediaTailor` service.
    ///
    /// Lists the VOD sources contained in a source location. A source represents a piece of content.
    ///
    /// - Parameter ListVodSourcesInput : [no documentation found]
    ///
    /// - Returns: `ListVodSourcesOutput` : [no documentation found]
    func listVodSources(input: ListVodSourcesInput) async throws -> ListVodSourcesOutput
    /// Performs the `PutChannelPolicy` operation on the `MediaTailor` service.
    ///
    /// Creates an IAM policy for the channel. IAM policies are used to control access to your channel.
    ///
    /// - Parameter PutChannelPolicyInput : [no documentation found]
    ///
    /// - Returns: `PutChannelPolicyOutput` : [no documentation found]
    func putChannelPolicy(input: PutChannelPolicyInput) async throws -> PutChannelPolicyOutput
    /// Performs the `PutPlaybackConfiguration` operation on the `MediaTailor` service.
    ///
    /// Creates a playback configuration. For information about MediaTailor configurations, see [Working with configurations in AWS Elemental MediaTailor](https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html).
    ///
    /// - Parameter PutPlaybackConfigurationInput : [no documentation found]
    ///
    /// - Returns: `PutPlaybackConfigurationOutput` : [no documentation found]
    func putPlaybackConfiguration(input: PutPlaybackConfigurationInput) async throws -> PutPlaybackConfigurationOutput
    /// Performs the `StartChannel` operation on the `MediaTailor` service.
    ///
    /// Starts a channel. For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html) in the MediaTailor User Guide.
    ///
    /// - Parameter StartChannelInput : [no documentation found]
    ///
    /// - Returns: `StartChannelOutput` : [no documentation found]
    func startChannel(input: StartChannelInput) async throws -> StartChannelOutput
    /// Performs the `StopChannel` operation on the `MediaTailor` service.
    ///
    /// Stops a channel. For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html) in the MediaTailor User Guide.
    ///
    /// - Parameter StopChannelInput : [no documentation found]
    ///
    /// - Returns: `StopChannelOutput` : [no documentation found]
    func stopChannel(input: StopChannelInput) async throws -> StopChannelOutput
    /// Performs the `TagResource` operation on the `MediaTailor` service.
    ///
    /// The resource to tag. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see [Tagging AWS Elemental MediaTailor Resources](https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html).
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : A request contains unexpected data.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Performs the `UntagResource` operation on the `MediaTailor` service.
    ///
    /// The resource to untag.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : A request contains unexpected data.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Performs the `UpdateChannel` operation on the `MediaTailor` service.
    ///
    /// Updates a channel. For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html) in the MediaTailor User Guide.
    ///
    /// - Parameter UpdateChannelInput : [no documentation found]
    ///
    /// - Returns: `UpdateChannelOutput` : [no documentation found]
    func updateChannel(input: UpdateChannelInput) async throws -> UpdateChannelOutput
    /// Performs the `UpdateLiveSource` operation on the `MediaTailor` service.
    ///
    /// Updates a live source's configuration.
    ///
    /// - Parameter UpdateLiveSourceInput : [no documentation found]
    ///
    /// - Returns: `UpdateLiveSourceOutput` : [no documentation found]
    func updateLiveSource(input: UpdateLiveSourceInput) async throws -> UpdateLiveSourceOutput
    /// Performs the `UpdateProgram` operation on the `MediaTailor` service.
    ///
    /// Updates a program within a channel.
    ///
    /// - Parameter UpdateProgramInput : [no documentation found]
    ///
    /// - Returns: `UpdateProgramOutput` : [no documentation found]
    func updateProgram(input: UpdateProgramInput) async throws -> UpdateProgramOutput
    /// Performs the `UpdateSourceLocation` operation on the `MediaTailor` service.
    ///
    /// Updates a source location. A source location is a container for sources. For more information about source locations, see [Working with source locations](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html) in the MediaTailor User Guide.
    ///
    /// - Parameter UpdateSourceLocationInput : [no documentation found]
    ///
    /// - Returns: `UpdateSourceLocationOutput` : [no documentation found]
    func updateSourceLocation(input: UpdateSourceLocationInput) async throws -> UpdateSourceLocationOutput
    /// Performs the `UpdateVodSource` operation on the `MediaTailor` service.
    ///
    /// Updates a VOD source's configuration.
    ///
    /// - Parameter UpdateVodSourceInput : [no documentation found]
    ///
    /// - Returns: `UpdateVodSourceOutput` : [no documentation found]
    func updateVodSource(input: UpdateVodSourceInput) async throws -> UpdateVodSourceOutput
}

public enum MediaTailorClientTypes {}

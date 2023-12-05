// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Pinpoint SMS and Voice Messaging public facing APIs
public protocol PinpointSMSVoiceClientProtocol {
    /// Performs the `CreateConfigurationSet` operation on the `PinpointSMSVoice` service.
    ///
    /// Create a new configuration set. After you create the configuration set, you can add one or more event destinations to it.
    ///
    /// - Parameter CreateConfigurationSetInput : A request to create a new configuration set.
    ///
    /// - Returns: `CreateConfigurationSetOutput` : An empty object that indicates that the configuration set was successfully created.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AlreadyExistsException` : The resource specified in your request already exists.
    /// - `BadRequestException` : The input you provided is invalid.
    /// - `InternalServiceErrorException` : The API encountered an unexpected error and couldn't complete the request. You might be able to successfully issue the request again in the future.
    /// - `LimitExceededException` : There are too many instances of the specified resource type.
    /// - `TooManyRequestsException` : You've issued too many requests to the resource. Wait a few minutes, and then try again.
    func createConfigurationSet(input: CreateConfigurationSetInput) async throws -> CreateConfigurationSetOutput
    /// Performs the `CreateConfigurationSetEventDestination` operation on the `PinpointSMSVoice` service.
    ///
    /// Create a new event destination in a configuration set.
    ///
    /// - Parameter CreateConfigurationSetEventDestinationInput : Create a new event destination in a configuration set.
    ///
    /// - Returns: `CreateConfigurationSetEventDestinationOutput` : An empty object that indicates that the event destination was created successfully.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AlreadyExistsException` : The resource specified in your request already exists.
    /// - `BadRequestException` : The input you provided is invalid.
    /// - `InternalServiceErrorException` : The API encountered an unexpected error and couldn't complete the request. You might be able to successfully issue the request again in the future.
    /// - `LimitExceededException` : There are too many instances of the specified resource type.
    /// - `NotFoundException` : The resource you attempted to access doesn't exist.
    /// - `TooManyRequestsException` : You've issued too many requests to the resource. Wait a few minutes, and then try again.
    func createConfigurationSetEventDestination(input: CreateConfigurationSetEventDestinationInput) async throws -> CreateConfigurationSetEventDestinationOutput
    /// Performs the `DeleteConfigurationSet` operation on the `PinpointSMSVoice` service.
    ///
    /// Deletes an existing configuration set.
    ///
    /// - Parameter DeleteConfigurationSetInput : [no documentation found]
    ///
    /// - Returns: `DeleteConfigurationSetOutput` : An empty object that indicates that the configuration set was deleted successfully.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input you provided is invalid.
    /// - `InternalServiceErrorException` : The API encountered an unexpected error and couldn't complete the request. You might be able to successfully issue the request again in the future.
    /// - `NotFoundException` : The resource you attempted to access doesn't exist.
    /// - `TooManyRequestsException` : You've issued too many requests to the resource. Wait a few minutes, and then try again.
    func deleteConfigurationSet(input: DeleteConfigurationSetInput) async throws -> DeleteConfigurationSetOutput
    /// Performs the `DeleteConfigurationSetEventDestination` operation on the `PinpointSMSVoice` service.
    ///
    /// Deletes an event destination in a configuration set.
    ///
    /// - Parameter DeleteConfigurationSetEventDestinationInput : [no documentation found]
    ///
    /// - Returns: `DeleteConfigurationSetEventDestinationOutput` : An empty object that indicates that the event destination was deleted successfully.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input you provided is invalid.
    /// - `InternalServiceErrorException` : The API encountered an unexpected error and couldn't complete the request. You might be able to successfully issue the request again in the future.
    /// - `NotFoundException` : The resource you attempted to access doesn't exist.
    /// - `TooManyRequestsException` : You've issued too many requests to the resource. Wait a few minutes, and then try again.
    func deleteConfigurationSetEventDestination(input: DeleteConfigurationSetEventDestinationInput) async throws -> DeleteConfigurationSetEventDestinationOutput
    /// Performs the `GetConfigurationSetEventDestinations` operation on the `PinpointSMSVoice` service.
    ///
    /// Obtain information about an event destination, including the types of events it reports, the Amazon Resource Name (ARN) of the destination, and the name of the event destination.
    ///
    /// - Parameter GetConfigurationSetEventDestinationsInput : [no documentation found]
    ///
    /// - Returns: `GetConfigurationSetEventDestinationsOutput` : An object that contains information about an event destination.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input you provided is invalid.
    /// - `InternalServiceErrorException` : The API encountered an unexpected error and couldn't complete the request. You might be able to successfully issue the request again in the future.
    /// - `NotFoundException` : The resource you attempted to access doesn't exist.
    /// - `TooManyRequestsException` : You've issued too many requests to the resource. Wait a few minutes, and then try again.
    func getConfigurationSetEventDestinations(input: GetConfigurationSetEventDestinationsInput) async throws -> GetConfigurationSetEventDestinationsOutput
    /// Performs the `ListConfigurationSets` operation on the `PinpointSMSVoice` service.
    ///
    /// List all of the configuration sets associated with your Amazon Pinpoint account in the current region.
    ///
    /// - Parameter ListConfigurationSetsInput : [no documentation found]
    ///
    /// - Returns: `ListConfigurationSetsOutput` : An object that contains information about the configuration sets for your account in the current region.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input you provided is invalid.
    /// - `InternalServiceErrorException` : The API encountered an unexpected error and couldn't complete the request. You might be able to successfully issue the request again in the future.
    /// - `TooManyRequestsException` : You've issued too many requests to the resource. Wait a few minutes, and then try again.
    func listConfigurationSets(input: ListConfigurationSetsInput) async throws -> ListConfigurationSetsOutput
    /// Performs the `SendVoiceMessage` operation on the `PinpointSMSVoice` service.
    ///
    /// Create a new voice message and send it to a recipient's phone number.
    ///
    /// - Parameter SendVoiceMessageInput : SendVoiceMessageRequest
    ///
    /// - Returns: `SendVoiceMessageOutput` : An object that that contains the Message ID of a Voice message that was sent successfully.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input you provided is invalid.
    /// - `InternalServiceErrorException` : The API encountered an unexpected error and couldn't complete the request. You might be able to successfully issue the request again in the future.
    /// - `TooManyRequestsException` : You've issued too many requests to the resource. Wait a few minutes, and then try again.
    func sendVoiceMessage(input: SendVoiceMessageInput) async throws -> SendVoiceMessageOutput
    /// Performs the `UpdateConfigurationSetEventDestination` operation on the `PinpointSMSVoice` service.
    ///
    /// Update an event destination in a configuration set. An event destination is a location that you publish information about your voice calls to. For example, you can log an event to an Amazon CloudWatch destination when a call fails.
    ///
    /// - Parameter UpdateConfigurationSetEventDestinationInput : UpdateConfigurationSetEventDestinationRequest
    ///
    /// - Returns: `UpdateConfigurationSetEventDestinationOutput` : An empty object that indicates that the event destination was updated successfully.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The input you provided is invalid.
    /// - `InternalServiceErrorException` : The API encountered an unexpected error and couldn't complete the request. You might be able to successfully issue the request again in the future.
    /// - `NotFoundException` : The resource you attempted to access doesn't exist.
    /// - `TooManyRequestsException` : You've issued too many requests to the resource. Wait a few minutes, and then try again.
    func updateConfigurationSetEventDestination(input: UpdateConfigurationSetEventDestinationInput) async throws -> UpdateConfigurationSetEventDestinationOutput
}

public enum PinpointSMSVoiceClientTypes {}

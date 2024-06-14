// Code generated by smithy-swift-codegen. DO NOT EDIT!

import class SmithyWaitersAPI.Waiter
import enum SmithyWaitersAPI.JMESUtils
import protocol ClientRuntime.ServiceError
import struct SmithyWaitersAPI.WaiterConfiguration
import struct SmithyWaitersAPI.WaiterOptions
import struct SmithyWaitersAPI.WaiterOutcome

extension KinesisClient {

    static func streamExistsWaiterConfig() throws -> SmithyWaitersAPI.WaiterConfiguration<DescribeStreamInput, DescribeStreamOutput> {
        let acceptors: [SmithyWaitersAPI.WaiterConfiguration<DescribeStreamInput, DescribeStreamOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeStreamInput, result: Swift.Result<DescribeStreamOutput, Swift.Error>) -> Bool in
                // JMESPath expression: "StreamDescription.StreamStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "ACTIVE"
                guard case .success(let output) = result else { return false }
                let streamDescription = output.streamDescription
                let streamStatus = streamDescription?.streamStatus
                return SmithyWaitersAPI.JMESUtils.compare(streamStatus, ==, "ACTIVE")
            }),
        ]
        return try SmithyWaitersAPI.WaiterConfiguration<DescribeStreamInput, DescribeStreamOutput>(acceptors: acceptors, minDelay: 10.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the StreamExists event on the describeStream operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeStreamInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilStreamExists(options: SmithyWaitersAPI.WaiterOptions, input: DescribeStreamInput) async throws -> SmithyWaitersAPI.WaiterOutcome<DescribeStreamOutput> {
        let waiter = SmithyWaitersAPI.Waiter(config: try Self.streamExistsWaiterConfig(), operation: self.describeStream(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func streamNotExistsWaiterConfig() throws -> SmithyWaitersAPI.WaiterConfiguration<DescribeStreamInput, DescribeStreamOutput> {
        let acceptors: [SmithyWaitersAPI.WaiterConfiguration<DescribeStreamInput, DescribeStreamOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeStreamInput, result: Swift.Result<DescribeStreamOutput, Swift.Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ClientRuntime.ServiceError)?.typeName == "ResourceNotFoundException"
            }),
        ]
        return try SmithyWaitersAPI.WaiterConfiguration<DescribeStreamInput, DescribeStreamOutput>(acceptors: acceptors, minDelay: 10.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the StreamNotExists event on the describeStream operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeStreamInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilStreamNotExists(options: SmithyWaitersAPI.WaiterOptions, input: DescribeStreamInput) async throws -> SmithyWaitersAPI.WaiterOutcome<DescribeStreamOutput> {
        let waiter = SmithyWaitersAPI.Waiter(config: try Self.streamNotExistsWaiterConfig(), operation: self.describeStream(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }
}

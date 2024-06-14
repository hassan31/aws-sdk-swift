// Code generated by smithy-swift-codegen. DO NOT EDIT!

import class SmithyWaitersAPI.Waiter
import enum SmithyWaitersAPI.JMESUtils
import struct SmithyWaitersAPI.WaiterConfiguration
import struct SmithyWaitersAPI.WaiterOptions
import struct SmithyWaitersAPI.WaiterOutcome

extension OpsWorksCMClient {

    static func nodeAssociatedWaiterConfig() throws -> SmithyWaitersAPI.WaiterConfiguration<DescribeNodeAssociationStatusInput, DescribeNodeAssociationStatusOutput> {
        let acceptors: [SmithyWaitersAPI.WaiterConfiguration<DescribeNodeAssociationStatusInput, DescribeNodeAssociationStatusOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeNodeAssociationStatusInput, result: Swift.Result<DescribeNodeAssociationStatusOutput, Swift.Error>) -> Bool in
                // JMESPath expression: "NodeAssociationStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "SUCCESS"
                guard case .success(let output) = result else { return false }
                let nodeAssociationStatus = output.nodeAssociationStatus
                return SmithyWaitersAPI.JMESUtils.compare(nodeAssociationStatus, ==, "SUCCESS")
            }),
            .init(state: .failure, matcher: { (input: DescribeNodeAssociationStatusInput, result: Swift.Result<DescribeNodeAssociationStatusOutput, Swift.Error>) -> Bool in
                // JMESPath expression: "NodeAssociationStatus"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "FAILED"
                guard case .success(let output) = result else { return false }
                let nodeAssociationStatus = output.nodeAssociationStatus
                return SmithyWaitersAPI.JMESUtils.compare(nodeAssociationStatus, ==, "FAILED")
            }),
        ]
        return try SmithyWaitersAPI.WaiterConfiguration<DescribeNodeAssociationStatusInput, DescribeNodeAssociationStatusOutput>(acceptors: acceptors, minDelay: 15.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the NodeAssociated event on the describeNodeAssociationStatus operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeNodeAssociationStatusInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilNodeAssociated(options: SmithyWaitersAPI.WaiterOptions, input: DescribeNodeAssociationStatusInput) async throws -> SmithyWaitersAPI.WaiterOutcome<DescribeNodeAssociationStatusOutput> {
        let waiter = SmithyWaitersAPI.Waiter(config: try Self.nodeAssociatedWaiterConfig(), operation: self.describeNodeAssociationStatus(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }
}

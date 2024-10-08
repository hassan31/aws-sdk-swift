//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import class SmithyWaitersAPI.Waiter
import enum SmithyWaitersAPI.JMESUtils
import struct SmithyWaitersAPI.WaiterConfiguration
import struct SmithyWaitersAPI.WaiterOptions
import struct SmithyWaitersAPI.WaiterOutcome

extension AutoScalingClient {

    static func groupExistsWaiterConfig() throws -> SmithyWaitersAPI.WaiterConfiguration<DescribeAutoScalingGroupsInput, DescribeAutoScalingGroupsOutput> {
        let acceptors: [SmithyWaitersAPI.WaiterConfiguration<DescribeAutoScalingGroupsInput, DescribeAutoScalingGroupsOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeAutoScalingGroupsInput, result: Swift.Result<DescribeAutoScalingGroupsOutput, Swift.Error>) -> Bool in
                // JMESPath expression: "length(AutoScalingGroups) > `0`"
                // JMESPath comparator: "booleanEquals"
                // JMESPath expected value: "true"
                guard case .success(let output) = result else { return false }
                let autoScalingGroups = output.autoScalingGroups
                let count = Double(autoScalingGroups?.count ?? 0)
                let number = Double(0.0)
                let comparison = SmithyWaitersAPI.JMESUtils.compare(count, >, number)
                return SmithyWaitersAPI.JMESUtils.compare(comparison, ==, true)
            }),
            .init(state: .retry, matcher: { (input: DescribeAutoScalingGroupsInput, result: Swift.Result<DescribeAutoScalingGroupsOutput, Swift.Error>) -> Bool in
                // JMESPath expression: "length(AutoScalingGroups) > `0`"
                // JMESPath comparator: "booleanEquals"
                // JMESPath expected value: "false"
                guard case .success(let output) = result else { return false }
                let autoScalingGroups = output.autoScalingGroups
                let count = Double(autoScalingGroups?.count ?? 0)
                let number = Double(0.0)
                let comparison = SmithyWaitersAPI.JMESUtils.compare(count, >, number)
                return SmithyWaitersAPI.JMESUtils.compare(comparison, ==, false)
            }),
        ]
        return try SmithyWaitersAPI.WaiterConfiguration<DescribeAutoScalingGroupsInput, DescribeAutoScalingGroupsOutput>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the GroupExists event on the describeAutoScalingGroups operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeAutoScalingGroupsInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilGroupExists(options: SmithyWaitersAPI.WaiterOptions, input: DescribeAutoScalingGroupsInput) async throws -> SmithyWaitersAPI.WaiterOutcome<DescribeAutoScalingGroupsOutput> {
        let waiter = SmithyWaitersAPI.Waiter(config: try Self.groupExistsWaiterConfig(), operation: self.describeAutoScalingGroups(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func groupInServiceWaiterConfig() throws -> SmithyWaitersAPI.WaiterConfiguration<DescribeAutoScalingGroupsInput, DescribeAutoScalingGroupsOutput> {
        let acceptors: [SmithyWaitersAPI.WaiterConfiguration<DescribeAutoScalingGroupsInput, DescribeAutoScalingGroupsOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeAutoScalingGroupsInput, result: Swift.Result<DescribeAutoScalingGroupsOutput, Swift.Error>) -> Bool in
                // JMESPath expression: "contains(AutoScalingGroups[].[length(Instances[?LifecycleState=='InService']) >= MinSize][], `false`)"
                // JMESPath comparator: "booleanEquals"
                // JMESPath expected value: "false"
                guard case .success(let output) = result else { return false }
                let autoScalingGroups = output.autoScalingGroups
                let projection: [Swift.Bool]? = autoScalingGroups?.compactMap { original in
                    let instances = original.instances
                    let instancesFiltered: [AutoScalingClientTypes.Instance]? = instances?.filter { original in
                        let lifecycleState = original.lifecycleState
                        let string = "InService"
                        let comparison = SmithyWaitersAPI.JMESUtils.compare(lifecycleState, ==, string)
                        return comparison
                    }
                    let count = Double(instancesFiltered?.count ?? 0)
                    let minSize = original.minSize
                    let comparison = SmithyWaitersAPI.JMESUtils.compare(count, >=, minSize)
                    return comparison
                }
                let bool = false
                let contains = projection?.contains(bool) ?? false
                return SmithyWaitersAPI.JMESUtils.compare(contains, ==, false)
            }),
            .init(state: .retry, matcher: { (input: DescribeAutoScalingGroupsInput, result: Swift.Result<DescribeAutoScalingGroupsOutput, Swift.Error>) -> Bool in
                // JMESPath expression: "contains(AutoScalingGroups[].[length(Instances[?LifecycleState=='InService']) >= MinSize][], `false`)"
                // JMESPath comparator: "booleanEquals"
                // JMESPath expected value: "true"
                guard case .success(let output) = result else { return false }
                let autoScalingGroups = output.autoScalingGroups
                let projection: [Swift.Bool]? = autoScalingGroups?.compactMap { original in
                    let instances = original.instances
                    let instancesFiltered: [AutoScalingClientTypes.Instance]? = instances?.filter { original in
                        let lifecycleState = original.lifecycleState
                        let string = "InService"
                        let comparison = SmithyWaitersAPI.JMESUtils.compare(lifecycleState, ==, string)
                        return comparison
                    }
                    let count = Double(instancesFiltered?.count ?? 0)
                    let minSize = original.minSize
                    let comparison = SmithyWaitersAPI.JMESUtils.compare(count, >=, minSize)
                    return comparison
                }
                let bool = false
                let contains = projection?.contains(bool) ?? false
                return SmithyWaitersAPI.JMESUtils.compare(contains, ==, true)
            }),
        ]
        return try SmithyWaitersAPI.WaiterConfiguration<DescribeAutoScalingGroupsInput, DescribeAutoScalingGroupsOutput>(acceptors: acceptors, minDelay: 15.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the GroupInService event on the describeAutoScalingGroups operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeAutoScalingGroupsInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilGroupInService(options: SmithyWaitersAPI.WaiterOptions, input: DescribeAutoScalingGroupsInput) async throws -> SmithyWaitersAPI.WaiterOutcome<DescribeAutoScalingGroupsOutput> {
        let waiter = SmithyWaitersAPI.Waiter(config: try Self.groupInServiceWaiterConfig(), operation: self.describeAutoScalingGroups(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func groupNotExistsWaiterConfig() throws -> SmithyWaitersAPI.WaiterConfiguration<DescribeAutoScalingGroupsInput, DescribeAutoScalingGroupsOutput> {
        let acceptors: [SmithyWaitersAPI.WaiterConfiguration<DescribeAutoScalingGroupsInput, DescribeAutoScalingGroupsOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeAutoScalingGroupsInput, result: Swift.Result<DescribeAutoScalingGroupsOutput, Swift.Error>) -> Bool in
                // JMESPath expression: "length(AutoScalingGroups) > `0`"
                // JMESPath comparator: "booleanEquals"
                // JMESPath expected value: "false"
                guard case .success(let output) = result else { return false }
                let autoScalingGroups = output.autoScalingGroups
                let count = Double(autoScalingGroups?.count ?? 0)
                let number = Double(0.0)
                let comparison = SmithyWaitersAPI.JMESUtils.compare(count, >, number)
                return SmithyWaitersAPI.JMESUtils.compare(comparison, ==, false)
            }),
            .init(state: .retry, matcher: { (input: DescribeAutoScalingGroupsInput, result: Swift.Result<DescribeAutoScalingGroupsOutput, Swift.Error>) -> Bool in
                // JMESPath expression: "length(AutoScalingGroups) > `0`"
                // JMESPath comparator: "booleanEquals"
                // JMESPath expected value: "true"
                guard case .success(let output) = result else { return false }
                let autoScalingGroups = output.autoScalingGroups
                let count = Double(autoScalingGroups?.count ?? 0)
                let number = Double(0.0)
                let comparison = SmithyWaitersAPI.JMESUtils.compare(count, >, number)
                return SmithyWaitersAPI.JMESUtils.compare(comparison, ==, true)
            }),
        ]
        return try SmithyWaitersAPI.WaiterConfiguration<DescribeAutoScalingGroupsInput, DescribeAutoScalingGroupsOutput>(acceptors: acceptors, minDelay: 15.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the GroupNotExists event on the describeAutoScalingGroups operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeAutoScalingGroupsInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilGroupNotExists(options: SmithyWaitersAPI.WaiterOptions, input: DescribeAutoScalingGroupsInput) async throws -> SmithyWaitersAPI.WaiterOutcome<DescribeAutoScalingGroupsOutput> {
        let waiter = SmithyWaitersAPI.Waiter(config: try Self.groupNotExistsWaiterConfig(), operation: self.describeAutoScalingGroups(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }
}

//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

@testable import AWSInspector
import SmithyTestUtil
import XCTest
import enum ClientRuntime.EndpointError
import struct SmithyHTTPAPI.Endpoint
import struct SmithyHTTPAPI.Headers

class EndpointResolverTest: XCTestCase {

    override class func setUp() {
        SmithyTestUtil.TestInitializer.initialize()
    }

    /// For region ap-northeast-1 with FIPS disabled and DualStack disabled
    func testResolve1() throws {
        let endpointParams = EndpointParams(
            region: "ap-northeast-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector.ap-northeast-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-northeast-2 with FIPS disabled and DualStack disabled
    func testResolve2() throws {
        let endpointParams = EndpointParams(
            region: "ap-northeast-2",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector.ap-northeast-2.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-south-1 with FIPS disabled and DualStack disabled
    func testResolve3() throws {
        let endpointParams = EndpointParams(
            region: "ap-south-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector.ap-south-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region ap-southeast-2 with FIPS disabled and DualStack disabled
    func testResolve4() throws {
        let endpointParams = EndpointParams(
            region: "ap-southeast-2",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector.ap-southeast-2.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region eu-central-1 with FIPS disabled and DualStack disabled
    func testResolve5() throws {
        let endpointParams = EndpointParams(
            region: "eu-central-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector.eu-central-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region eu-north-1 with FIPS disabled and DualStack disabled
    func testResolve6() throws {
        let endpointParams = EndpointParams(
            region: "eu-north-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector.eu-north-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region eu-west-1 with FIPS disabled and DualStack disabled
    func testResolve7() throws {
        let endpointParams = EndpointParams(
            region: "eu-west-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector.eu-west-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region eu-west-2 with FIPS disabled and DualStack disabled
    func testResolve8() throws {
        let endpointParams = EndpointParams(
            region: "eu-west-2",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector.eu-west-2.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-1 with FIPS disabled and DualStack disabled
    func testResolve9() throws {
        let endpointParams = EndpointParams(
            region: "us-east-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector.us-east-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-1 with FIPS enabled and DualStack disabled
    func testResolve10() throws {
        let endpointParams = EndpointParams(
            region: "us-east-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector-fips.us-east-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-2 with FIPS disabled and DualStack disabled
    func testResolve11() throws {
        let endpointParams = EndpointParams(
            region: "us-east-2",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector.us-east-2.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-2 with FIPS enabled and DualStack disabled
    func testResolve12() throws {
        let endpointParams = EndpointParams(
            region: "us-east-2",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector-fips.us-east-2.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-west-1 with FIPS disabled and DualStack disabled
    func testResolve13() throws {
        let endpointParams = EndpointParams(
            region: "us-west-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector.us-west-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-west-1 with FIPS enabled and DualStack disabled
    func testResolve14() throws {
        let endpointParams = EndpointParams(
            region: "us-west-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector-fips.us-west-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-west-2 with FIPS disabled and DualStack disabled
    func testResolve15() throws {
        let endpointParams = EndpointParams(
            region: "us-west-2",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector.us-west-2.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-west-2 with FIPS enabled and DualStack disabled
    func testResolve16() throws {
        let endpointParams = EndpointParams(
            region: "us-west-2",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector-fips.us-west-2.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-1 with FIPS enabled and DualStack enabled
    func testResolve17() throws {
        let endpointParams = EndpointParams(
            region: "us-east-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector-fips.us-east-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-1 with FIPS disabled and DualStack enabled
    func testResolve18() throws {
        let endpointParams = EndpointParams(
            region: "us-east-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector.us-east-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region cn-north-1 with FIPS enabled and DualStack enabled
    func testResolve19() throws {
        let endpointParams = EndpointParams(
            region: "cn-north-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector-fips.cn-north-1.api.amazonwebservices.com.cn", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region cn-north-1 with FIPS enabled and DualStack disabled
    func testResolve20() throws {
        let endpointParams = EndpointParams(
            region: "cn-north-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector-fips.cn-north-1.amazonaws.com.cn", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region cn-north-1 with FIPS disabled and DualStack enabled
    func testResolve21() throws {
        let endpointParams = EndpointParams(
            region: "cn-north-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector.cn-north-1.api.amazonwebservices.com.cn", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region cn-north-1 with FIPS disabled and DualStack disabled
    func testResolve22() throws {
        let endpointParams = EndpointParams(
            region: "cn-north-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector.cn-north-1.amazonaws.com.cn", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-gov-east-1 with FIPS disabled and DualStack disabled
    func testResolve23() throws {
        let endpointParams = EndpointParams(
            region: "us-gov-east-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector.us-gov-east-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-gov-east-1 with FIPS enabled and DualStack disabled
    func testResolve24() throws {
        let endpointParams = EndpointParams(
            region: "us-gov-east-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector-fips.us-gov-east-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-gov-west-1 with FIPS disabled and DualStack disabled
    func testResolve25() throws {
        let endpointParams = EndpointParams(
            region: "us-gov-west-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector.us-gov-west-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-gov-west-1 with FIPS enabled and DualStack disabled
    func testResolve26() throws {
        let endpointParams = EndpointParams(
            region: "us-gov-west-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector-fips.us-gov-west-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-gov-east-1 with FIPS enabled and DualStack enabled
    func testResolve27() throws {
        let endpointParams = EndpointParams(
            region: "us-gov-east-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector-fips.us-gov-east-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-gov-east-1 with FIPS disabled and DualStack enabled
    func testResolve28() throws {
        let endpointParams = EndpointParams(
            region: "us-gov-east-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector.us-gov-east-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-iso-east-1 with FIPS enabled and DualStack enabled
    func testResolve29() throws {
        let endpointParams = EndpointParams(
            region: "us-iso-east-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        XCTAssertThrowsError(try resolver.resolve(params: endpointParams)) { error in
            switch error {
            case ClientRuntime.EndpointError.unresolved(let message):
                XCTAssertEqual("FIPS and DualStack are enabled, but this partition does not support one or both", message)
            default:
                XCTFail()
            }
        }
    }

    /// For region us-iso-east-1 with FIPS enabled and DualStack disabled
    func testResolve30() throws {
        let endpointParams = EndpointParams(
            region: "us-iso-east-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector-fips.us-iso-east-1.c2s.ic.gov", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-iso-east-1 with FIPS disabled and DualStack enabled
    func testResolve31() throws {
        let endpointParams = EndpointParams(
            region: "us-iso-east-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        XCTAssertThrowsError(try resolver.resolve(params: endpointParams)) { error in
            switch error {
            case ClientRuntime.EndpointError.unresolved(let message):
                XCTAssertEqual("DualStack is enabled but this partition does not support DualStack", message)
            default:
                XCTFail()
            }
        }
    }

    /// For region us-iso-east-1 with FIPS disabled and DualStack disabled
    func testResolve32() throws {
        let endpointParams = EndpointParams(
            region: "us-iso-east-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector.us-iso-east-1.c2s.ic.gov", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-isob-east-1 with FIPS enabled and DualStack enabled
    func testResolve33() throws {
        let endpointParams = EndpointParams(
            region: "us-isob-east-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        XCTAssertThrowsError(try resolver.resolve(params: endpointParams)) { error in
            switch error {
            case ClientRuntime.EndpointError.unresolved(let message):
                XCTAssertEqual("FIPS and DualStack are enabled, but this partition does not support one or both", message)
            default:
                XCTFail()
            }
        }
    }

    /// For region us-isob-east-1 with FIPS enabled and DualStack disabled
    func testResolve34() throws {
        let endpointParams = EndpointParams(
            region: "us-isob-east-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector-fips.us-isob-east-1.sc2s.sgov.gov", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-isob-east-1 with FIPS disabled and DualStack enabled
    func testResolve35() throws {
        let endpointParams = EndpointParams(
            region: "us-isob-east-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        XCTAssertThrowsError(try resolver.resolve(params: endpointParams)) { error in
            switch error {
            case ClientRuntime.EndpointError.unresolved(let message):
                XCTAssertEqual("DualStack is enabled but this partition does not support DualStack", message)
            default:
                XCTFail()
            }
        }
    }

    /// For region us-isob-east-1 with FIPS disabled and DualStack disabled
    func testResolve36() throws {
        let endpointParams = EndpointParams(
            region: "us-isob-east-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://inspector.us-isob-east-1.sc2s.sgov.gov", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For custom endpoint with region set and fips disabled and dualstack disabled
    func testResolve37() throws {
        let endpointParams = EndpointParams(
            endpoint: "https://example.com",
            region: "us-east-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://example.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For custom endpoint with region not set and fips disabled and dualstack disabled
    func testResolve38() throws {
        let endpointParams = EndpointParams(
            endpoint: "https://example.com",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = SmithyHTTPAPI.Headers()
        let expected = try SmithyHTTPAPI.Endpoint(urlString: "https://example.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For custom endpoint with fips enabled and dualstack disabled
    func testResolve39() throws {
        let endpointParams = EndpointParams(
            endpoint: "https://example.com",
            region: "us-east-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        XCTAssertThrowsError(try resolver.resolve(params: endpointParams)) { error in
            switch error {
            case ClientRuntime.EndpointError.unresolved(let message):
                XCTAssertEqual("Invalid Configuration: FIPS and custom endpoint are not supported", message)
            default:
                XCTFail()
            }
        }
    }

    /// For custom endpoint with fips disabled and dualstack enabled
    func testResolve40() throws {
        let endpointParams = EndpointParams(
            endpoint: "https://example.com",
            region: "us-east-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        XCTAssertThrowsError(try resolver.resolve(params: endpointParams)) { error in
            switch error {
            case ClientRuntime.EndpointError.unresolved(let message):
                XCTAssertEqual("Invalid Configuration: Dualstack and custom endpoint are not supported", message)
            default:
                XCTFail()
            }
        }
    }

    /// Missing region
    func testResolve41() throws {
        let endpointParams = EndpointParams(
        )
        let resolver = try DefaultEndpointResolver()

        XCTAssertThrowsError(try resolver.resolve(params: endpointParams)) { error in
            switch error {
            case ClientRuntime.EndpointError.unresolved(let message):
                XCTAssertEqual("Invalid Configuration: Missing Region", message)
            default:
                XCTFail()
            }
        }
    }

}

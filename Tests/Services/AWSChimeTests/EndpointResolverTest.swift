// Code generated by smithy-swift-codegen. DO NOT EDIT!

@testable import AWSChime
import AWSClientRuntime
import AwsCommonRuntimeKit
import ClientRuntime
import SmithyTestUtil
import XCTest

class EndpointResolverTest: XCTestCase {

    override class func setUp() {
        AwsCommonRuntimeKit.CommonRuntimeKit.initialize()
    }

    /// For region aws-global with FIPS disabled and DualStack disabled
    func testResolve1() throws {
        let endpointParams = EndpointParams(
            region: "aws-global",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [
                "authSchemes": [
                    [
                        "signingRegion": "us-east-1",
                        "name": "sigv4",
                        "signingName": "chime"
                    ] as [String: AnyHashable]
                ] as [AnyHashable]
            ]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://chime.us-east-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-1 with FIPS enabled and DualStack enabled
    func testResolve2() throws {
        let endpointParams = EndpointParams(
            region: "us-east-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://chime-fips.us-east-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-1 with FIPS enabled and DualStack disabled
    func testResolve3() throws {
        let endpointParams = EndpointParams(
            region: "us-east-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://chime-fips.us-east-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-1 with FIPS disabled and DualStack enabled
    func testResolve4() throws {
        let endpointParams = EndpointParams(
            region: "us-east-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://chime.us-east-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-1 with FIPS disabled and DualStack disabled
    func testResolve5() throws {
        let endpointParams = EndpointParams(
            region: "us-east-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [
                "authSchemes": [
                    [
                        "signingRegion": "us-east-1",
                        "name": "sigv4",
                        "signingName": "chime"
                    ] as [String: AnyHashable]
                ] as [AnyHashable]
            ]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://chime.us-east-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region cn-north-1 with FIPS enabled and DualStack enabled
    func testResolve6() throws {
        let endpointParams = EndpointParams(
            region: "cn-north-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://chime-fips.cn-north-1.api.amazonwebservices.com.cn", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region cn-north-1 with FIPS enabled and DualStack disabled
    func testResolve7() throws {
        let endpointParams = EndpointParams(
            region: "cn-north-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://chime-fips.cn-north-1.amazonaws.com.cn", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region cn-north-1 with FIPS disabled and DualStack enabled
    func testResolve8() throws {
        let endpointParams = EndpointParams(
            region: "cn-north-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://chime.cn-north-1.api.amazonwebservices.com.cn", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region cn-north-1 with FIPS disabled and DualStack disabled
    func testResolve9() throws {
        let endpointParams = EndpointParams(
            region: "cn-north-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://chime.cn-north-1.amazonaws.com.cn", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-gov-east-1 with FIPS enabled and DualStack enabled
    func testResolve10() throws {
        let endpointParams = EndpointParams(
            region: "us-gov-east-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://chime-fips.us-gov-east-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-gov-east-1 with FIPS enabled and DualStack disabled
    func testResolve11() throws {
        let endpointParams = EndpointParams(
            region: "us-gov-east-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://chime-fips.us-gov-east-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-gov-east-1 with FIPS disabled and DualStack enabled
    func testResolve12() throws {
        let endpointParams = EndpointParams(
            region: "us-gov-east-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://chime.us-gov-east-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-gov-east-1 with FIPS disabled and DualStack disabled
    func testResolve13() throws {
        let endpointParams = EndpointParams(
            region: "us-gov-east-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://chime.us-gov-east-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-iso-east-1 with FIPS enabled and DualStack disabled
    func testResolve14() throws {
        let endpointParams = EndpointParams(
            region: "us-iso-east-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://chime-fips.us-iso-east-1.c2s.ic.gov", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-iso-east-1 with FIPS disabled and DualStack disabled
    func testResolve15() throws {
        let endpointParams = EndpointParams(
            region: "us-iso-east-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://chime.us-iso-east-1.c2s.ic.gov", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-isob-east-1 with FIPS enabled and DualStack disabled
    func testResolve16() throws {
        let endpointParams = EndpointParams(
            region: "us-isob-east-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://chime-fips.us-isob-east-1.sc2s.sgov.gov", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-isob-east-1 with FIPS disabled and DualStack disabled
    func testResolve17() throws {
        let endpointParams = EndpointParams(
            region: "us-isob-east-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://chime.us-isob-east-1.sc2s.sgov.gov", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For custom endpoint with region set and fips disabled and dualstack disabled
    func testResolve18() throws {
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

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://example.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For custom endpoint with region not set and fips disabled and dualstack disabled
    func testResolve19() throws {
        let endpointParams = EndpointParams(
            endpoint: "https://example.com",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://example.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For custom endpoint with fips enabled and dualstack disabled
    func testResolve20() throws {
        let endpointParams = EndpointParams(
            endpoint: "https://example.com",
            region: "us-east-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        XCTAssertThrowsError(try resolver.resolve(params: endpointParams)) { error in
            switch error {
            case EndpointError.unresolved(let message):
                XCTAssertEqual("Invalid Configuration: FIPS and custom endpoint are not supported", message)
            default:
                XCTFail()
            }
        }
    }

    /// For custom endpoint with fips disabled and dualstack enabled
    func testResolve21() throws {
        let endpointParams = EndpointParams(
            endpoint: "https://example.com",
            region: "us-east-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        XCTAssertThrowsError(try resolver.resolve(params: endpointParams)) { error in
            switch error {
            case EndpointError.unresolved(let message):
                XCTAssertEqual("Invalid Configuration: Dualstack and custom endpoint are not supported", message)
            default:
                XCTFail()
            }
        }
    }

}

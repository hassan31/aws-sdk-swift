// Code generated by smithy-swift-codegen. DO NOT EDIT!

import class Smithy.Context
import enum ClientRuntime.EndpointsAuthScheme
import enum Smithy.ClientError
import enum SmithyHTTPAuthAPI.SigningPropertyKeys
import protocol SmithyHTTPAuthAPI.AuthSchemeResolver
import protocol SmithyHTTPAuthAPI.AuthSchemeResolverParameters
import struct Smithy.AttributeKey
import struct SmithyHTTPAuthAPI.AuthOption

public struct S3AuthSchemeResolverParameters: SmithyHTTPAuthAPI.AuthSchemeResolverParameters {
    public let operation: Swift.String
    /// When true, use S3 Accelerate. NOTE: Not all regions support S3 accelerate.
    public let accelerate: Swift.Bool
    /// The S3 bucket used to send the request. This is an optional parameter that will be set automatically for operations that are scoped to an S3 bucket.
    public let bucket: Swift.String?
    /// The Copy Source used for Copy Object request. This is an optional parameter that will be set automatically for operations that are scoped to Copy Source.
    public let copySource: Swift.String?
    /// Internal parameter to disable Access Point Buckets
    public let disableAccessPoints: Swift.Bool?
    /// Whether multi-region access points (MRAP) should be disabled.
    public let disableMultiRegionAccessPoints: Swift.Bool
    /// Parameter to indicate whether S3Express session auth should be disabled
    public let disableS3ExpressSessionAuth: Swift.Bool?
    /// Override the endpoint used to send this request
    public let endpoint: Swift.String?
    /// When true, force a path-style endpoint to be used where the bucket name is part of the path.
    public let forcePathStyle: Swift.Bool
    /// The S3 Key used to send the request. This is an optional parameter that will be set automatically for operations that are scoped to an S3 Key.
    public let key: Swift.String?
    /// The S3 Prefix used to send the request. This is an optional parameter that will be set automatically for operations that are scoped to an S3 Prefix.
    public let prefix: Swift.String?
    /// The AWS region used to dispatch the request.
    public let region: Swift.String?
    /// When an Access Point ARN is provided and this flag is enabled, the SDK MUST use the ARN's region when constructing the endpoint instead of the client's configured region.
    public let useArnRegion: Swift.Bool?
    /// When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.
    public let useDualStack: Swift.Bool
    /// When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.
    public let useFIPS: Swift.Bool
    /// Whether the global endpoint should be used, rather then the regional endpoint for us-east-1.
    public let useGlobalEndpoint: Swift.Bool
    /// Internal parameter to use object lambda endpoint for an operation (eg: WriteGetObjectResponse)
    public let useObjectLambdaEndpoint: Swift.Bool?
    /// Internal parameter to indicate whether S3Express operation should use control plane, (ex. CreateBucket)
    public let useS3ExpressControlEndpoint: Swift.Bool?
}

public protocol S3AuthSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver {
    // Intentionally empty.
    // This is the parent protocol that all auth scheme resolver implementations of
    // the service S3 must conform to.
}

private struct InternalModeledS3AuthSchemeResolver: S3AuthSchemeResolver {

    public func resolveAuthScheme(params: SmithyHTTPAuthAPI.AuthSchemeResolverParameters) throws -> [SmithyHTTPAuthAPI.AuthOption] {
        var validAuthOptions = [SmithyHTTPAuthAPI.AuthOption]()
        guard let serviceParams = params as? S3AuthSchemeResolverParameters else {
            throw Smithy.ClientError.authError("Service specific auth scheme parameters type must be passed to auth scheme resolver.")
        }
        switch serviceParams.operation {
            case "writeGetObjectResponse":
                var sigV4Option = SmithyHTTPAuthAPI.AuthOption(schemeID: "aws.auth#sigv4")
                sigV4Option.signingProperties.set(key: SmithyHTTPAuthAPI.SigningPropertyKeys.signingName, value: "s3")
                guard let region = serviceParams.region else {
                    throw Smithy.ClientError.authError("Missing region in auth scheme parameters for SigV4 auth scheme.")
                }
                sigV4Option.signingProperties.set(key: SmithyHTTPAuthAPI.SigningPropertyKeys.signingRegion, value: region)
                validAuthOptions.append(sigV4Option)
            default:
                var sigV4Option = SmithyHTTPAuthAPI.AuthOption(schemeID: "aws.auth#sigv4")
                sigV4Option.signingProperties.set(key: SmithyHTTPAuthAPI.SigningPropertyKeys.signingName, value: "s3")
                guard let region = serviceParams.region else {
                    throw Smithy.ClientError.authError("Missing region in auth scheme parameters for SigV4 auth scheme.")
                }
                sigV4Option.signingProperties.set(key: SmithyHTTPAuthAPI.SigningPropertyKeys.signingRegion, value: region)
                validAuthOptions.append(sigV4Option)
        }
        return validAuthOptions
    }

    public func constructParameters(context: Smithy.Context) throws -> SmithyHTTPAuthAPI.AuthSchemeResolverParameters {
        return try DefaultS3AuthSchemeResolver().constructParameters(context: context)
    }
}

public struct DefaultS3AuthSchemeResolver: S3AuthSchemeResolver {

    public func resolveAuthScheme(params: SmithyHTTPAuthAPI.AuthSchemeResolverParameters) throws -> [SmithyHTTPAuthAPI.AuthOption] {
        var validAuthOptions = [SmithyHTTPAuthAPI.AuthOption]()
        guard let serviceParams = params as? S3AuthSchemeResolverParameters else {
            throw Smithy.ClientError.authError("Service specific auth scheme parameters type must be passed to auth scheme resolver.")
        }
        let endpointParams = EndpointParams(authSchemeParams: serviceParams)
        let endpoint = try DefaultEndpointResolver().resolve(params: endpointParams)
        guard let authSchemes = endpoint.authSchemes() else {
            return try InternalModeledS3AuthSchemeResolver().resolveAuthScheme(params: params)
        }
        let schemes = try authSchemes.map { (input) -> ClientRuntime.EndpointsAuthScheme in try ClientRuntime.EndpointsAuthScheme(from: input) }
        for scheme in schemes {
            switch scheme {
                case .sigV4(let param):
                    var sigV4Option = SmithyHTTPAuthAPI.AuthOption(schemeID: "aws.auth#sigv4")
                    sigV4Option.signingProperties.set(key: SmithyHTTPAuthAPI.SigningPropertyKeys.signingName, value: param.signingName)
                    sigV4Option.signingProperties.set(key: SmithyHTTPAuthAPI.SigningPropertyKeys.signingRegion, value: param.signingRegion)
                    validAuthOptions.append(sigV4Option)
                case .sigV4A(let param):
                    var sigV4Option = SmithyHTTPAuthAPI.AuthOption(schemeID: "aws.auth#sigv4a")
                    sigV4Option.signingProperties.set(key: SmithyHTTPAuthAPI.SigningPropertyKeys.signingName, value: param.signingName)
                    sigV4Option.signingProperties.set(key: SmithyHTTPAuthAPI.SigningPropertyKeys.signingRegion, value: param.signingRegionSet?[0])
                    validAuthOptions.append(sigV4Option)
                default:
                    throw Smithy.ClientError.authError("Unknown auth scheme name: \(scheme.name)")
            }
        }
        return validAuthOptions
    }

    public func constructParameters(context: Smithy.Context) throws -> SmithyHTTPAuthAPI.AuthSchemeResolverParameters {
        guard let opName = context.getOperation() else {
            throw Smithy.ClientError.dataNotFound("Operation name not configured in middleware context for auth scheme resolver params construction.")
        }
        guard let endpointParam = context.attributes.get(key: Smithy.AttributeKey<EndpointParams>(name: "EndpointParams")) else {
            throw Smithy.ClientError.dataNotFound("Endpoint param not configured in middleware context for rules-based auth scheme resolver params construction.")
        }
        return S3AuthSchemeResolverParameters(operation: opName, accelerate: endpointParam.accelerate, bucket: endpointParam.bucket, copySource: endpointParam.copySource, disableAccessPoints: endpointParam.disableAccessPoints, disableMultiRegionAccessPoints: endpointParam.disableMultiRegionAccessPoints, disableS3ExpressSessionAuth: endpointParam.disableS3ExpressSessionAuth, endpoint: endpointParam.endpoint, forcePathStyle: endpointParam.forcePathStyle, key: endpointParam.key, prefix: endpointParam.prefix, region: endpointParam.region, useArnRegion: endpointParam.useArnRegion, useDualStack: endpointParam.useDualStack, useFIPS: endpointParam.useFIPS, useGlobalEndpoint: endpointParam.useGlobalEndpoint, useObjectLambdaEndpoint: endpointParam.useObjectLambdaEndpoint, useS3ExpressControlEndpoint: endpointParam.useS3ExpressControlEndpoint)
    }
}

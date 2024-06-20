// Code generated by smithy-swift-codegen. DO NOT EDIT!

import class Smithy.Context
import enum Smithy.ClientError
import enum SmithyHTTPAuthAPI.SigningPropertyKeys
import protocol SmithyHTTPAuthAPI.AuthSchemeResolver
import protocol SmithyHTTPAuthAPI.AuthSchemeResolverParameters
import struct SmithyHTTPAuthAPI.AuthOption

public struct PcaConnectorScepAuthSchemeResolverParameters: SmithyHTTPAuthAPI.AuthSchemeResolverParameters {
    public let operation: Swift.String
    // Region is used for SigV4 auth scheme
    public let region: Swift.String?
}

public protocol PcaConnectorScepAuthSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver {
    // Intentionally empty.
    // This is the parent protocol that all auth scheme resolver implementations of
    // the service PcaConnectorScep must conform to.
}

public struct DefaultPcaConnectorScepAuthSchemeResolver: PcaConnectorScepAuthSchemeResolver {

    public func resolveAuthScheme(params: SmithyHTTPAuthAPI.AuthSchemeResolverParameters) throws -> [SmithyHTTPAuthAPI.AuthOption] {
        var validAuthOptions = [SmithyHTTPAuthAPI.AuthOption]()
        guard let serviceParams = params as? PcaConnectorScepAuthSchemeResolverParameters else {
            throw Smithy.ClientError.authError("Service specific auth scheme parameters type must be passed to auth scheme resolver.")
        }
        switch serviceParams.operation {
            default:
                var sigV4Option = SmithyHTTPAuthAPI.AuthOption(schemeID: "aws.auth#sigv4")
                sigV4Option.signingProperties.set(key: SmithyHTTPAuthAPI.SigningPropertyKeys.signingName, value: "pca-connector-scep")
                guard let region = serviceParams.region else {
                    throw Smithy.ClientError.authError("Missing region in auth scheme parameters for SigV4 auth scheme.")
                }
                sigV4Option.signingProperties.set(key: SmithyHTTPAuthAPI.SigningPropertyKeys.signingRegion, value: region)
                validAuthOptions.append(sigV4Option)
        }
        return validAuthOptions
    }

    public func constructParameters(context: Smithy.Context) throws -> SmithyHTTPAuthAPI.AuthSchemeResolverParameters {
        guard let opName = context.getOperation() else {
            throw Smithy.ClientError.dataNotFound("Operation name not configured in middleware context for auth scheme resolver params construction.")
        }
        let opRegion = context.getRegion()
        return PcaConnectorScepAuthSchemeResolverParameters(operation: opName, region: opRegion)
    }
}

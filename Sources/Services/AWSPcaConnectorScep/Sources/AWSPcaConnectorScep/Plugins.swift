// Code generated by smithy-swift-codegen. DO NOT EDIT!

import class AWSClientRuntime.AWSClientConfigDefaultsProvider
import protocol ClientRuntime.ClientConfiguration
import protocol ClientRuntime.Plugin
import protocol SmithyHTTPAuthAPI.AuthSchemeResolver
import protocol SmithyIdentity.AWSCredentialIdentityResolver
import struct AWSSDKHTTPAuth.SigV4AuthScheme
import typealias SmithyHTTPAuthAPI.AuthSchemes

public class PcaConnectorScepClientEndpointPlugin: Plugin {
    private var endpointResolver: EndpointResolver

    public init(endpointResolver: EndpointResolver) {
        self.endpointResolver = endpointResolver
    }

    public convenience init() throws {
        self.init(endpointResolver: try DefaultEndpointResolver())
    }

    public func configureClient(clientConfiguration: ClientRuntime.ClientConfiguration) throws {
        if let config = clientConfiguration as? PcaConnectorScepClient.PcaConnectorScepClientConfiguration {
            config.endpointResolver = self.endpointResolver
        }
    }
}

public class DefaultAWSAuthSchemePlugin: ClientRuntime.Plugin {

    public init() {}

    public func configureClient(clientConfiguration: ClientRuntime.ClientConfiguration) throws {
        if let config = clientConfiguration as? PcaConnectorScepClient.PcaConnectorScepClientConfiguration {
            config.authSchemeResolver = DefaultPcaConnectorScepAuthSchemeResolver()
            config.authSchemes = [AWSSDKHTTPAuth.SigV4AuthScheme()]
            config.awsCredentialIdentityResolver = try AWSClientRuntime.AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver()
        }
    }
}

public class PcaConnectorScepClientAuthSchemePlugin: ClientRuntime.Plugin {
    private var authSchemes: SmithyHTTPAuthAPI.AuthSchemes?
    private var authSchemeResolver: SmithyHTTPAuthAPI.AuthSchemeResolver?
    private var awsCredentialIdentityResolver: (any SmithyIdentity.AWSCredentialIdentityResolver)?

    public init(authSchemes: SmithyHTTPAuthAPI.AuthSchemes? = nil, authSchemeResolver: PcaConnectorScepAuthSchemeResolver? = nil, awsCredentialIdentityResolver: (any SmithyIdentity.AWSCredentialIdentityResolver)? = nil) {
        self.authSchemeResolver = authSchemeResolver
        self.authSchemes = authSchemes
        self.awsCredentialIdentityResolver = awsCredentialIdentityResolver
    }

    public func configureClient(clientConfiguration: ClientRuntime.ClientConfiguration) throws {
        if let config = clientConfiguration as? PcaConnectorScepClient.PcaConnectorScepClientConfiguration {
            if (self.authSchemes != nil) {
                config.authSchemes = self.authSchemes
            }
            if (self.authSchemeResolver != nil) {
                config.authSchemeResolver = self.authSchemeResolver!
            }
            if (self.awsCredentialIdentityResolver != nil) {
                config.awsCredentialIdentityResolver = self.awsCredentialIdentityResolver!
            }
        }
    }
}

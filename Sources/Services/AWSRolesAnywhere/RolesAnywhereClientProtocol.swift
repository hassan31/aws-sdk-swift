// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Identity and Access Management Roles Anywhere provides a secure way for your workloads such as servers, containers, and applications that run outside of Amazon Web Services to obtain temporary Amazon Web Services credentials. Your workloads can use the same IAM policies and roles you have for native Amazon Web Services applications to access Amazon Web Services resources. Using IAM Roles Anywhere eliminates the need to manage long-term credentials for workloads running outside of Amazon Web Services. To use IAM Roles Anywhere, your workloads must use X.509 certificates issued by their certificate authority (CA). You register the CA with IAM Roles Anywhere as a trust anchor to establish trust between your public key infrastructure (PKI) and IAM Roles Anywhere. If you don't manage your own PKI system, you can use Private Certificate Authority to create a CA and then use that to establish trust with IAM Roles Anywhere. This guide describes the IAM Roles Anywhere operations that you can call programmatically. For more information about IAM Roles Anywhere, see the [IAM Roles Anywhere User Guide](https://docs.aws.amazon.com/rolesanywhere/latest/userguide/introduction.html).
public protocol RolesAnywhereClientProtocol {
    /// Performs the `CreateProfile` operation on the `RolesAnywhere` service.
    ///
    /// Creates a profile, a list of the roles that Roles Anywhere service is trusted to assume. You use profiles to intersect permissions with IAM managed policies. Required permissions: rolesanywhere:CreateProfile.
    ///
    /// - Parameter CreateProfileInput : [no documentation found]
    ///
    /// - Returns: `CreateProfileOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ValidationException` : Validation exception error.
    func createProfile(input: CreateProfileInput) async throws -> CreateProfileOutput
    /// Performs the `CreateTrustAnchor` operation on the `RolesAnywhere` service.
    ///
    /// Creates a trust anchor to establish trust between IAM Roles Anywhere and your certificate authority (CA). You can define a trust anchor as a reference to an Private Certificate Authority (Private CA) or by uploading a CA certificate. Your Amazon Web Services workloads can authenticate with the trust anchor using certificates issued by the CA in exchange for temporary Amazon Web Services credentials. Required permissions: rolesanywhere:CreateTrustAnchor.
    ///
    /// - Parameter CreateTrustAnchorInput : [no documentation found]
    ///
    /// - Returns: `CreateTrustAnchorOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ValidationException` : Validation exception error.
    func createTrustAnchor(input: CreateTrustAnchorInput) async throws -> CreateTrustAnchorOutput
    /// Performs the `DeleteCrl` operation on the `RolesAnywhere` service.
    ///
    /// Deletes a certificate revocation list (CRL). Required permissions: rolesanywhere:DeleteCrl.
    ///
    /// - Parameter DeleteCrlInput : [no documentation found]
    ///
    /// - Returns: `DeleteCrlOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The resource could not be found.
    func deleteCrl(input: DeleteCrlInput) async throws -> DeleteCrlOutput
    /// Performs the `DeleteProfile` operation on the `RolesAnywhere` service.
    ///
    /// Deletes a profile. Required permissions: rolesanywhere:DeleteProfile.
    ///
    /// - Parameter DeleteProfileInput : [no documentation found]
    ///
    /// - Returns: `DeleteProfileOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The resource could not be found.
    func deleteProfile(input: DeleteProfileInput) async throws -> DeleteProfileOutput
    /// Performs the `DeleteTrustAnchor` operation on the `RolesAnywhere` service.
    ///
    /// Deletes a trust anchor. Required permissions: rolesanywhere:DeleteTrustAnchor.
    ///
    /// - Parameter DeleteTrustAnchorInput : [no documentation found]
    ///
    /// - Returns: `DeleteTrustAnchorOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The resource could not be found.
    func deleteTrustAnchor(input: DeleteTrustAnchorInput) async throws -> DeleteTrustAnchorOutput
    /// Performs the `DisableCrl` operation on the `RolesAnywhere` service.
    ///
    /// Disables a certificate revocation list (CRL). Required permissions: rolesanywhere:DisableCrl.
    ///
    /// - Parameter DisableCrlInput : [no documentation found]
    ///
    /// - Returns: `DisableCrlOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The resource could not be found.
    func disableCrl(input: DisableCrlInput) async throws -> DisableCrlOutput
    /// Performs the `DisableProfile` operation on the `RolesAnywhere` service.
    ///
    /// Disables a profile. When disabled, temporary credential requests with this profile fail. Required permissions: rolesanywhere:DisableProfile.
    ///
    /// - Parameter DisableProfileInput : [no documentation found]
    ///
    /// - Returns: `DisableProfileOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The resource could not be found.
    func disableProfile(input: DisableProfileInput) async throws -> DisableProfileOutput
    /// Performs the `DisableTrustAnchor` operation on the `RolesAnywhere` service.
    ///
    /// Disables a trust anchor. When disabled, temporary credential requests specifying this trust anchor are unauthorized. Required permissions: rolesanywhere:DisableTrustAnchor.
    ///
    /// - Parameter DisableTrustAnchorInput : [no documentation found]
    ///
    /// - Returns: `DisableTrustAnchorOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The resource could not be found.
    func disableTrustAnchor(input: DisableTrustAnchorInput) async throws -> DisableTrustAnchorOutput
    /// Performs the `EnableCrl` operation on the `RolesAnywhere` service.
    ///
    /// Enables a certificate revocation list (CRL). When enabled, certificates stored in the CRL are unauthorized to receive session credentials. Required permissions: rolesanywhere:EnableCrl.
    ///
    /// - Parameter EnableCrlInput : [no documentation found]
    ///
    /// - Returns: `EnableCrlOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The resource could not be found.
    func enableCrl(input: EnableCrlInput) async throws -> EnableCrlOutput
    /// Performs the `EnableProfile` operation on the `RolesAnywhere` service.
    ///
    /// Enables temporary credential requests for a profile. Required permissions: rolesanywhere:EnableProfile.
    ///
    /// - Parameter EnableProfileInput : [no documentation found]
    ///
    /// - Returns: `EnableProfileOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The resource could not be found.
    func enableProfile(input: EnableProfileInput) async throws -> EnableProfileOutput
    /// Performs the `EnableTrustAnchor` operation on the `RolesAnywhere` service.
    ///
    /// Enables a trust anchor. When enabled, certificates in the trust anchor chain are authorized for trust validation. Required permissions: rolesanywhere:EnableTrustAnchor.
    ///
    /// - Parameter EnableTrustAnchorInput : [no documentation found]
    ///
    /// - Returns: `EnableTrustAnchorOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The resource could not be found.
    func enableTrustAnchor(input: EnableTrustAnchorInput) async throws -> EnableTrustAnchorOutput
    /// Performs the `GetCrl` operation on the `RolesAnywhere` service.
    ///
    /// Gets a certificate revocation list (CRL). Required permissions: rolesanywhere:GetCrl.
    ///
    /// - Parameter GetCrlInput : [no documentation found]
    ///
    /// - Returns: `GetCrlOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ResourceNotFoundException` : The resource could not be found.
    func getCrl(input: GetCrlInput) async throws -> GetCrlOutput
    /// Performs the `GetProfile` operation on the `RolesAnywhere` service.
    ///
    /// Gets a profile. Required permissions: rolesanywhere:GetProfile.
    ///
    /// - Parameter GetProfileInput : [no documentation found]
    ///
    /// - Returns: `GetProfileOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The resource could not be found.
    func getProfile(input: GetProfileInput) async throws -> GetProfileOutput
    /// Performs the `GetSubject` operation on the `RolesAnywhere` service.
    ///
    /// Gets a subject, which associates a certificate identity with authentication attempts. The subject stores auditing information such as the status of the last authentication attempt, the certificate data used in the attempt, and the last time the associated identity attempted authentication. Required permissions: rolesanywhere:GetSubject.
    ///
    /// - Parameter GetSubjectInput : [no documentation found]
    ///
    /// - Returns: `GetSubjectOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The resource could not be found.
    func getSubject(input: GetSubjectInput) async throws -> GetSubjectOutput
    /// Performs the `GetTrustAnchor` operation on the `RolesAnywhere` service.
    ///
    /// Gets a trust anchor. Required permissions: rolesanywhere:GetTrustAnchor.
    ///
    /// - Parameter GetTrustAnchorInput : [no documentation found]
    ///
    /// - Returns: `GetTrustAnchorOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The resource could not be found.
    /// - `ValidationException` : Validation exception error.
    func getTrustAnchor(input: GetTrustAnchorInput) async throws -> GetTrustAnchorOutput
    /// Performs the `ImportCrl` operation on the `RolesAnywhere` service.
    ///
    /// Imports the certificate revocation list (CRL). A CRL is a list of certificates that have been revoked by the issuing certificate Authority (CA). IAM Roles Anywhere validates against the CRL before issuing credentials. Required permissions: rolesanywhere:ImportCrl.
    ///
    /// - Parameter ImportCrlInput : [no documentation found]
    ///
    /// - Returns: `ImportCrlOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ValidationException` : Validation exception error.
    func importCrl(input: ImportCrlInput) async throws -> ImportCrlOutput
    /// Performs the `ListCrls` operation on the `RolesAnywhere` service.
    ///
    /// Lists all certificate revocation lists (CRL) in the authenticated account and Amazon Web Services Region. Required permissions: rolesanywhere:ListCrls.
    ///
    /// - Parameter ListCrlsInput : [no documentation found]
    ///
    /// - Returns: `ListCrlsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ValidationException` : Validation exception error.
    func listCrls(input: ListCrlsInput) async throws -> ListCrlsOutput
    /// Performs the `ListProfiles` operation on the `RolesAnywhere` service.
    ///
    /// Lists all profiles in the authenticated account and Amazon Web Services Region. Required permissions: rolesanywhere:ListProfiles.
    ///
    /// - Parameter ListProfilesInput : [no documentation found]
    ///
    /// - Returns: `ListProfilesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ValidationException` : Validation exception error.
    func listProfiles(input: ListProfilesInput) async throws -> ListProfilesOutput
    /// Performs the `ListSubjects` operation on the `RolesAnywhere` service.
    ///
    /// Lists the subjects in the authenticated account and Amazon Web Services Region. Required permissions: rolesanywhere:ListSubjects.
    ///
    /// - Parameter ListSubjectsInput : [no documentation found]
    ///
    /// - Returns: `ListSubjectsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ValidationException` : Validation exception error.
    func listSubjects(input: ListSubjectsInput) async throws -> ListSubjectsOutput
    /// Performs the `ListTagsForResource` operation on the `RolesAnywhere` service.
    ///
    /// Lists the tags attached to the resource. Required permissions: rolesanywhere:ListTagsForResource.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The resource could not be found.
    /// - `ValidationException` : Validation exception error.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Performs the `ListTrustAnchors` operation on the `RolesAnywhere` service.
    ///
    /// Lists the trust anchors in the authenticated account and Amazon Web Services Region. Required permissions: rolesanywhere:ListTrustAnchors.
    ///
    /// - Parameter ListTrustAnchorsInput : [no documentation found]
    ///
    /// - Returns: `ListTrustAnchorsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ValidationException` : Validation exception error.
    func listTrustAnchors(input: ListTrustAnchorsInput) async throws -> ListTrustAnchorsOutput
    /// Performs the `PutNotificationSettings` operation on the `RolesAnywhere` service.
    ///
    /// Attaches a list of notification settings to a trust anchor. A notification setting includes information such as event name, threshold, status of the notification setting, and the channel to notify. Required permissions: rolesanywhere:PutNotificationSettings.
    ///
    /// - Parameter PutNotificationSettingsInput : [no documentation found]
    ///
    /// - Returns: `PutNotificationSettingsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The resource could not be found.
    /// - `ValidationException` : Validation exception error.
    func putNotificationSettings(input: PutNotificationSettingsInput) async throws -> PutNotificationSettingsOutput
    /// Performs the `ResetNotificationSettings` operation on the `RolesAnywhere` service.
    ///
    /// Resets the custom notification setting to IAM Roles Anywhere default setting. Required permissions: rolesanywhere:ResetNotificationSettings.
    ///
    /// - Parameter ResetNotificationSettingsInput : [no documentation found]
    ///
    /// - Returns: `ResetNotificationSettingsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The resource could not be found.
    /// - `ValidationException` : Validation exception error.
    func resetNotificationSettings(input: ResetNotificationSettingsInput) async throws -> ResetNotificationSettingsOutput
    /// Performs the `TagResource` operation on the `RolesAnywhere` service.
    ///
    /// Attaches tags to a resource. Required permissions: rolesanywhere:TagResource.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The resource could not be found.
    /// - `TooManyTagsException` : Too many tags.
    /// - `ValidationException` : Validation exception error.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Performs the `UntagResource` operation on the `RolesAnywhere` service.
    ///
    /// Removes tags from the resource. Required permissions: rolesanywhere:UntagResource.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The resource could not be found.
    /// - `ValidationException` : Validation exception error.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Performs the `UpdateCrl` operation on the `RolesAnywhere` service.
    ///
    /// Updates the certificate revocation list (CRL). A CRL is a list of certificates that have been revoked by the issuing certificate authority (CA). IAM Roles Anywhere validates against the CRL before issuing credentials. Required permissions: rolesanywhere:UpdateCrl.
    ///
    /// - Parameter UpdateCrlInput : [no documentation found]
    ///
    /// - Returns: `UpdateCrlOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The resource could not be found.
    /// - `ValidationException` : Validation exception error.
    func updateCrl(input: UpdateCrlInput) async throws -> UpdateCrlOutput
    /// Performs the `UpdateProfile` operation on the `RolesAnywhere` service.
    ///
    /// Updates a profile, a list of the roles that IAM Roles Anywhere service is trusted to assume. You use profiles to intersect permissions with IAM managed policies. Required permissions: rolesanywhere:UpdateProfile.
    ///
    /// - Parameter UpdateProfileInput : [no documentation found]
    ///
    /// - Returns: `UpdateProfileOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The resource could not be found.
    /// - `ValidationException` : Validation exception error.
    func updateProfile(input: UpdateProfileInput) async throws -> UpdateProfileOutput
    /// Performs the `UpdateTrustAnchor` operation on the `RolesAnywhere` service.
    ///
    /// Updates a trust anchor. You establish trust between IAM Roles Anywhere and your certificate authority (CA) by configuring a trust anchor. You can define a trust anchor as a reference to an Private Certificate Authority (Private CA) or by uploading a CA certificate. Your Amazon Web Services workloads can authenticate with the trust anchor using certificates issued by the CA in exchange for temporary Amazon Web Services credentials. Required permissions: rolesanywhere:UpdateTrustAnchor.
    ///
    /// - Parameter UpdateTrustAnchorInput : [no documentation found]
    ///
    /// - Returns: `UpdateTrustAnchorOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ResourceNotFoundException` : The resource could not be found.
    /// - `ValidationException` : Validation exception error.
    func updateTrustAnchor(input: UpdateTrustAnchorInput) async throws -> UpdateTrustAnchorOutput
}

public enum RolesAnywhereClientTypes {}

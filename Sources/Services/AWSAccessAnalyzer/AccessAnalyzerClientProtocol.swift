// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Identity and Access Management Access Analyzer helps you to set, verify, and refine your IAM policies by providing a suite of capabilities. Its features include findings for external and unused access, basic and custom policy checks for validating policies, and policy generation to generate fine-grained policies. To start using IAM Access Analyzer to identify external or unused access, you first need to create an analyzer. External access analyzers help identify potential risks of accessing resources by enabling you to identify any resource policies that grant access to an external principal. It does this by using logic-based reasoning to analyze resource-based policies in your Amazon Web Services environment. An external principal can be another Amazon Web Services account, a root user, an IAM user or role, a federated user, an Amazon Web Services service, or an anonymous user. You can also use IAM Access Analyzer to preview public and cross-account access to your resources before deploying permissions changes. Unused access analyzers help identify potential identity access risks by enabling you to identify unused IAM roles, unused access keys, unused console passwords, and IAM principals with unused service and action-level permissions. Beyond findings, IAM Access Analyzer provides basic and custom policy checks to validate IAM policies before deploying permissions changes. You can use policy generation to refine permissions by attaching a policy generated using access activity logged in CloudTrail logs. This guide describes the IAM Access Analyzer operations that you can call programmatically. For general information about IAM Access Analyzer, see [Identity and Access Management Access Analyzer](https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html) in the IAM User Guide.
public protocol AccessAnalyzerClientProtocol {
    /// Performs the `ApplyArchiveRule` operation on the `AccessAnalyzer` service.
    ///
    /// Retroactively applies the archive rule to existing findings that meet the archive rule criteria.
    ///
    /// - Parameter ApplyArchiveRuleInput : Retroactively applies an archive rule.
    ///
    /// - Returns: `ApplyArchiveRuleOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func applyArchiveRule(input: ApplyArchiveRuleInput) async throws -> ApplyArchiveRuleOutput
    /// Performs the `CancelPolicyGeneration` operation on the `AccessAnalyzer` service.
    ///
    /// Cancels the requested policy generation.
    ///
    /// - Parameter CancelPolicyGenerationInput : [no documentation found]
    ///
    /// - Returns: `CancelPolicyGenerationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func cancelPolicyGeneration(input: CancelPolicyGenerationInput) async throws -> CancelPolicyGenerationOutput
    /// Performs the `CheckAccessNotGranted` operation on the `AccessAnalyzer` service.
    ///
    /// Checks whether the specified access isn't allowed by a policy.
    ///
    /// - Parameter CheckAccessNotGrantedInput : [no documentation found]
    ///
    /// - Returns: `CheckAccessNotGrantedOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `InvalidParameterException` : The specified parameter is invalid.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `UnprocessableEntityException` : The specified entity could not be processed.
    /// - `ValidationException` : Validation exception error.
    func checkAccessNotGranted(input: CheckAccessNotGrantedInput) async throws -> CheckAccessNotGrantedOutput
    /// Performs the `CheckNoNewAccess` operation on the `AccessAnalyzer` service.
    ///
    /// Checks whether new access is allowed for an updated policy when compared to the existing policy. You can find examples for reference policies and learn how to set up and run a custom policy check for new access in the [IAM Access Analyzer custom policy checks samples](https://github.com/aws-samples/iam-access-analyzer-custom-policy-check-samples) repository on GitHub. The reference policies in this repository are meant to be passed to the existingPolicyDocument request parameter.
    ///
    /// - Parameter CheckNoNewAccessInput : [no documentation found]
    ///
    /// - Returns: `CheckNoNewAccessOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `InvalidParameterException` : The specified parameter is invalid.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `UnprocessableEntityException` : The specified entity could not be processed.
    /// - `ValidationException` : Validation exception error.
    func checkNoNewAccess(input: CheckNoNewAccessInput) async throws -> CheckNoNewAccessOutput
    /// Performs the `CreateAccessPreview` operation on the `AccessAnalyzer` service.
    ///
    /// Creates an access preview that allows you to preview IAM Access Analyzer findings for your resource before deploying resource permissions.
    ///
    /// - Parameter CreateAccessPreviewInput : [no documentation found]
    ///
    /// - Returns: `CreateAccessPreviewOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : A conflict exception error.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ServiceQuotaExceededException` : Service quote met error.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func createAccessPreview(input: CreateAccessPreviewInput) async throws -> CreateAccessPreviewOutput
    /// Performs the `CreateAnalyzer` operation on the `AccessAnalyzer` service.
    ///
    /// Creates an analyzer for your account.
    ///
    /// - Parameter CreateAnalyzerInput : Creates an analyzer.
    ///
    /// - Returns: `CreateAnalyzerOutput` : The response to the request to create an analyzer.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : A conflict exception error.
    /// - `InternalServerException` : Internal server error.
    /// - `ServiceQuotaExceededException` : Service quote met error.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func createAnalyzer(input: CreateAnalyzerInput) async throws -> CreateAnalyzerOutput
    /// Performs the `CreateArchiveRule` operation on the `AccessAnalyzer` service.
    ///
    /// Creates an archive rule for the specified analyzer. Archive rules automatically archive new findings that meet the criteria you define when you create the rule. To learn about filter keys that you can use to create an archive rule, see [IAM Access Analyzer filter keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html) in the IAM User Guide.
    ///
    /// - Parameter CreateArchiveRuleInput : Creates an archive rule.
    ///
    /// - Returns: `CreateArchiveRuleOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : A conflict exception error.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ServiceQuotaExceededException` : Service quote met error.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func createArchiveRule(input: CreateArchiveRuleInput) async throws -> CreateArchiveRuleOutput
    /// Performs the `DeleteAnalyzer` operation on the `AccessAnalyzer` service.
    ///
    /// Deletes the specified analyzer. When you delete an analyzer, IAM Access Analyzer is disabled for the account or organization in the current or specific Region. All findings that were generated by the analyzer are deleted. You cannot undo this action.
    ///
    /// - Parameter DeleteAnalyzerInput : Deletes an analyzer.
    ///
    /// - Returns: `DeleteAnalyzerOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func deleteAnalyzer(input: DeleteAnalyzerInput) async throws -> DeleteAnalyzerOutput
    /// Performs the `DeleteArchiveRule` operation on the `AccessAnalyzer` service.
    ///
    /// Deletes the specified archive rule.
    ///
    /// - Parameter DeleteArchiveRuleInput : Deletes an archive rule.
    ///
    /// - Returns: `DeleteArchiveRuleOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func deleteArchiveRule(input: DeleteArchiveRuleInput) async throws -> DeleteArchiveRuleOutput
    /// Performs the `GetAccessPreview` operation on the `AccessAnalyzer` service.
    ///
    /// Retrieves information about an access preview for the specified analyzer.
    ///
    /// - Parameter GetAccessPreviewInput : [no documentation found]
    ///
    /// - Returns: `GetAccessPreviewOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func getAccessPreview(input: GetAccessPreviewInput) async throws -> GetAccessPreviewOutput
    /// Performs the `GetAnalyzedResource` operation on the `AccessAnalyzer` service.
    ///
    /// Retrieves information about a resource that was analyzed.
    ///
    /// - Parameter GetAnalyzedResourceInput : Retrieves an analyzed resource.
    ///
    /// - Returns: `GetAnalyzedResourceOutput` : The response to the request.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func getAnalyzedResource(input: GetAnalyzedResourceInput) async throws -> GetAnalyzedResourceOutput
    /// Performs the `GetAnalyzer` operation on the `AccessAnalyzer` service.
    ///
    /// Retrieves information about the specified analyzer.
    ///
    /// - Parameter GetAnalyzerInput : Retrieves an analyzer.
    ///
    /// - Returns: `GetAnalyzerOutput` : The response to the request.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func getAnalyzer(input: GetAnalyzerInput) async throws -> GetAnalyzerOutput
    /// Performs the `GetArchiveRule` operation on the `AccessAnalyzer` service.
    ///
    /// Retrieves information about an archive rule. To learn about filter keys that you can use to create an archive rule, see [IAM Access Analyzer filter keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html) in the IAM User Guide.
    ///
    /// - Parameter GetArchiveRuleInput : Retrieves an archive rule.
    ///
    /// - Returns: `GetArchiveRuleOutput` : The response to the request.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func getArchiveRule(input: GetArchiveRuleInput) async throws -> GetArchiveRuleOutput
    /// Performs the `GetFinding` operation on the `AccessAnalyzer` service.
    ///
    /// Retrieves information about the specified finding.
    ///
    /// - Parameter GetFindingInput : Retrieves a finding.
    ///
    /// - Returns: `GetFindingOutput` : The response to the request.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func getFinding(input: GetFindingInput) async throws -> GetFindingOutput
    /// Performs the `GetFindingV2` operation on the `AccessAnalyzer` service.
    ///
    /// Retrieves information about the specified finding.
    ///
    /// - Parameter GetFindingV2Input : [no documentation found]
    ///
    /// - Returns: `GetFindingV2Output` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func getFindingV2(input: GetFindingV2Input) async throws -> GetFindingV2Output
    /// Performs the `GetGeneratedPolicy` operation on the `AccessAnalyzer` service.
    ///
    /// Retrieves the policy that was generated using StartPolicyGeneration.
    ///
    /// - Parameter GetGeneratedPolicyInput : [no documentation found]
    ///
    /// - Returns: `GetGeneratedPolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func getGeneratedPolicy(input: GetGeneratedPolicyInput) async throws -> GetGeneratedPolicyOutput
    /// Performs the `ListAccessPreviewFindings` operation on the `AccessAnalyzer` service.
    ///
    /// Retrieves a list of access preview findings generated by the specified access preview.
    ///
    /// - Parameter ListAccessPreviewFindingsInput : [no documentation found]
    ///
    /// - Returns: `ListAccessPreviewFindingsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : A conflict exception error.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func listAccessPreviewFindings(input: ListAccessPreviewFindingsInput) async throws -> ListAccessPreviewFindingsOutput
    /// Performs the `ListAccessPreviews` operation on the `AccessAnalyzer` service.
    ///
    /// Retrieves a list of access previews for the specified analyzer.
    ///
    /// - Parameter ListAccessPreviewsInput : [no documentation found]
    ///
    /// - Returns: `ListAccessPreviewsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func listAccessPreviews(input: ListAccessPreviewsInput) async throws -> ListAccessPreviewsOutput
    /// Performs the `ListAnalyzedResources` operation on the `AccessAnalyzer` service.
    ///
    /// Retrieves a list of resources of the specified type that have been analyzed by the specified analyzer..
    ///
    /// - Parameter ListAnalyzedResourcesInput : Retrieves a list of resources that have been analyzed.
    ///
    /// - Returns: `ListAnalyzedResourcesOutput` : The response to the request.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func listAnalyzedResources(input: ListAnalyzedResourcesInput) async throws -> ListAnalyzedResourcesOutput
    /// Performs the `ListAnalyzers` operation on the `AccessAnalyzer` service.
    ///
    /// Retrieves a list of analyzers.
    ///
    /// - Parameter ListAnalyzersInput : Retrieves a list of analyzers.
    ///
    /// - Returns: `ListAnalyzersOutput` : The response to the request.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func listAnalyzers(input: ListAnalyzersInput) async throws -> ListAnalyzersOutput
    /// Performs the `ListArchiveRules` operation on the `AccessAnalyzer` service.
    ///
    /// Retrieves a list of archive rules created for the specified analyzer.
    ///
    /// - Parameter ListArchiveRulesInput : Retrieves a list of archive rules created for the specified analyzer.
    ///
    /// - Returns: `ListArchiveRulesOutput` : The response to the request.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func listArchiveRules(input: ListArchiveRulesInput) async throws -> ListArchiveRulesOutput
    /// Performs the `ListFindings` operation on the `AccessAnalyzer` service.
    ///
    /// Retrieves a list of findings generated by the specified analyzer. To learn about filter keys that you can use to retrieve a list of findings, see [IAM Access Analyzer filter keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html) in the IAM User Guide.
    ///
    /// - Parameter ListFindingsInput : Retrieves a list of findings generated by the specified analyzer.
    ///
    /// - Returns: `ListFindingsOutput` : The response to the request.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func listFindings(input: ListFindingsInput) async throws -> ListFindingsOutput
    /// Performs the `ListFindingsV2` operation on the `AccessAnalyzer` service.
    ///
    /// Retrieves a list of findings generated by the specified analyzer. To learn about filter keys that you can use to retrieve a list of findings, see [IAM Access Analyzer filter keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html) in the IAM User Guide.
    ///
    /// - Parameter ListFindingsV2Input : [no documentation found]
    ///
    /// - Returns: `ListFindingsV2Output` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func listFindingsV2(input: ListFindingsV2Input) async throws -> ListFindingsV2Output
    /// Performs the `ListPolicyGenerations` operation on the `AccessAnalyzer` service.
    ///
    /// Lists all of the policy generations requested in the last seven days.
    ///
    /// - Parameter ListPolicyGenerationsInput : [no documentation found]
    ///
    /// - Returns: `ListPolicyGenerationsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func listPolicyGenerations(input: ListPolicyGenerationsInput) async throws -> ListPolicyGenerationsOutput
    /// Performs the `ListTagsForResource` operation on the `AccessAnalyzer` service.
    ///
    /// Retrieves a list of tags applied to the specified resource.
    ///
    /// - Parameter ListTagsForResourceInput : Retrieves a list of tags applied to the specified resource.
    ///
    /// - Returns: `ListTagsForResourceOutput` : The response to the request.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Performs the `StartPolicyGeneration` operation on the `AccessAnalyzer` service.
    ///
    /// Starts the policy generation request.
    ///
    /// - Parameter StartPolicyGenerationInput : [no documentation found]
    ///
    /// - Returns: `StartPolicyGenerationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConflictException` : A conflict exception error.
    /// - `InternalServerException` : Internal server error.
    /// - `ServiceQuotaExceededException` : Service quote met error.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func startPolicyGeneration(input: StartPolicyGenerationInput) async throws -> StartPolicyGenerationOutput
    /// Performs the `StartResourceScan` operation on the `AccessAnalyzer` service.
    ///
    /// Immediately starts a scan of the policies applied to the specified resource.
    ///
    /// - Parameter StartResourceScanInput : Starts a scan of the policies applied to the specified resource.
    ///
    /// - Returns: `StartResourceScanOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func startResourceScan(input: StartResourceScanInput) async throws -> StartResourceScanOutput
    /// Performs the `TagResource` operation on the `AccessAnalyzer` service.
    ///
    /// Adds a tag to the specified resource.
    ///
    /// - Parameter TagResourceInput : Adds a tag to the specified resource.
    ///
    /// - Returns: `TagResourceOutput` : The response to the request.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Performs the `UntagResource` operation on the `AccessAnalyzer` service.
    ///
    /// Removes a tag from the specified resource.
    ///
    /// - Parameter UntagResourceInput : Removes a tag from the specified resource.
    ///
    /// - Returns: `UntagResourceOutput` : The response to the request.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Performs the `UpdateArchiveRule` operation on the `AccessAnalyzer` service.
    ///
    /// Updates the criteria and values for the specified archive rule.
    ///
    /// - Parameter UpdateArchiveRuleInput : Updates the specified archive rule.
    ///
    /// - Returns: `UpdateArchiveRuleOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func updateArchiveRule(input: UpdateArchiveRuleInput) async throws -> UpdateArchiveRuleOutput
    /// Performs the `UpdateFindings` operation on the `AccessAnalyzer` service.
    ///
    /// Updates the status for the specified findings.
    ///
    /// - Parameter UpdateFindingsInput : Updates findings with the new values provided in the request.
    ///
    /// - Returns: `UpdateFindingsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ResourceNotFoundException` : The specified resource could not be found.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func updateFindings(input: UpdateFindingsInput) async throws -> UpdateFindingsOutput
    /// Performs the `ValidatePolicy` operation on the `AccessAnalyzer` service.
    ///
    /// Requests the validation of a policy and returns a list of findings. The findings help you identify issues and provide actionable recommendations to resolve the issue and enable you to author functional policies that meet security best practices.
    ///
    /// - Parameter ValidatePolicyInput : [no documentation found]
    ///
    /// - Returns: `ValidatePolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : Internal server error.
    /// - `ThrottlingException` : Throttling limit exceeded error.
    /// - `ValidationException` : Validation exception error.
    func validatePolicy(input: ValidatePolicyInput) async throws -> ValidatePolicyOutput
}

public enum AccessAnalyzerClientTypes {}

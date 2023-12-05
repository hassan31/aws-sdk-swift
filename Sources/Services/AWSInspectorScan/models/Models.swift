// Code generated by smithy-swift-codegen. DO NOT EDIT!
import AWSClientRuntime
import ClientRuntime

extension AccessDeniedException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: AccessDeniedExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// You do not have sufficient access to perform this action.
public struct AccessDeniedException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        /// This member is required.
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "AccessDeniedException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct AccessDeniedExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension AccessDeniedExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension InternalServerException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let retryAfterSecondsHeaderValue = httpResponse.headers.value(for: "Retry-After") {
            self.properties.retryAfterSeconds = Swift.Int(retryAfterSecondsHeaderValue) ?? 0
        } else {
            self.properties.retryAfterSeconds = nil
        }
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: InternalServerExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
            self.properties.reason = output.reason
        } else {
            self.properties.message = nil
            self.properties.reason = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The request processing has failed because of an unknown error, exception or failure.
public struct InternalServerException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        /// This member is required.
        public internal(set) var message: Swift.String? = nil
        /// The reason for the validation failure.
        /// This member is required.
        public internal(set) var reason: InspectorScanClientTypes.InternalServerExceptionReason? = nil
        /// The number of seconds to wait before retrying the request.
        public internal(set) var retryAfterSeconds: Swift.Int? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InternalServerException" }
    public static var fault: ErrorFault { .server }
    public static var isRetryable: Swift.Bool { true }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil,
        reason: InspectorScanClientTypes.InternalServerExceptionReason? = nil,
        retryAfterSeconds: Swift.Int? = nil
    )
    {
        self.properties.message = message
        self.properties.reason = reason
        self.properties.retryAfterSeconds = retryAfterSeconds
    }
}

struct InternalServerExceptionBody: Swift.Equatable {
    let message: Swift.String?
    let reason: InspectorScanClientTypes.InternalServerExceptionReason?
}

extension InternalServerExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
        case reason
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
        let reasonDecoded = try containerValues.decodeIfPresent(InspectorScanClientTypes.InternalServerExceptionReason.self, forKey: .reason)
        reason = reasonDecoded
    }
}

extension InspectorScanClientTypes {
    public enum InternalServerExceptionReason: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Codable, Swift.Hashable {
        case failedToGenerateSbom
        case other
        case sdkUnknown(Swift.String)

        public static var allCases: [InternalServerExceptionReason] {
            return [
                .failedToGenerateSbom,
                .other,
                .sdkUnknown("")
            ]
        }
        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }
        public var rawValue: Swift.String {
            switch self {
            case .failedToGenerateSbom: return "FAILED_TO_GENERATE_SBOM"
            case .other: return "OTHER"
            case let .sdkUnknown(s): return s
            }
        }
        public init(from decoder: Swift.Decoder) throws {
            let container = try decoder.singleValueContainer()
            let rawValue = try container.decode(RawValue.self)
            self = InternalServerExceptionReason(rawValue: rawValue) ?? InternalServerExceptionReason.sdkUnknown(rawValue)
        }
    }
}

extension InspectorScanClientTypes {
    public enum OutputFormat: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Codable, Swift.Hashable {
        case cycloneDx15
        case inspector
        case sdkUnknown(Swift.String)

        public static var allCases: [OutputFormat] {
            return [
                .cycloneDx15,
                .inspector,
                .sdkUnknown("")
            ]
        }
        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }
        public var rawValue: Swift.String {
            switch self {
            case .cycloneDx15: return "CYCLONE_DX_1_5"
            case .inspector: return "INSPECTOR"
            case let .sdkUnknown(s): return s
            }
        }
        public init(from decoder: Swift.Decoder) throws {
            let container = try decoder.singleValueContainer()
            let rawValue = try container.decode(RawValue.self)
            self = OutputFormat(rawValue: rawValue) ?? OutputFormat.sdkUnknown(rawValue)
        }
    }
}

extension ScanSbomInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case outputFormat
        case sbom
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let outputFormat = self.outputFormat {
            try encodeContainer.encode(outputFormat.rawValue, forKey: .outputFormat)
        }
        if let sbom = self.sbom {
            try encodeContainer.encode(sbom, forKey: .sbom)
        }
    }
}

extension ScanSbomInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        return "/scan/sbom"
    }
}

public struct ScanSbomInput: Swift.Equatable {
    /// The output format for the vulnerability report.
    public var outputFormat: InspectorScanClientTypes.OutputFormat?
    /// The JSON file for the SBOM you want to scan. The SBOM must be in CycloneDX 1.5 format.
    /// This member is required.
    public var sbom: ClientRuntime.Document?

    public init(
        outputFormat: InspectorScanClientTypes.OutputFormat? = nil,
        sbom: ClientRuntime.Document? = nil
    )
    {
        self.outputFormat = outputFormat
        self.sbom = sbom
    }
}

struct ScanSbomInputBody: Swift.Equatable {
    let sbom: ClientRuntime.Document?
    let outputFormat: InspectorScanClientTypes.OutputFormat?
}

extension ScanSbomInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case outputFormat
        case sbom
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sbomDecoded = try containerValues.decodeIfPresent(ClientRuntime.Document.self, forKey: .sbom)
        sbom = sbomDecoded
        let outputFormatDecoded = try containerValues.decodeIfPresent(InspectorScanClientTypes.OutputFormat.self, forKey: .outputFormat)
        outputFormat = outputFormatDecoded
    }
}

extension ScanSbomOutput: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: ScanSbomOutputBody = try responseDecoder.decode(responseBody: data)
            self.sbom = output.sbom
        } else {
            self.sbom = nil
        }
    }
}

public struct ScanSbomOutput: Swift.Equatable {
    /// The vulnerability report for the scanned SBOM.
    public var sbom: ClientRuntime.Document?

    public init(
        sbom: ClientRuntime.Document? = nil
    )
    {
        self.sbom = sbom
    }
}

struct ScanSbomOutputBody: Swift.Equatable {
    let sbom: ClientRuntime.Document?
}

extension ScanSbomOutputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case sbom
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sbomDecoded = try containerValues.decodeIfPresent(ClientRuntime.Document.self, forKey: .sbom)
        sbom = sbomDecoded
    }
}

enum ScanSbomOutputError: ClientRuntime.HttpResponseErrorBinding {
    static func makeError(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws -> Swift.Error {
        let restJSONError = try await AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.requestId
        switch restJSONError.errorType {
            case "AccessDeniedException": return try await AccessDeniedException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "InternalServerException": return try await InternalServerException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "ThrottlingException": return try await ThrottlingException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "ValidationException": return try await ValidationException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            default: return try await AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(httpResponse: httpResponse, message: restJSONError.errorMessage, requestID: requestID, typeName: restJSONError.errorType)
        }
    }
}

extension ThrottlingException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let retryAfterSecondsHeaderValue = httpResponse.headers.value(for: "Retry-After") {
            self.properties.retryAfterSeconds = Swift.Int(retryAfterSecondsHeaderValue) ?? 0
        } else {
            self.properties.retryAfterSeconds = nil
        }
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: ThrottlingExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The request was denied due to request throttling.
public struct ThrottlingException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        /// This member is required.
        public internal(set) var message: Swift.String? = nil
        /// The number of seconds to wait before retrying the request.
        public internal(set) var retryAfterSeconds: Swift.Int? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ThrottlingException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { true }
    public static var isThrottling: Swift.Bool { true }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil,
        retryAfterSeconds: Swift.Int? = nil
    )
    {
        self.properties.message = message
        self.properties.retryAfterSeconds = retryAfterSeconds
    }
}

struct ThrottlingExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension ThrottlingExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension ValidationException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: ValidationExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.fields = output.fields
            self.properties.message = output.message
            self.properties.reason = output.reason
        } else {
            self.properties.fields = nil
            self.properties.message = nil
            self.properties.reason = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The request has failed validation due to missing required fields or having invalid inputs.
public struct ValidationException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        /// The fields that failed validation.
        public internal(set) var fields: [InspectorScanClientTypes.ValidationExceptionField]? = nil
        /// This member is required.
        public internal(set) var message: Swift.String? = nil
        /// The reason for the validation failure.
        /// This member is required.
        public internal(set) var reason: InspectorScanClientTypes.ValidationExceptionReason? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ValidationException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        fields: [InspectorScanClientTypes.ValidationExceptionField]? = nil,
        message: Swift.String? = nil,
        reason: InspectorScanClientTypes.ValidationExceptionReason? = nil
    )
    {
        self.properties.fields = fields
        self.properties.message = message
        self.properties.reason = reason
    }
}

struct ValidationExceptionBody: Swift.Equatable {
    let message: Swift.String?
    let reason: InspectorScanClientTypes.ValidationExceptionReason?
    let fields: [InspectorScanClientTypes.ValidationExceptionField]?
}

extension ValidationExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case fields
        case message
        case reason
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
        let reasonDecoded = try containerValues.decodeIfPresent(InspectorScanClientTypes.ValidationExceptionReason.self, forKey: .reason)
        reason = reasonDecoded
        let fieldsContainer = try containerValues.decodeIfPresent([InspectorScanClientTypes.ValidationExceptionField?].self, forKey: .fields)
        var fieldsDecoded0:[InspectorScanClientTypes.ValidationExceptionField]? = nil
        if let fieldsContainer = fieldsContainer {
            fieldsDecoded0 = [InspectorScanClientTypes.ValidationExceptionField]()
            for structure0 in fieldsContainer {
                if let structure0 = structure0 {
                    fieldsDecoded0?.append(structure0)
                }
            }
        }
        fields = fieldsDecoded0
    }
}

extension InspectorScanClientTypes.ValidationExceptionField: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
        case name
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let message = self.message {
            try encodeContainer.encode(message, forKey: .message)
        }
        if let name = self.name {
            try encodeContainer.encode(name, forKey: .name)
        }
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .name)
        name = nameDecoded
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension InspectorScanClientTypes {
    /// The request has failed validation due to missing required fields or having invalid inputs.
    public struct ValidationExceptionField: Swift.Equatable {
        /// The validation exception message.
        /// This member is required.
        public var message: Swift.String?
        /// The name of the validation exception.
        /// This member is required.
        public var name: Swift.String?

        public init(
            message: Swift.String? = nil,
            name: Swift.String? = nil
        )
        {
            self.message = message
            self.name = name
        }
    }

}

extension InspectorScanClientTypes {
    public enum ValidationExceptionReason: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Codable, Swift.Hashable {
        case cannotParse
        case fieldValidationFailed
        case other
        case unknownOperation
        case unsupportedSbomType
        case sdkUnknown(Swift.String)

        public static var allCases: [ValidationExceptionReason] {
            return [
                .cannotParse,
                .fieldValidationFailed,
                .other,
                .unknownOperation,
                .unsupportedSbomType,
                .sdkUnknown("")
            ]
        }
        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }
        public var rawValue: Swift.String {
            switch self {
            case .cannotParse: return "CANNOT_PARSE"
            case .fieldValidationFailed: return "FIELD_VALIDATION_FAILED"
            case .other: return "OTHER"
            case .unknownOperation: return "UNKNOWN_OPERATION"
            case .unsupportedSbomType: return "UNSUPPORTED_SBOM_TYPE"
            case let .sdkUnknown(s): return s
            }
        }
        public init(from decoder: Swift.Decoder) throws {
            let container = try decoder.singleValueContainer()
            let rawValue = try container.decode(RawValue.self)
            self = ValidationExceptionReason(rawValue: rawValue) ?? ValidationExceptionReason.sdkUnknown(rawValue)
        }
    }
}

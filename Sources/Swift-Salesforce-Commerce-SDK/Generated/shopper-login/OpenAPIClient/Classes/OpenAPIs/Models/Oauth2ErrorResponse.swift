//
// Oauth2ErrorResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Oauth2ErrorResponse: Codable, JSONEncodable, Hashable {

    public var error: String
    public var errorUri: String?
    public var errorDescription: String?

    public init(error: String, errorUri: String? = nil, errorDescription: String? = nil) {
        self.error = error
        self.errorUri = errorUri
        self.errorDescription = errorDescription
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case error
        case errorUri = "error_uri"
        case errorDescription = "error_description"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(error, forKey: .error)
        try container.encodeIfPresent(errorUri, forKey: .errorUri)
        try container.encodeIfPresent(errorDescription, forKey: .errorDescription)
    }
}


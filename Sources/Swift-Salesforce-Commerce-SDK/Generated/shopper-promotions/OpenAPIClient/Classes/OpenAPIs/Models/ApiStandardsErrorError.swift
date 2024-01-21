//
// ApiStandardsErrorError.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Errors reported by all APIs correspond to this error document format.  This format follows the RFC [IETF rfc7807](https://tools.ietf.org/html/rfc7807).  This may include additional properties as necessary to provide additional details  regarding the error message. */
public struct ApiStandardsErrorError: Codable, JSONEncodable, Hashable {

    /** A URI reference [RFC3986] that identifies the problem type.  This specification encourages that, when dereferenced, it provide human-readable documentation for the problem type (e.g., using HTML [W3C.REC-html5-20141028]).  When this member is not present, its value is assumed to be \"about:blank\". It accepts relative URIs; this means that they must be resolved relative to the document's base URI, as per [RFC3986], Section 5.  */
    public var type: String
    /** A short, human-readable summary of the problem type.  It will not change from occurrence to occurrence of the problem, except for purposes of localization.  */
    public var title: String?
    /** A human-readable explanation specific to this occurrence of the problem.  */
    public var detail: String?
    /** A URI reference that identifies the specific occurrence of the problem.  It may or may not yield further information if dereferenced.  It accepts relative URIs; this means that they must be resolved relative to the document's base URI, as per [RFC3986], Section 5.  */
    public var instance: String?

    public init(type: String, title: String? = nil, detail: String? = nil, instance: String? = nil) {
        self.type = type
        self.title = title
        self.detail = detail
        self.instance = instance
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case title
        case detail
        case instance
    }

    public var additionalProperties: [String: AnyCodable] = [:]

    public subscript(key: String) -> AnyCodable? {
        get {
            if let value = additionalProperties[key] {
                return value
            }
            return nil
        }

        set {
            additionalProperties[key] = newValue
        }
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(detail, forKey: .detail)
        try container.encodeIfPresent(instance, forKey: .instance)
        var additionalPropertiesContainer = encoder.container(keyedBy: String.self)
        try additionalPropertiesContainer.encodeMap(additionalProperties)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        type = try container.decode(String.self, forKey: .type)
        title = try container.decodeIfPresent(String.self, forKey: .title)
        detail = try container.decodeIfPresent(String.self, forKey: .detail)
        instance = try container.decodeIfPresent(String.self, forKey: .instance)
        var nonAdditionalPropertyKeys = Set<String>()
        nonAdditionalPropertyKeys.insert("type")
        nonAdditionalPropertyKeys.insert("title")
        nonAdditionalPropertyKeys.insert("detail")
        nonAdditionalPropertyKeys.insert("instance")
        let additionalPropertiesContainer = try decoder.container(keyedBy: String.self)
        additionalProperties = try additionalPropertiesContainer.decodeMap(AnyCodable.self, excludedKeys: nonAdditionalPropertyKeys)
    }
}

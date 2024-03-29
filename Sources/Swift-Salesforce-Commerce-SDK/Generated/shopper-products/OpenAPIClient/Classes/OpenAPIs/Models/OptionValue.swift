//
// OptionValue.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Document representing an option value. */
public struct OptionValue: Codable, JSONEncodable, Hashable {

    static let idRule = StringRule(minLength: 1, maxLength: 100, pattern: nil)
    /** A flag indicating whether this option value is the default one. */
    public var _default: Bool?
    /** The ID of the option value. */
    public var id: String
    /** The localized name of the option value. */
    public var name: String?
    /** The effective price of the option value. */
    public var price: Double?

    public init(_default: Bool? = nil, id: String, name: String? = nil, price: Double? = nil) {
        self._default = _default
        self.id = id
        self.name = name
        self.price = price
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _default = "default"
        case id
        case name
        case price
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_default, forKey: ._default)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(price, forKey: .price)
    }
}


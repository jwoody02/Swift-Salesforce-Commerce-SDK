//
// Variant.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A product which is a variation within a master product that describes different colors, sizes, or other variation attributes. *Has a SKU.* */
public struct Variant: Codable, JSONEncodable, Hashable {

    static let productIdRule = StringRule(minLength: 1, maxLength: 100, pattern: nil)
    /** A flag indicating whether the variant is orderable. */
    public var orderable: Bool?
    /** The sales price of the variant. */
    public var price: Double?
    /** The ID (SKU) of the variant. */
    public var productId: String
    /** List of tiered prices if the product is a variant */
    public var tieredPrices: [ProductPriceTable]?
    /** The actual variation attribute ID - value pairs. */
    public var variationValues: [String: String]?

    public init(orderable: Bool? = nil, price: Double? = nil, productId: String, tieredPrices: [ProductPriceTable]? = nil, variationValues: [String: String]? = nil) {
        self.orderable = orderable
        self.price = price
        self.productId = productId
        self.tieredPrices = tieredPrices
        self.variationValues = variationValues
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case orderable
        case price
        case productId
        case tieredPrices
        case variationValues
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(orderable, forKey: .orderable)
        try container.encodeIfPresent(price, forKey: .price)
        try container.encode(productId, forKey: .productId)
        try container.encodeIfPresent(tieredPrices, forKey: .tieredPrices)
        try container.encodeIfPresent(variationValues, forKey: .variationValues)
    }
}


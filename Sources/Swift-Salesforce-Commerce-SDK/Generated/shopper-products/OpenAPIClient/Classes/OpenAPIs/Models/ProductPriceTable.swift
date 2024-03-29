//
// ProductPriceTable.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Tiered Price Level Object */
public struct ProductPriceTable: Codable, JSONEncodable, Hashable {

    /** Price for the product for the specified tier for the specified pricebook */
    public var price: Double?
    /** The active pricebook for which this price is defined */
    public var pricebook: String?
    /** Quantity tier for which the price is defined. */
    public var quantity: Double?

    public init(price: Double? = nil, pricebook: String? = nil, quantity: Double? = nil) {
        self.price = price
        self.pricebook = pricebook
        self.quantity = quantity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case price
        case pricebook
        case quantity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(price, forKey: .price)
        try container.encodeIfPresent(pricebook, forKey: .pricebook)
        try container.encodeIfPresent(quantity, forKey: .quantity)
    }
}


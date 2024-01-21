//
// CategoryResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Result document containing an array of categories. */
public struct CategoryResult: Codable, JSONEncodable, Hashable {

    /** The number of returned documents. */
    public var limit: Int
    /** The array of category documents. */
    public var data: [Category]
    /** The total number of documents. */
    public var total: Int

    public init(limit: Int, data: [Category], total: Int) {
        self.limit = limit
        self.data = data
        self.total = total
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case limit
        case data
        case total
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(limit, forKey: .limit)
        try container.encode(data, forKey: .data)
        try container.encode(total, forKey: .total)
    }
}

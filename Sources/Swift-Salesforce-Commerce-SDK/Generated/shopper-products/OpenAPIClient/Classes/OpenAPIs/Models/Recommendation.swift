//
// Recommendation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Document representing a product recommendation. */
public struct Recommendation: Codable, JSONEncodable, Hashable {

    /** The localized callout message of the recommendation. */
    public var calloutMsg: String?
    public var image: Image?
    /** The localized long description of the recommendation. */
    public var longDescription: String?
    /** The localized name of the recommendation. */
    public var name: String?
    public var recommendationType: RecommendationType
    /** The recommended item ID of the recommendation. */
    public var recommendedItemId: String?
    /** The localized short description of the recommendation. */
    public var shortDescription: String?

    public init(calloutMsg: String? = nil, image: Image? = nil, longDescription: String? = nil, name: String? = nil, recommendationType: RecommendationType, recommendedItemId: String? = nil, shortDescription: String? = nil) {
        self.calloutMsg = calloutMsg
        self.image = image
        self.longDescription = longDescription
        self.name = name
        self.recommendationType = recommendationType
        self.recommendedItemId = recommendedItemId
        self.shortDescription = shortDescription
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case calloutMsg
        case image
        case longDescription
        case name
        case recommendationType
        case recommendedItemId
        case shortDescription
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(calloutMsg, forKey: .calloutMsg)
        try container.encodeIfPresent(image, forKey: .image)
        try container.encodeIfPresent(longDescription, forKey: .longDescription)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encode(recommendationType, forKey: .recommendationType)
        try container.encodeIfPresent(recommendedItemId, forKey: .recommendedItemId)
        try container.encodeIfPresent(shortDescription, forKey: .shortDescription)
    }
}


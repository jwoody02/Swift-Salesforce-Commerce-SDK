//
// Component.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Component: Codable, JSONEncodable, Hashable {

    /** Component identifier. */
    public var id: String
    /** Component type identifier. */
    public var typeId: String
    /** The configuration data assigned to the component. */
    public var data: AnyCodable?
    /** Any custom data added by the custom code for this component. */
    public var custom: AnyCodable?
    /** The regions (and their assigned components) for the component. */
    public var regions: [Region]?

    public init(id: String, typeId: String, data: AnyCodable? = nil, custom: AnyCodable? = nil, regions: [Region]? = nil) {
        self.id = id
        self.typeId = typeId
        self.data = data
        self.custom = custom
        self.regions = regions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case typeId
        case data
        case custom
        case regions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(typeId, forKey: .typeId)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(custom, forKey: .custom)
        try container.encodeIfPresent(regions, forKey: .regions)
    }
}

//
// Image.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Product image */
public struct Image: Codable, JSONEncodable, Hashable {

    static let linkRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    /** The localized alternative text of the image. */
    public var alt: String?
    /** Base URL for the Dynamic Image Service (DIS) address. This is only shown if the image is stored on the server and DIS is enabled. */
    public var disBaseLink: String?
    /** The URL of the actual image. */
    public var link: String
    /** The localized title of the image. */
    public var title: String?

    public init(alt: String? = nil, disBaseLink: String? = nil, link: String, title: String? = nil) {
        self.alt = alt
        self.disBaseLink = disBaseLink
        self.link = link
        self.title = title
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case alt
        case disBaseLink
        case link
        case title
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(alt, forKey: .alt)
        try container.encodeIfPresent(disBaseLink, forKey: .disBaseLink)
        try container.encode(link, forKey: .link)
        try container.encodeIfPresent(title, forKey: .title)
    }
}


//
// TokenTypeHint.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Token Type Hint */
public enum TokenTypeHint: String, Codable, CaseIterable {
    case accessToken = "access_token"
    case refreshToken = "refresh_token"
}

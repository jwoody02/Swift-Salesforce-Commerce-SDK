//
// TrustedOnBehalf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Type of system used for Trusted System On Behalf of requests (external or interal). */
public enum TrustedOnBehalf: String, Codable, CaseIterable {
    case extOnBehalfOf = "ts_ext_on_behalf_of"
    case intOnBehalfOf = "ts_int_on_behalf_of"
}

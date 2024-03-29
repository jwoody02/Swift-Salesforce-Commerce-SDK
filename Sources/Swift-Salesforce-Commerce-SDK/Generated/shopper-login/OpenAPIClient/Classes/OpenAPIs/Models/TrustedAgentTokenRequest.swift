//
// TrustedAgentTokenRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TrustedAgentTokenRequest: Codable, JSONEncodable, Hashable {

    static let agentIdRule = StringRule(minLength: nil, maxLength: 40, pattern: nil)
    static let clientIdRule = StringRule(minLength: nil, maxLength: 40, pattern: nil)
    static let channelIdRule = StringRule(minLength: nil, maxLength: 100, pattern: nil)
    static let loginIdRule = StringRule(minLength: nil, maxLength: 128, pattern: nil)
    static let idpOriginRule = StringRule(minLength: nil, maxLength: 16, pattern: nil)
    /** The ID of the merchant. This is an optional parameter. If passed in, the `agent_id` will be validated using the SUB claim in the response from Account Manager. */
    public var agentId: String?
    /** The SLAS public client ID or SLAS private client ID for use with internal, trusted-system requests.  The `client_id` is not needed if a using a SLAS private `client_id` and the `_sfdc_client_auth` header. */
    public var clientId: String
    /** The channel (ECOM site) that the user is associated with. */
    public var channelId: String
    /** PKCE code verifier. Created by the caller.  The `code_challenge` is created by SHA256 hashing the `code_verifier` and Base64 encoding the resulting hash.  The `code_verifier` should be a high entropy cryptographically random string with a minimum of 43 characters and a maximum of 128 characters.  The `code_verifier` is not needed if a using a SLAS private `client_id` and the `_sfdc_client_auth` header. */
    public var codeVerifier: String
    public var grantType: GrantType
    /** The ID is the shopper for trusted agent access. */
    public var loginId: String
    /** The IDP that the user is associated with. */
    public var idpOrigin: String

    public init(agentId: String? = nil, clientId: String, channelId: String, codeVerifier: String, grantType: GrantType, loginId: String, idpOrigin: String) {
        self.agentId = agentId
        self.clientId = clientId
        self.channelId = channelId
        self.codeVerifier = codeVerifier
        self.grantType = grantType
        self.loginId = loginId
        self.idpOrigin = idpOrigin
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case agentId = "agent_id"
        case clientId = "client_id"
        case channelId = "channel_id"
        case codeVerifier = "code_verifier"
        case grantType = "grant_type"
        case loginId = "login_id"
        case idpOrigin = "idp_origin"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(agentId, forKey: .agentId)
        try container.encode(clientId, forKey: .clientId)
        try container.encode(channelId, forKey: .channelId)
        try container.encode(codeVerifier, forKey: .codeVerifier)
        try container.encode(grantType, forKey: .grantType)
        try container.encode(loginId, forKey: .loginId)
        try container.encode(idpOrigin, forKey: .idpOrigin)
    }
}


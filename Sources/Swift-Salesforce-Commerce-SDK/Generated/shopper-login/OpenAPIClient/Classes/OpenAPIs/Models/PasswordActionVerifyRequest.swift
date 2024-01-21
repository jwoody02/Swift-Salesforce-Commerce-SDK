//
// PasswordActionVerifyRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A request for creating a new password using the password action token. */
public struct PasswordActionVerifyRequest: Codable, JSONEncodable, Hashable {

    static let clientIdRule = StringRule(minLength: nil, maxLength: 40, pattern: nil)
    static let channelIdRule = StringRule(minLength: nil, maxLength: 100, pattern: nil)
    /** The public client ID. */
    public var clientId: String
    /** Password action token that was returned from the `/password/reset` endpoint. */
    public var pwdActionToken: String
    /** PKCE code verifier. Created by the client.  The `code_challenge` is created by SHA256 hashing the `code_verifier` and Base64 encoding the resulting hash.  The `code_verifier` should be a high entropy cryptographically random string with a minimum of 43 characters and a maximum of 128 characters. */
    public var codeVerifier: String
    /** The new password to set for the shopper associated with the password action token. */
    public var newPassword: String
    /** The channel that the request is for. For an ECOM request, this is angalous to the site ID. */
    public var channelId: String

    public init(clientId: String, pwdActionToken: String, codeVerifier: String, newPassword: String, channelId: String) {
        self.clientId = clientId
        self.pwdActionToken = pwdActionToken
        self.codeVerifier = codeVerifier
        self.newPassword = newPassword
        self.channelId = channelId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case clientId = "client_id"
        case pwdActionToken = "pwd_action_token"
        case codeVerifier = "code_verifier"
        case newPassword = "new_password"
        case channelId = "channel_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(clientId, forKey: .clientId)
        try container.encode(pwdActionToken, forKey: .pwdActionToken)
        try container.encode(codeVerifier, forKey: .codeVerifier)
        try container.encode(newPassword, forKey: .newPassword)
        try container.encode(channelId, forKey: .channelId)
    }
}


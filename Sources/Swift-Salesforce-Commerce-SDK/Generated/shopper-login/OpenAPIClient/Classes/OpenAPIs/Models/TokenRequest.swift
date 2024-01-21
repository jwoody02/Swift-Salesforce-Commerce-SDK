//
// TokenRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TokenRequest: Codable, JSONEncodable, Hashable {

    static let refreshTokenRule = StringRule(minLength: nil, maxLength: 256, pattern: nil)
    static let codeRule = StringRule(minLength: nil, maxLength: 256, pattern: nil)
    static let redirectUriRule = StringRule(minLength: nil, maxLength: 256, pattern: nil)
    static let codeVerifierRule = StringRule(minLength: nil, maxLength: 128, pattern: nil)
    static let clientIdRule = StringRule(minLength: nil, maxLength: 40, pattern: nil)
    static let channelIdRule = StringRule(minLength: nil, maxLength: 100, pattern: nil)
    /** The long-term token used to refresh the short term access token. Required only with a grant type of `refresh_token`. */
    public var refreshToken: String?
    /** Authorization code from the OAuth 2.1 service received in the front channel that is used to get access tokens and refresh tokens. Required with a grant type of `authorization_code` and `session_bridge`. */
    public var code: String?
    /** The shopper's unique identifier, if known. If not provided, a new USID is generated. */
    public var usid: String?
    public var grantType: GrantType
    /** The redirect URI that was used when getting the authorization code. A variety of URI formats and wildcards for host are supported, but app links like `airbnb://` or `fb://` are not.   Examples of supported URIs:   - `http://localhost:3000/callback`   - `https://example.com/callback`   - `com.example.app:redirect_uri_path`   - ` *.subdomain.topleveldomain.com`  */
    public var redirectUri: String?
    /** PKCE code verifier. Created by the client calling the `login` endpoint.  The `code_verifier` should be a high entropy cryptographically random string with a minimum of 43 characters and a maximum of 128 characters.  The `code_verifier` is optional when using a private client id for the token request. */
    public var codeVerifier: String?
    /** The SLAS client ID. Required when the grant type is `authorization_code_pkce`. */
    public var clientId: String?
    /** The channel (ECOM site) that the user is associated with. */
    public var channelId: String?

    public init(refreshToken: String? = nil, code: String? = nil, usid: String? = nil, grantType: GrantType, redirectUri: String? = nil, codeVerifier: String? = nil, clientId: String? = nil, channelId: String? = nil) {
        self.refreshToken = refreshToken
        self.code = code
        self.usid = usid
        self.grantType = grantType
        self.redirectUri = redirectUri
        self.codeVerifier = codeVerifier
        self.clientId = clientId
        self.channelId = channelId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case refreshToken = "refresh_token"
        case code
        case usid
        case grantType = "grant_type"
        case redirectUri = "redirect_uri"
        case codeVerifier = "code_verifier"
        case clientId = "client_id"
        case channelId = "channel_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(refreshToken, forKey: .refreshToken)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(usid, forKey: .usid)
        try container.encode(grantType, forKey: .grantType)
        try container.encodeIfPresent(redirectUri, forKey: .redirectUri)
        try container.encodeIfPresent(codeVerifier, forKey: .codeVerifier)
        try container.encodeIfPresent(clientId, forKey: .clientId)
        try container.encodeIfPresent(channelId, forKey: .channelId)
    }
}

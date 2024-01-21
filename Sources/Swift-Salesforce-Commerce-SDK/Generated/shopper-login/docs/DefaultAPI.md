# DefaultAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticateCustomer**](DefaultAPI.md#authenticatecustomer) | **POST** /organizations/{organizationId}/oauth2/login | 
[**authorizeCustomer**](DefaultAPI.md#authorizecustomer) | **GET** /organizations/{organizationId}/oauth2/authorize | 
[**authorizePasswordlessCustomer**](DefaultAPI.md#authorizepasswordlesscustomer) | **POST** /organizations/{organizationId}/oauth2/passwordless/login | 
[**getAccessToken**](DefaultAPI.md#getaccesstoken) | **POST** /organizations/{organizationId}/oauth2/token | 
[**getJwksUri**](DefaultAPI.md#getjwksuri) | **GET** /organizations/{organizationId}/oauth2/jwks | 
[**getPasswordLessAccessToken**](DefaultAPI.md#getpasswordlessaccesstoken) | **POST** /organizations/{organizationId}/oauth2/passwordless/token | 
[**getPasswordResetToken**](DefaultAPI.md#getpasswordresettoken) | **POST** /organizations/{organizationId}/oauth2/password/reset | 
[**getSessionBridgeAccessToken**](DefaultAPI.md#getsessionbridgeaccesstoken) | **POST** /organizations/{organizationId}/oauth2/session-bridge/token | 
[**getTrustedAgentAccessToken**](DefaultAPI.md#gettrustedagentaccesstoken) | **POST** /organizations/{organizationId}/oauth2/trusted-agent/token | 
[**getTrustedAgentAuthorizationToken**](DefaultAPI.md#gettrustedagentauthorizationtoken) | **GET** /organizations/{organizationId}/oauth2/trusted-agent/authorize | 
[**getTrustedSystemAccessToken**](DefaultAPI.md#gettrustedsystemaccesstoken) | **POST** /organizations/{organizationId}/oauth2/trusted-system/token | 
[**getUserInfo**](DefaultAPI.md#getuserinfo) | **GET** /organizations/{organizationId}/oauth2/userinfo | 
[**getWellknownOpenidConfiguration**](DefaultAPI.md#getwellknownopenidconfiguration) | **GET** /organizations/{organizationId}/oauth2/.well-known/openid-configuration | 
[**introspectToken**](DefaultAPI.md#introspecttoken) | **POST** /organizations/{organizationId}/oauth2/introspect | 
[**logoutCustomer**](DefaultAPI.md#logoutcustomer) | **GET** /organizations/{organizationId}/oauth2/logout | 
[**resetPassword**](DefaultAPI.md#resetpassword) | **POST** /organizations/{organizationId}/oauth2/password/action | 
[**revokeToken**](DefaultAPI.md#revoketoken) | **POST** /organizations/{organizationId}/oauth2/revoke | 


# **authenticateCustomer**
```swift
    open class func authenticateCustomer(organizationId: String, authorization: String, formData: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Logs in a shopper with credentials that are managed by a B2C Commerce instance (ECOM). It follows the authorization code grant flow as defined by the OAuth 2.1 standard. It also uses a proof key for code exchange (PKCE).  For PKCE values: - The `code_verifier` string is a random string used for the `/token` endpoint request. - The `code_challenge` is an encoded version of the `code_verifier` string using an SHA-256 hash.    The request must include a basic authorization header that contains a Base64 encoded version of the following string: `<shopperUserID>:<shopperPassword>`.    Required parameters: `code_challenge`, `channel_id`, `client_id`, and `redirect_uri`.    Optional parameters: `usid`.    The SLAS `/login` endpoint redirects back to the redirect URI and returns an authorization code.    Calls to `/login` made with the same loginId and tenantId within 1 second will result in a conflict. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let authorization = "authorization_example" // String | Base64-encoded username and password for HTTP Basic authentication.
let formData = "formData_example" // String | 

DefaultAPI.authenticateCustomer(organizationId: organizationId, authorization: authorization, formData: formData) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 
 **authorization** | **String** | Base64-encoded username and password for HTTP Basic authentication. | 
 **formData** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authorizeCustomer**
```swift
    open class func authorizeCustomer(organizationId: String, redirectUri: String, responseType: String, clientId: String, codeChallenge: String, scope: Scope_authorizeCustomer? = nil, state: String? = nil, usid: String? = nil, hint: String? = nil, channelId: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Get an authorization code after authenticating a user against an identity provider (IDP). This is the first step of the OAuth 2.1 authorization code flow, where a user can log in via federation to the IDP configured for the client. After successfully logging in, the user gets an authorization code via a redirect URI.  This endpoint can be called from the front channel (the browser).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let redirectUri = "redirectUri_example" // String | The URL to which the server redirects the browser after the user grants the authorization. The URI must be pre-registered. A variety of URI formats and wildcard for host are supported, but app links like `airbnb://` or `fb://` are not. Examples of supported URIs:   - `http://localhost:3000/callback`   - `https://example.com/callback`   - `com.example.app:redirect_uri_path`   - ` *.subdomain.topleveldomain.com` 
let responseType = "responseType_example" // String | Must be `code`. Indicates that the client wants an authorization code (using the `authorization_code` grant type).
let clientId = "clientId_example" // String | The client ID obtained during application registration.
let codeChallenge = "codeChallenge_example" // String | PKCE code challenge. Created by the client calling the `login` endpoint.  The `code_challenge` is created by SHA256 hashing the `code_verifier` and Base64 encoding the resulting hash.  The `code_verifier` should be a high entropy cryptographically random string with a minimum of 43 characters and a maximum of 128 characters.
let scope = "scope_example" // String |  (optional)
let state = "state_example" // String | Value to send the client to determine the state between the authorization request and the server response. Optional, but strongly recommended. (optional)
let usid = "usid_example" // String | A unique shopper identifier (USID). If not provided, a new USID is generated. (optional)
let hint = "hint_example" // String | Name of an identity provider (IDP) to optionally redirect to, thereby skipping the IDP selection step.  To use a public client, set `hint` to `guest` and use a public client ID to get an authorization code. If no `hint` is provided, the preferred IDP of the tenant is used by default.  For session bridge authorization the `hint` should be set to `sb-user` for a registered customer and to `sb-guest` for a guest. (optional)
let channelId = "channelId_example" // String | The channel that this request is for. For an ECOM request, this is angalous to the site ID. (optional)

DefaultAPI.authorizeCustomer(organizationId: organizationId, redirectUri: redirectUri, responseType: responseType, clientId: clientId, codeChallenge: codeChallenge, scope: scope, state: state, usid: usid, hint: hint, channelId: channelId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 
 **redirectUri** | **String** | The URL to which the server redirects the browser after the user grants the authorization. The URI must be pre-registered. A variety of URI formats and wildcard for host are supported, but app links like &#x60;airbnb://&#x60; or &#x60;fb://&#x60; are not. Examples of supported URIs:   - &#x60;http://localhost:3000/callback&#x60;   - &#x60;https://example.com/callback&#x60;   - &#x60;com.example.app:redirect_uri_path&#x60;   - &#x60; *.subdomain.topleveldomain.com&#x60;  | 
 **responseType** | **String** | Must be &#x60;code&#x60;. Indicates that the client wants an authorization code (using the &#x60;authorization_code&#x60; grant type). | 
 **clientId** | **String** | The client ID obtained during application registration. | 
 **codeChallenge** | **String** | PKCE code challenge. Created by the client calling the &#x60;login&#x60; endpoint.  The &#x60;code_challenge&#x60; is created by SHA256 hashing the &#x60;code_verifier&#x60; and Base64 encoding the resulting hash.  The &#x60;code_verifier&#x60; should be a high entropy cryptographically random string with a minimum of 43 characters and a maximum of 128 characters. | 
 **scope** | **String** |  | [optional] 
 **state** | **String** | Value to send the client to determine the state between the authorization request and the server response. Optional, but strongly recommended. | [optional] 
 **usid** | **String** | A unique shopper identifier (USID). If not provided, a new USID is generated. | [optional] 
 **hint** | **String** | Name of an identity provider (IDP) to optionally redirect to, thereby skipping the IDP selection step.  To use a public client, set &#x60;hint&#x60; to &#x60;guest&#x60; and use a public client ID to get an authorization code. If no &#x60;hint&#x60; is provided, the preferred IDP of the tenant is used by default.  For session bridge authorization the &#x60;hint&#x60; should be set to &#x60;sb-user&#x60; for a registered customer and to &#x60;sb-guest&#x60; for a guest. | [optional] 
 **channelId** | **String** | The channel that this request is for. For an ECOM request, this is angalous to the site ID. | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authorizePasswordlessCustomer**
```swift
    open class func authorizePasswordlessCustomer(organizationId: String, formData: String, authorization: String? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



Allows the customer to authenticate when their identity provider is down.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let formData = "formData_example" // String | 
let authorization = "authorization_example" // String | Base64-encoded string for HTTP Basic authentication. The string is composed of a client ID and client secret, separated by a colon (`:`), like this: `clientId:clientSecret` (optional)

DefaultAPI.authorizePasswordlessCustomer(organizationId: organizationId, formData: formData, authorization: authorization) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 
 **formData** | **String** |  | 
 **authorization** | **String** | Base64-encoded string for HTTP Basic authentication. The string is composed of a client ID and client secret, separated by a colon (&#x60;:&#x60;), like this: &#x60;clientId:clientSecret&#x60; | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccessToken**
```swift
    open class func getAccessToken(organizationId: String, formData: String, authorization: String? = nil, completion: @escaping (_ data: TokenResponse?, _ error: Error?) -> Void)
```



Get the shopper or guest JWT access token and a refresh token. This is the second step of the OAuth 2.1 authorization code flow.  For a private client, an application is able to get an access token for the shopper through the back channel (a trusted server) by passing in the client credentials and the authorization code retrieved from the `authorize` endpoint.  For a guest user, get the shopper JWT access token and a refresh token. This is where a client appplication is able to get an access token for the guest user through the back channel (a trusted server) by passing in the client credentials.  For a public client using PKCE, an application will pass a PKCE `code_verifier` that matches the `code_challenge` that was used to `authorize` the customer along with the authorization code.  When refreshing the access token with a private client ID and client secret, the refresh token is _not_ regenerated. However, when refreshing the access token with a public client ID, the refresh token is _always_ regenerated. The old refresh token is voided with every refresh call, so the refresh token on the client needs to be replaced to always store the new refresh token.  See the Body section for required parameters, including `grant_type` and others, depending on the value of `grant_type`.  **Important**: We strongly recommended using the `channel_id` query parameter because **it will be required in the future**.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let formData = "formData_example" // String | 
let authorization = "authorization_example" // String | Base64-encoded string for HTTP Basic authentication. The string is composed of a client ID and client secret, separated by a colon (`:`), like this: `clientId:clientSecret`. Required unless the grant type is `authorization_code_pkce`. (optional)

DefaultAPI.getAccessToken(organizationId: organizationId, formData: formData, authorization: authorization) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 
 **formData** | **String** |  | 
 **authorization** | **String** | Base64-encoded string for HTTP Basic authentication. The string is composed of a client ID and client secret, separated by a colon (&#x60;:&#x60;), like this: &#x60;clientId:clientSecret&#x60;. Required unless the grant type is &#x60;authorization_code_pkce&#x60;. | [optional] 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJwksUri**
```swift
    open class func getJwksUri(organizationId: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



Returns a JSON Web Key Set (JWKS) containing the current, past, and future public keys. The key set enables clients to validate the Shopper JSON Web Token (JWT) issued by SLAS.  For performance purposes, the `/jwks` endpoint is rate limited to 25 call per minute. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.

DefaultAPI.getJwksUri(organizationId: organizationId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPasswordLessAccessToken**
```swift
    open class func getPasswordLessAccessToken(organizationId: String, formData: String, authorization: String? = nil, completion: @escaping (_ data: TokenResponse?, _ error: Error?) -> Void)
```



Issue a shopper token (JWT).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let formData = "formData_example" // String | 
let authorization = "authorization_example" // String | Base64-encoded string for HTTP Basic authentication. The string is composed of a client ID and client secret, separated by a colon (`:`), like this: `clientId:clientSecret` (optional)

DefaultAPI.getPasswordLessAccessToken(organizationId: organizationId, formData: formData, authorization: authorization) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 
 **formData** | **String** |  | 
 **authorization** | **String** | Base64-encoded string for HTTP Basic authentication. The string is composed of a client ID and client secret, separated by a colon (&#x60;:&#x60;), like this: &#x60;clientId:clientSecret&#x60; | [optional] 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPasswordResetToken**
```swift
    open class func getPasswordResetToken(organizationId: String, formData: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Request a reset password token

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let formData = "formData_example" // String | 

DefaultAPI.getPasswordResetToken(organizationId: organizationId, formData: formData) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 
 **formData** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSessionBridgeAccessToken**
```swift
    open class func getSessionBridgeAccessToken(organizationId: String, formData: String, completion: @escaping (_ data: TokenResponse?, _ error: Error?) -> Void)
```



Get a shopper JWT access token for a registered customer using session bridge.  For public client id requests the grant_type must be set to `session_bridge`.  For  private client_id and secret the grant_type must be set to `client_credentials` along with a basic authorization header.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let formData = "formData_example" // String | 

DefaultAPI.getSessionBridgeAccessToken(organizationId: organizationId, formData: formData) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 
 **formData** | **String** |  | 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTrustedAgentAccessToken**
```swift
    open class func getTrustedAgentAccessToken(organizationId: String, formData: String, authorization: String? = nil, sfdcClientAuth: String? = nil, completion: @escaping (_ data: TokenResponse?, _ error: Error?) -> Void)
```



Get a shopper JWT access token for a registered customer using a trusted agent (merchant).  If using a SLAS private client ID, you must also use an `_sfdc_client_auth` header.   The value of the `_sfdc_client_auth` header must be a Base64-encoded string. The string is composed of a SLAS private client ID and client secret, separated by a colon (`:`). For example, `privateClientId:privateClientsecret` becomes `cHJpdmF0ZUNsaWVudElkOnByaXZhdGVDbGllbnRzZWNyZXQ=` after Base64 encoding.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let formData = "formData_example" // String | 
let authorization = "authorization_example" // String | This is the `Bearer` token returned from Account Manager after the trusted agent on behalf of (TAOB) authorize call. (optional)
let sfdcClientAuth = "sfdcClientAuth_example" // String | \"Base64-encoded string of client credentials. The string is composed of a client ID and client secret, separated by a colon (`:`), like this: `clientId:clientSecret`. (Do not add the string `\"Basic\"`.)  The `_sfdc_client_auth` header is only required when using a SLAS private client ID.\" (optional)

DefaultAPI.getTrustedAgentAccessToken(organizationId: organizationId, formData: formData, authorization: authorization, sfdcClientAuth: sfdcClientAuth) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 
 **formData** | **String** |  | 
 **authorization** | **String** | This is the &#x60;Bearer&#x60; token returned from Account Manager after the trusted agent on behalf of (TAOB) authorize call. | [optional] 
 **sfdcClientAuth** | **String** | \&quot;Base64-encoded string of client credentials. The string is composed of a client ID and client secret, separated by a colon (&#x60;:&#x60;), like this: &#x60;clientId:clientSecret&#x60;. (Do not add the string &#x60;\&quot;Basic\&quot;&#x60;.)  The &#x60;_sfdc_client_auth&#x60; header is only required when using a SLAS private client ID.\&quot; | [optional] 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTrustedAgentAuthorizationToken**
```swift
    open class func getTrustedAgentAuthorizationToken(organizationId: String, clientId: String, channelId: String, codeChallenge: String, loginId: String, idpOrigin: String, redirectUri: String, responseType: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Obtains a new agent on behalf authorization token for a registered customer.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let clientId = "clientId_example" // String | The SLAS public client ID or SLAS private client ID for use with internal, trusted-agent requests. When using a private client ID a PKCE code challenge is not required.
let channelId = "channelId_example" // String | The channel (ECOM site) that the user is associated with.
let codeChallenge = "codeChallenge_example" // String | PKCE code challenge. Created by the caller.  The `code_challenge` is created by SHA256 hashing the `code_verifier` and Base64 encoding the resulting hash.  The `code_verifier` should be a high entropy cryptographically random string with a minimum of 43 characters and a maximum of 128 characters.  The `code_challenge` is not needed if a using SLAS private `client_id`.
let loginId = "loginId_example" // String | The ID of the shopper for trusted agent access.
let idpOrigin = "idpOrigin_example" // String | The IDP that the shopper is associated with.
let redirectUri = "redirectUri_example" // String | The redirect for Account Manager to redirect to. A variety of URI formats and wildcard for host are supported, but app links like `airbnb://` or `fb://` are not. Examples of supported URIs:   - `http://localhost:3000/callback`   - `https://example.com/callback`   - `com.example.app:redirect_uri_path`   - ` *.subdomain.topleveldomain.com` 
let responseType = "responseType_example" // String | Must be `code`. Indicates that the caller wants an authorization code.

DefaultAPI.getTrustedAgentAuthorizationToken(organizationId: organizationId, clientId: clientId, channelId: channelId, codeChallenge: codeChallenge, loginId: loginId, idpOrigin: idpOrigin, redirectUri: redirectUri, responseType: responseType) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 
 **clientId** | **String** | The SLAS public client ID or SLAS private client ID for use with internal, trusted-agent requests. When using a private client ID a PKCE code challenge is not required. | 
 **channelId** | **String** | The channel (ECOM site) that the user is associated with. | 
 **codeChallenge** | **String** | PKCE code challenge. Created by the caller.  The &#x60;code_challenge&#x60; is created by SHA256 hashing the &#x60;code_verifier&#x60; and Base64 encoding the resulting hash.  The &#x60;code_verifier&#x60; should be a high entropy cryptographically random string with a minimum of 43 characters and a maximum of 128 characters.  The &#x60;code_challenge&#x60; is not needed if a using SLAS private &#x60;client_id&#x60;. | 
 **loginId** | **String** | The ID of the shopper for trusted agent access. | 
 **idpOrigin** | **String** | The IDP that the shopper is associated with. | 
 **redirectUri** | **String** | The redirect for Account Manager to redirect to. A variety of URI formats and wildcard for host are supported, but app links like &#x60;airbnb://&#x60; or &#x60;fb://&#x60; are not. Examples of supported URIs:   - &#x60;http://localhost:3000/callback&#x60;   - &#x60;https://example.com/callback&#x60;   - &#x60;com.example.app:redirect_uri_path&#x60;   - &#x60; *.subdomain.topleveldomain.com&#x60;  | 
 **responseType** | **String** | Must be &#x60;code&#x60;. Indicates that the caller wants an authorization code. | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTrustedSystemAccessToken**
```swift
    open class func getTrustedSystemAccessToken(organizationId: String, formData: String, authorization: String? = nil, completion: @escaping (_ data: TokenResponse?, _ error: Error?) -> Void)
```



Get a shopper JWT access token for a registered customer whose credentials are stored using a third party system.  For external trusted-system requests, a basic authorization header that includes a SLAS client ID and SLAS client secret can be used in place of the bearer token.  For internal trusted-system requests, the bearer token must be a C2C JWT.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let formData = "formData_example" // String | 
let authorization = "authorization_example" // String | Base64-encoded string for HTTP Basic authentication. The string is composed of a client ID and client secret, separated by a colon (`:`), like this: `clientId:clientSecret`. Required unless the grant type is `authorization_code_pkce`. (optional)

DefaultAPI.getTrustedSystemAccessToken(organizationId: organizationId, formData: formData, authorization: authorization) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 
 **formData** | **String** |  | 
 **authorization** | **String** | Base64-encoded string for HTTP Basic authentication. The string is composed of a client ID and client secret, separated by a colon (&#x60;:&#x60;), like this: &#x60;clientId:clientSecret&#x60;. Required unless the grant type is &#x60;authorization_code_pkce&#x60;. | [optional] 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserInfo**
```swift
    open class func getUserInfo(organizationId: String, channelId: String? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



Returns a JSON listing of claims about the currently authenticated user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let channelId = "channelId_example" // String | Used when getting user information for a SFCC login. For an ECOM customer, this is angalous to the site ID. Required when getting user information for an ECOM customer. (optional)

DefaultAPI.getUserInfo(organizationId: organizationId, channelId: channelId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 
 **channelId** | **String** | Used when getting user information for a SFCC login. For an ECOM customer, this is angalous to the site ID. Required when getting user information for an ECOM customer. | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWellknownOpenidConfiguration**
```swift
    open class func getWellknownOpenidConfiguration(organizationId: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



Returns a JSON listing of the OpenID/OAuth endpoints, supported scopes and claims, public keys used to sign the tokens, and other details.  For performance purposes, the `/jwks` endpoint is rate limited to 25 call per minute. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.

DefaultAPI.getWellknownOpenidConfiguration(organizationId: organizationId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **introspectToken**
```swift
    open class func introspectToken(organizationId: String, authorization: String, formData: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```



Returns the token properties. A basic auth header with Base64-encoded `clientId:secret` is required in the Authorization header, as well as an access token or refresh token. Use `token_type_hint` to help identify the token.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let authorization = "authorization_example" // String | Base64 string for HTTP Basic authentication.
let formData = "formData_example" // String | 

DefaultAPI.introspectToken(organizationId: organizationId, authorization: authorization, formData: formData) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 
 **authorization** | **String** | Base64 string for HTTP Basic authentication. | 
 **formData** | **String** |  | 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logoutCustomer**
```swift
    open class func logoutCustomer(organizationId: String, clientId: String, refreshToken: String, channelId: String? = nil, hint: String? = nil, completion: @escaping (_ data: TokenResponse?, _ error: Error?) -> Void)
```



Log out a shopper. The shopper's access token and refresh token are revoked. If the shopper authenticated with a B2C Commerce (ECOM) instance, the OCAPI JWT is also revoked. This should be called for Registered users that have logged in using SLAS. his should be called for registered users that have logged in using SLAS. This endpoint is not for use with guest users.  Required header: Authorization header bearer token of the Shopper access token to logout.  Required parameters: `refresh token`, `channel_id`, and `client`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let clientId = "clientId_example" // String | The SLAS client ID.
let refreshToken = "refreshToken_example" // String | Refresh token that was given during the access token request.
let channelId = "channelId_example" // String | The `channel_id` parameter must be provided if the shopper authenticated using the `login` endpoint with ECOM. (optional)
let hint = "hint_example" // String | Optional parameter for logging out user sessions. Use `all-sessions` to log out all user sessions. If `hint` is not used, only the current user session will be logged out. (optional)

DefaultAPI.logoutCustomer(organizationId: organizationId, clientId: clientId, refreshToken: refreshToken, channelId: channelId, hint: hint) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 
 **clientId** | **String** | The SLAS client ID. | 
 **refreshToken** | **String** | Refresh token that was given during the access token request. | 
 **channelId** | **String** | The &#x60;channel_id&#x60; parameter must be provided if the shopper authenticated using the &#x60;login&#x60; endpoint with ECOM. | [optional] 
 **hint** | **String** | Optional parameter for logging out user sessions. Use &#x60;all-sessions&#x60; to log out all user sessions. If &#x60;hint&#x60; is not used, only the current user session will be logged out. | [optional] 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetPassword**
```swift
    open class func resetPassword(organizationId: String, formData: String, authorization: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Creates a new password

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let formData = "formData_example" // String | 
let authorization = "authorization_example" // String | Base64-encoded string for HTTP Basic authentication. The string is composed of a client ID and client secret, separated by a colon (`:`), like this: `clientId:clientSecret` (optional)

DefaultAPI.resetPassword(organizationId: organizationId, formData: formData, authorization: authorization) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 
 **formData** | **String** |  | 
 **authorization** | **String** | Base64-encoded string for HTTP Basic authentication. The string is composed of a client ID and client secret, separated by a colon (&#x60;:&#x60;), like this: &#x60;clientId:clientSecret&#x60; | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeToken**
```swift
    open class func revokeToken(organizationId: String, authorization: String, formData: String, completion: @escaping (_ data: TokenResponse?, _ error: Error?) -> Void)
```



Invalidate the refresh token. A basic auth header with Base64-encoded `clientId:secret` is required in the Authorization header, and the refresh token to be revoked is required in the body.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let authorization = "authorization_example" // String | Base64 string for HTTP Basic authentication.
let formData = "formData_example" // String | 

DefaultAPI.revokeToken(organizationId: organizationId, authorization: authorization, formData: formData) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 
 **authorization** | **String** | Base64 string for HTTP Basic authentication. | 
 **formData** | **String** |  | 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# SessionBridgeTokenRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | Authorization code returned from session bridge authorization received in the front channel that is used to get session bridge access tokens and refresh tokens. Required with a grant type of &#x60;session_bridge&#x60;. | 
**clientId** | **String** | The SLAS public client ID for use with PKCE requests. This is a required parameter when using a public client. | 
**channelId** | **String** | The channel (ECOM site) that the user is associated with. | 
**codeVerifier** | **String** | PKCE code verifier. Created by the caller. This is a required parameter when using a public client.  The &#x60;code_challenge&#x60; is created by SHA256 hashing the &#x60;code_verifier&#x60; and Base64 encoding the resulting hash.  The &#x60;code_verifier&#x60; should be a high entropy cryptographically random string with a minimum of 43 characters and a maximum of 128 characters. | 
**dwsid** | **String** | Cookie passed back from the &#39;/authorize&#39; endpoint call for session bridge. This parameter is optional and not needed if using the &#x60;dwsgst&#x60; parameter. | 
**grantType** | [**GrantType**](GrantType.md) |  | 
**loginId** | **String** | The ID of the shopper for session bridge access. | 
**dwsgst** | **String** | Signed guest Json Web Token (JWT) that was obtained from ECOM. This parameter is optional and not needed if using the &#x60;dwsid&#x60; parameter. | [optional] 
**usid** | **String** | The unique shopper ID. Returned when from session bridge authorization. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



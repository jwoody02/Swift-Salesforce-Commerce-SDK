# PasswordActionRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userId** | **String** | User ID for logging in. This is the id that is used to log into SFCC. | 
**mode** | [**PasswordActionModes**](PasswordActionModes.md) |  | 
**channelId** | **String** | The channel (ECOM site) that the user is associated with. | 
**locale** | **String** | The locale of the template. | [optional] 
**clientId** | **String** | The public client ID. Requires setting &#x60;grant_type&#x60; to &#x60;passwordless_login_pkce&#x60; | [optional] 
**codeChallenge** | **String** | PKCE code challenge. Created by the client.  The &#x60;code_challenge&#x60; is created by SHA256 hashing the &#x60;code_verifier&#x60; and Base64 encoding the resulting hash.  The &#x60;code_verifier&#x60; should be a high entropy cryptographically random string with a minimum of 43 characters and a maximum of 128 characters.    Requires setting &#x60;grant_type&#x60; to &#x60;passwordless_login_pkce&#x60; | [optional] 
**callbackUri** | **String** | The callback uri. Required when the mode is &#x60;callback&#x60;. The &#x60;callback_uri&#x60; property will be validated against the callback URIs that have been registered with the SLAS client. The callback URI _must_ be a &#x60;POST&#x60; endpoint because the token will be included in the body.  Wildcards are not allowed in the callback_uri because this is a security risk that can expose the token. This is not considered an OAuth2 callback_url.  | [optional] 
**idpName** | **String** | The name of the 3rd party identity provider for the user ID | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



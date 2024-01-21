# PasswordLessLoginTokenRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**grantType** | [**GrantType**](GrantType.md) |  | 
**hint** | **String** | Passwordless hint. Use &#x60;pwdless_login&#x60;. | 
**pwdlessLoginToken** | **String** | Passwordless login token that was created from the user ID. | 
**clientId** | **String** | The public client ID. | [optional] 
**codeVerifier** | **String** | PKCE code verifier. Created by the client.  The &#x60;code_challenge&#x60; is created by SHA256 hashing the &#x60;code_verifier&#x60; and Base64 encoding the resulting hash.  The &#x60;code_verifier&#x60; should be a high entropy cryptographically random string with a minimum of 43 characters and a maximum of 128 characters. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



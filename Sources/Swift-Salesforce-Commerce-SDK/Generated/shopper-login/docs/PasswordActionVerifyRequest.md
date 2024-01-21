# PasswordActionVerifyRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientId** | **String** | The public client ID. | 
**pwdActionToken** | **String** | Password action token that was returned from the &#x60;/password/reset&#x60; endpoint. | 
**codeVerifier** | **String** | PKCE code verifier. Created by the client.  The &#x60;code_challenge&#x60; is created by SHA256 hashing the &#x60;code_verifier&#x60; and Base64 encoding the resulting hash.  The &#x60;code_verifier&#x60; should be a high entropy cryptographically random string with a minimum of 43 characters and a maximum of 128 characters. | 
**newPassword** | **String** | The new password to set for the shopper associated with the password action token. | 
**channelId** | **String** | The channel that the request is for. For an ECOM request, this is angalous to the site ID. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



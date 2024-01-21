# TrustedAgentTokenRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agentId** | **String** | The ID of the merchant. This is an optional parameter. If passed in, the &#x60;agent_id&#x60; will be validated using the SUB claim in the response from Account Manager. | [optional] 
**clientId** | **String** | The SLAS public client ID or SLAS private client ID for use with internal, trusted-system requests.  The &#x60;client_id&#x60; is not needed if a using a SLAS private &#x60;client_id&#x60; and the &#x60;_sfdc_client_auth&#x60; header. | 
**channelId** | **String** | The channel (ECOM site) that the user is associated with. | 
**codeVerifier** | **String** | PKCE code verifier. Created by the caller.  The &#x60;code_challenge&#x60; is created by SHA256 hashing the &#x60;code_verifier&#x60; and Base64 encoding the resulting hash.  The &#x60;code_verifier&#x60; should be a high entropy cryptographically random string with a minimum of 43 characters and a maximum of 128 characters.  The &#x60;code_verifier&#x60; is not needed if a using a SLAS private &#x60;client_id&#x60; and the &#x60;_sfdc_client_auth&#x60; header. | 
**grantType** | [**GrantType**](GrantType.md) |  | 
**loginId** | **String** | The ID is the shopper for trusted agent access. | 
**idpOrigin** | **String** | The IDP that the user is associated with. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



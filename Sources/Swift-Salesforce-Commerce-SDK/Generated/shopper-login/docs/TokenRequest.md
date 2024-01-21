# TokenRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**refreshToken** | **String** | The long-term token used to refresh the short term access token. Required only with a grant type of &#x60;refresh_token&#x60;. | [optional] 
**code** | **String** | Authorization code from the OAuth 2.1 service received in the front channel that is used to get access tokens and refresh tokens. Required with a grant type of &#x60;authorization_code&#x60; and &#x60;session_bridge&#x60;. | [optional] 
**usid** | **String** | The shopper&#39;s unique identifier, if known. If not provided, a new USID is generated. | [optional] 
**grantType** | [**GrantType**](GrantType.md) |  | 
**redirectUri** | **String** | The redirect URI that was used when getting the authorization code. A variety of URI formats and wildcards for host are supported, but app links like &#x60;airbnb://&#x60; or &#x60;fb://&#x60; are not.   Examples of supported URIs:   - &#x60;http://localhost:3000/callback&#x60;   - &#x60;https://example.com/callback&#x60;   - &#x60;com.example.app:redirect_uri_path&#x60;   - &#x60; *.subdomain.topleveldomain.com&#x60;  | [optional] 
**codeVerifier** | **String** | PKCE code verifier. Created by the client calling the &#x60;login&#x60; endpoint.  The &#x60;code_verifier&#x60; should be a high entropy cryptographically random string with a minimum of 43 characters and a maximum of 128 characters.  The &#x60;code_verifier&#x60; is optional when using a private client id for the token request. | [optional] 
**clientId** | **String** | The SLAS client ID. Required when the grant type is &#x60;authorization_code_pkce&#x60;. | [optional] 
**channelId** | **String** | The channel (ECOM site) that the user is associated with. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# LoginRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientId** | **String** | SLAS client ID. Required when the grant type is &#x60;authorization_code_pkce&#x60;. | [optional] 
**responseType** | [**ResponseType**](ResponseType.md) |  | [optional] 
**redirectUri** | **String** | The URI to which the server redirects the browser after the user grants the authorization. The URI must be registered with the SLAS client. A variety of URI formats and wildcards for host are supported, but app links like airbnb:// or fb:// are not. Examples of supported URIs:   Examples of supported URIs:   - &#x60;http://localhost:3000/callback&#x60;   - &#x60;https://example.com/callback&#x60;   - &#x60;com.example.app:redirect_uri_path&#x60;   - &#x60; *.subdomain.topleveldomain.com&#x60;  | 
**state** | **String** | Value to be sent by the client to determine the state between the authorization request and the server response. Optional, but strongly recommended. | [optional] 
**scope** | **String** | Scopes to limit an application&#39;s access to a user&#39;s account. | [optional] 
**usid** | **String** | The unique shopper ID. | [optional] 
**channelId** | **String** | The channel that the request is for. For an ECOM request, this is angalous to the site ID. | 
**codeChallenge** | **String** | PKCE code verifier. Created by the client calling the &#x60;login&#x60; endpoint.  The &#x60;code_challenge&#x60; is created by SHA256 hashing the &#x60;code_verifier&#x60; and Base64 encoding the resulting hash.  The &#x60;code_verifier&#x60; should be a high entropy cryptographically random string with a minimum of 43 characters and a maximum of 128 characters.  The &#x60;code_challenge&#x60; is optional when using a private client id for the token request. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



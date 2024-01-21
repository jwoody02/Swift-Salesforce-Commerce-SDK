# TokenResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessToken** | **String** | Short term shopper JWT that can be used to access Shopper APIs. Valid for 30 minutes.  A trusted agent shopper JWT is valid for 15 min. | 
**idToken** | **String** | User ID token. Valid for 30 minutes. | 
**refreshToken** | **String** | Long term refresh token that can be used to refresh an access token. Valid for 30 days. | 
**expiresIn** | **Int** | Remaining access token expiry time, in seconds. | 
**refreshTokenExpiresIn** | **Double** | Remaining refresh token expiry time, in seconds. | 
**tokenType** | [**TokenType**](TokenType.md) |  | 
**usid** | **String** | The unique shopper ID. Returned when using the &#x60;client_credentials&#x60; grant type. | 
**customerId** | **String** | Customer&#39;s ID | 
**encUserId** | **String** | MD5 Hashed ECOM user ID in uppercase. | 
**idpAccessToken** | **String** | This is the access token that is returned from the IDP. The IDP access token is returned to be able to make calls into the IDP outside of SLAS. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



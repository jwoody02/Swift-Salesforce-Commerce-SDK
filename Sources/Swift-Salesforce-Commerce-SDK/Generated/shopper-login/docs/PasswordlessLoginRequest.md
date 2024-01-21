# PasswordlessLoginRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userId** | **String** | User ID for logging in. | 
**mode** | [**PasswordActionModes**](PasswordActionModes.md) |  | 
**locale** | **String** | The locale of the template. Not needed for the &#x60;callback&#x60; mode | [optional] 
**usid** | **String** | The shopper&#39;s unique identifier, if known. If not provided, a new USID is generated. | [optional] 
**channelId** | **String** | The channel (ECOM site) that the user is associated with. | 
**callbackUri** | **String** | The callback URI. Required when the mode is &#x60;callback&#x60;. The &#x60;callback_uri&#x60; property will be validated against the callback URIs that have been registered with the SLAS client. The callback URI _must_ be a &#x60;POST&#x60; endpoint because the token will be included in the body.  Wildcards are not allowed in the callback_uri because this is a security risk that can expose the token. This is not considered an OAuth2 callback_url.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



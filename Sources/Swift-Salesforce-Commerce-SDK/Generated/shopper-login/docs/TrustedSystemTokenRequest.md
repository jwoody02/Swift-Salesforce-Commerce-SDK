# TrustedSystemTokenRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**usid** | **String** | The shopper&#39;s unique identifier, if known. If not provided, a new USID is generated. | [optional] 
**grantType** | [**GrantType**](GrantType.md) |  | 
**hint** | [**TrustedOnBehalf**](TrustedOnBehalf.md) |  | 
**loginId** | **String** | The ID used by the shopper for trusted system access.   If set to &#x60;guest&#x60;, a token is returned for a guest user. | 
**idpOrigin** | [**ThirdPartyIdps**](ThirdPartyIdps.md) |  | 
**clientId** | **String** | The SLAS public client ID for use with internal trusted-system requests. | 
**channelId** | **String** | The channel (ECOM site) that the user is associated with. | 
**emailId** | **String** | The email address for the shopper that is used for trusted-system requests. If not provided, &#x60;login_id&#x60; is used instead. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



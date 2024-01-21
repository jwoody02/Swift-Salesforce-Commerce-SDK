# DefaultAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPromotions**](DefaultAPI.md#getpromotions) | **GET** /organizations/{organizationId}/promotions | 
[**getPromotionsForCampaign**](DefaultAPI.md#getpromotionsforcampaign) | **GET** /organizations/{organizationId}/promotions/campaigns/{campaignId} | 


# **getPromotions**
```swift
    open class func getPromotions(organizationId: String, siteId: String, ids: String, locale: String? = nil, completion: @escaping (_ data: PromotionResult?, _ error: Error?) -> Void)
```



Returns an array of enabled promotions for a list of specified IDs. In the request URL, you can specify up to 50 IDs. If you specify an ID that contains either parentheses or the separator characters, you must URL encode these characters. Each request returns only enabled promotions as the server does not consider promotion qualifiers or schedules.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let siteId = "siteId_example" // String | 
let ids = "ids_example" // String | 
let locale = "locale_example" // String |  (optional)

DefaultAPI.getPromotions(organizationId: organizationId, siteId: siteId, ids: ids, locale: locale) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 
 **siteId** | **String** |  | 
 **ids** | **String** |  | 
 **locale** | **String** |  | [optional] 

### Return type

[**PromotionResult**](PromotionResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPromotionsForCampaign**
```swift
    open class func getPromotionsForCampaign(campaignId: String, organizationId: String, siteId: String, startDate: String? = nil, endDate: String? = nil, currency: String? = nil, completion: @escaping (_ data: PromotionResult?, _ error: Error?) -> Void)
```



Handles get promotion by filter criteria. Returns an array of enabled promotions matching the specified filter criteria. In the request URL, you must provide a campaign_id parameter, and you can optionally specify a date range by providing start_date and end_date parameters. Both parameters are required to specify a date range, as  omitting one causes the server to return a MissingParameterException fault. Each request returns only enabled promotions, since the server does not consider promotion qualifiers or schedules.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let campaignId = "campaignId_example" // String | Find the promotions assigned to this campaign (mandatory).
let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let siteId = "siteId_example" // String | 
let startDate = "startDate_example" // String | The start date of the promotion in ISO8601 date time format: yyyy-MM-dd'T'HH:mmZ (optional)
let endDate = "endDate_example" // String | The end date of the promotion in ISO8601 date time format: yyyy-MM-dd'T'HH:mmZ (optional)
let currency = "currency_example" // String | The currency mnemonic specified for price. This parameter is effective only for product suggestions. (optional)

DefaultAPI.getPromotionsForCampaign(campaignId: campaignId, organizationId: organizationId, siteId: siteId, startDate: startDate, endDate: endDate, currency: currency) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaignId** | **String** | Find the promotions assigned to this campaign (mandatory). | 
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 
 **siteId** | **String** |  | 
 **startDate** | **String** | The start date of the promotion in ISO8601 date time format: yyyy-MM-dd&#39;T&#39;HH:mmZ | [optional] 
 **endDate** | **String** | The end date of the promotion in ISO8601 date time format: yyyy-MM-dd&#39;T&#39;HH:mmZ | [optional] 
 **currency** | **String** | The currency mnemonic specified for price. This parameter is effective only for product suggestions. | [optional] 

### Return type

[**PromotionResult**](PromotionResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


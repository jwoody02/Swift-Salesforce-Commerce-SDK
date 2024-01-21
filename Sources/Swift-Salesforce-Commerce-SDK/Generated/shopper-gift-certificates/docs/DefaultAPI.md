# DefaultAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getGiftCertificate**](DefaultAPI.md#getgiftcertificate) | **POST** /organizations/{organizationId}/gift-certificate | 


# **getGiftCertificate**
```swift
    open class func getGiftCertificate(organizationId: String, siteId: String, body: GiftCertificateRequest, completion: @escaping (_ data: GiftCertificate?, _ error: Error?) -> Void)
```



Action to retrieve an existing gift certificate.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let siteId = "siteId_example" // String | 
let body = GiftCertificateRequest(giftCertificateCode: "giftCertificateCode_example") // GiftCertificateRequest | 

DefaultAPI.getGiftCertificate(organizationId: organizationId, siteId: siteId, body: body) { (response, error) in
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
 **body** | [**GiftCertificateRequest**](GiftCertificateRequest.md) |  | 

### Return type

[**GiftCertificate**](GiftCertificate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


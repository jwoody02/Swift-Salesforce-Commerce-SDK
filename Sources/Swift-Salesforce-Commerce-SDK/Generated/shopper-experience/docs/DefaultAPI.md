# DefaultAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPage**](DefaultAPI.md#getpage) | **GET** /organizations/{organizationId}/pages/{pageId} | 
[**getPages**](DefaultAPI.md#getpages) | **GET** /organizations/{organizationId}/pages | 


# **getPage**
```swift
    open class func getPage(pageId: String, organizationId: String, siteId: String, aspectAttributes: String? = nil, parameters: String? = nil, locale: String? = nil, completion: @escaping (_ data: Page?, _ error: Error?) -> Void)
```



Get a Page Designer page based on a single page ID. The results will apply the visibility rules for the page's components, such as personalization or scheduled visibility.  **Important**: Currently, the Shopper Experience API can’t be used when the [storefront password protection](https://documentation.b2c.commercecloud.salesforce.com/DOC1/index.jsp?topic=%2Fcom.demandware.dochelp%2Fcontent%2Fb2c_commerce%2Ftopics%2Fpermissions%2Fb2c_storefront_password_protection.html&resultof=%22%73%74%6f%72%65%66%72%6f%6e%74%22%20%22%70%72%6f%74%65%63%74%69%6f%6e%22%20%22%70%72%6f%74%65%63%74%22%20) feature is enabled.  **Important**: Because this resource uses the GET method, you must not pass sensitive data (payment card information, for example) and must not perform any transactional processes within the server-side scripts that are run for the page and components.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let pageId = "pageId_example" // String | Identifier for the requested page.
let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let siteId = "siteId_example" // String | 
let aspectAttributes = "aspectAttributes_example" // String | A JSON respresentation of aspect attributes. Each aspect attribute is a key/value pair. Aspect attributes serve as a runtime parameter contract between caller (for example, this API or the DWScript API) and callee (the page). This parameter must not contain more than 256 characters after URL decoding. (optional)
let parameters = "parameters_example" // String | A free-form definition of parameters that influences the page rendering according to its implementation. This parameter must not contain more than 256 characters after URL decoding. (optional)
let locale = "locale_example" // String | A descriptor to provide locale context for a geographical region by both a language and/or country code. The locale pattern in the query param follows the ISO 639-1 for the language code (e.g. en, de, fr) and ISO 3166-1 for the country code (e.g. US, DE, AT). The param can be a combination of language code and country code or can just refer to the language code. Below are some valid examples: - en-US - de-AT - de - default (optional)

DefaultAPI.getPage(pageId: pageId, organizationId: organizationId, siteId: siteId, aspectAttributes: aspectAttributes, parameters: parameters, locale: locale) { (response, error) in
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
 **pageId** | **String** | Identifier for the requested page. | 
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 
 **siteId** | **String** |  | 
 **aspectAttributes** | **String** | A JSON respresentation of aspect attributes. Each aspect attribute is a key/value pair. Aspect attributes serve as a runtime parameter contract between caller (for example, this API or the DWScript API) and callee (the page). This parameter must not contain more than 256 characters after URL decoding. | [optional] 
 **parameters** | **String** | A free-form definition of parameters that influences the page rendering according to its implementation. This parameter must not contain more than 256 characters after URL decoding. | [optional] 
 **locale** | **String** | A descriptor to provide locale context for a geographical region by both a language and/or country code. The locale pattern in the query param follows the ISO 639-1 for the language code (e.g. en, de, fr) and ISO 3166-1 for the country code (e.g. US, DE, AT). The param can be a combination of language code and country code or can just refer to the language code. Below are some valid examples: - en-US - de-AT - de - default | [optional] 

### Return type

[**Page**](Page.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPages**
```swift
    open class func getPages(organizationId: String, aspectTypeId: String, siteId: String, categoryId: String? = nil, productId: String? = nil, aspectAttributes: String? = nil, parameters: String? = nil, locale: String? = nil, completion: @escaping (_ data: PageResult?, _ error: Error?) -> Void)
```



Get Page Designer pages. The results will apply the visibility rules for each page's components, such as personalization or scheduled visibility.  Either `categoryId` or `productId` must be given in addition to `aspectTypeId`. Because only a single page-to-product and page-to-category assignment per aspect type can be authored today, the returned result contains one element at most.  **Important**: Currently, the Shopper Experience API can’t be used when the [storefront password protection](https://documentation.b2c.commercecloud.salesforce.com/DOC1/index.jsp?topic=%2Fcom.demandware.dochelp%2Fcontent%2Fb2c_commerce%2Ftopics%2Fpermissions%2Fb2c_storefront_password_protection.html&resultof=%22%73%74%6f%72%65%66%72%6f%6e%74%22%20%22%70%72%6f%74%65%63%74%69%6f%6e%22%20%22%70%72%6f%74%65%63%74%22%20) feature is enabled.  **Important**: Because this resource uses the GET method, you must not pass sensitive data (payment card information, for example) and must not perform any transactional processes within the server-side scripts that are run for the page and components.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let aspectTypeId = "aspectTypeId_example" // String | Aspect type identifier that is used for searching the page assignment in conjunction with either the `productId` or `categoryId`.
let siteId = "siteId_example" // String | 
let categoryId = "categoryId_example" // String | Category identifier that is used for searching the page assignment. Must be provided if no `productId` is provided. (optional)
let productId = "productId_example" // String | Product identifier that is used for searching the page assignment. Must be provided if no `categoryId` is provided. (optional)
let aspectAttributes = "aspectAttributes_example" // String | A JSON respresentation of aspect attributes. Each aspect attribute is a key/value pair. Aspect attributes serve as a runtime parameter contract between caller (for example, this API or the DWScript API) and callee (the page). This parameter must not contain more than 256 characters after URL decoding. (optional)
let parameters = "parameters_example" // String | A free-form definition of parameters that influences the page rendering according to its implementation. This parameter must not contain more than 256 characters after URL decoding. (optional)
let locale = "locale_example" // String | A descriptor to provide locale context for a geographical region by both a language and/or country code. The locale pattern in the query param follows the ISO 639-1 for the language code (e.g. en, de, fr) and ISO 3166-1 for the country code (e.g. US, DE, AT). The param can be a combination of language code and country code or can just refer to the language code. Below are some valid examples: - en-US - de-AT - de - default (optional)

DefaultAPI.getPages(organizationId: organizationId, aspectTypeId: aspectTypeId, siteId: siteId, categoryId: categoryId, productId: productId, aspectAttributes: aspectAttributes, parameters: parameters, locale: locale) { (response, error) in
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
 **aspectTypeId** | **String** | Aspect type identifier that is used for searching the page assignment in conjunction with either the &#x60;productId&#x60; or &#x60;categoryId&#x60;. | 
 **siteId** | **String** |  | 
 **categoryId** | **String** | Category identifier that is used for searching the page assignment. Must be provided if no &#x60;productId&#x60; is provided. | [optional] 
 **productId** | **String** | Product identifier that is used for searching the page assignment. Must be provided if no &#x60;categoryId&#x60; is provided. | [optional] 
 **aspectAttributes** | **String** | A JSON respresentation of aspect attributes. Each aspect attribute is a key/value pair. Aspect attributes serve as a runtime parameter contract between caller (for example, this API or the DWScript API) and callee (the page). This parameter must not contain more than 256 characters after URL decoding. | [optional] 
 **parameters** | **String** | A free-form definition of parameters that influences the page rendering according to its implementation. This parameter must not contain more than 256 characters after URL decoding. | [optional] 
 **locale** | **String** | A descriptor to provide locale context for a geographical region by both a language and/or country code. The locale pattern in the query param follows the ISO 639-1 for the language code (e.g. en, de, fr) and ISO 3166-1 for the country code (e.g. US, DE, AT). The param can be a combination of language code and country code or can just refer to the language code. Below are some valid examples: - en-US - de-AT - de - default | [optional] 

### Return type

[**PageResult**](PageResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


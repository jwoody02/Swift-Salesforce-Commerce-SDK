# DefaultAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCategories**](DefaultAPI.md#getcategories) | **GET** /organizations/{organizationId}/categories | 
[**getCategory**](DefaultAPI.md#getcategory) | **GET** /organizations/{organizationId}/categories/{id} | 
[**getProduct**](DefaultAPI.md#getproduct) | **GET** /organizations/{organizationId}/products/{id} | 
[**getProducts**](DefaultAPI.md#getproducts) | **GET** /organizations/{organizationId}/products | 


# **getCategories**
```swift
    open class func getCategories(organizationId: String, ids: String, siteId: String, levels: Levels_getCategories? = nil, locale: String? = nil, completion: @escaping (_ data: CategoryResult?, _ error: Error?) -> Void)
```



When you use the URL template, the server returns multiple categories (a result object of category documents). You can use this template as a convenient way of obtaining multiple categories in a single request, instead of issuing separate requests for each category. You can specify up to 50 multiple IDs. You must enclose the list of IDs in parentheses. If a category identifier contains parenthesis or the separator sign, you must URL encode the character. The server only returns online categories.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let ids = "ids_example" // String | The comma separated list of category IDs (max 50).
let siteId = "siteId_example" // String | 
let levels = 987 // Int | Specifies how many levels of nested subcategories you want the server to return. The default value is 1. Valid values are 0, 1, or 2. (optional)
let locale = "locale_example" // String | The locale context. (optional)

DefaultAPI.getCategories(organizationId: organizationId, ids: ids, siteId: siteId, levels: levels, locale: locale) { (response, error) in
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
 **ids** | **String** | The comma separated list of category IDs (max 50). | 
 **siteId** | **String** |  | 
 **levels** | **Int** | Specifies how many levels of nested subcategories you want the server to return. The default value is 1. Valid values are 0, 1, or 2. | [optional] 
 **locale** | **String** | The locale context. | [optional] 

### Return type

[**CategoryResult**](CategoryResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCategory**
```swift
    open class func getCategory(id: String, organizationId: String, siteId: String, levels: Int? = nil, locale: String? = nil, completion: @escaping (_ data: Category?, _ error: Error?) -> Void)
```



When you use the URL template below, the server returns a category identified by its ID; by default, the server also returns the first level of subcategories, but you can specify another level by setting the levels parameter. The server only returns online categories.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the requested category.
let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let siteId = "siteId_example" // String | 
let levels = 987 // Int |  (optional)
let locale = "locale_example" // String |  (optional)

DefaultAPI.getCategory(id: id, organizationId: organizationId, siteId: siteId, levels: levels, locale: locale) { (response, error) in
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
 **id** | **String** | The ID of the requested category. | 
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 
 **siteId** | **String** |  | 
 **levels** | **Int** |  | [optional] 
 **locale** | **String** |  | [optional] 

### Return type

[**Category**](Category.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProduct**
```swift
    open class func getProduct(id: String, organizationId: String, siteId: String, select: String? = nil, inventoryIds: String? = nil, currency: String? = nil, expand: [Expand_getProduct]? = nil, locale: String? = nil, allImages: Bool? = nil, perPricebook: Bool? = nil, completion: @escaping (_ data: Product?, _ error: Error?) -> Void)
```



Allows access to product details for a single product ID. Only products that are online and assigned to a site catalog are returned. Along with product details, the availability, images, price, bundled_products, set_products, recommedations, product options, variations, and promotions for the products will be included, as appropriate.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the requested product.
let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let siteId = "siteId_example" // String | 
let select = "select_example" // String | The property selector declaring which fields are included into the response payload. You can specify a single field name, a comma-separated list of names, or work with wildcards.You can also sepcify Array Operations. The select will be available, tentatively from october 2023.The exact date will be announced via changelog. (optional)
let inventoryIds = "inventoryIds_example" // String | The optional inventory list IDs, for which the availability should be shown (comma-separated, max 5 inventoryListIDs). (optional)
let currency = "currency_example" // String | The currency mnemonic specified for price. (optional)
let expand = ["expand_example"] // [String] | The expand parameter. A comma separated list with the allowed values (availability, bundled_products, links, promotions, options, images, prices, variations, set_products, recommendations). All expand parameters are used for the request when no expand parameter is provided. The value \"none\" may be used to turn off all expand options. (optional)
let locale = "locale_example" // String | The locale context. (optional)
let allImages = true // Bool | The flag that indicates whether to retrieve the whole image model for the requested product. (optional)
let perPricebook = true // Bool | The flag that indicates whether to retrieve the per PriceBook prices and tiered prices (if available) for requested Products. Available end of June, 2021. (optional)

DefaultAPI.getProduct(id: id, organizationId: organizationId, siteId: siteId, select: select, inventoryIds: inventoryIds, currency: currency, expand: expand, locale: locale, allImages: allImages, perPricebook: perPricebook) { (response, error) in
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
 **id** | **String** | The ID of the requested product. | 
 **organizationId** | **String** | An identifier for the organization the request is being made by. | 
 **siteId** | **String** |  | 
 **select** | **String** | The property selector declaring which fields are included into the response payload. You can specify a single field name, a comma-separated list of names, or work with wildcards.You can also sepcify Array Operations. The select will be available, tentatively from october 2023.The exact date will be announced via changelog. | [optional] 
 **inventoryIds** | **String** | The optional inventory list IDs, for which the availability should be shown (comma-separated, max 5 inventoryListIDs). | [optional] 
 **currency** | **String** | The currency mnemonic specified for price. | [optional] 
 **expand** | [**[String]**](String.md) | The expand parameter. A comma separated list with the allowed values (availability, bundled_products, links, promotions, options, images, prices, variations, set_products, recommendations). All expand parameters are used for the request when no expand parameter is provided. The value \&quot;none\&quot; may be used to turn off all expand options. | [optional] 
 **locale** | **String** | The locale context. | [optional] 
 **allImages** | **Bool** | The flag that indicates whether to retrieve the whole image model for the requested product. | [optional] 
 **perPricebook** | **Bool** | The flag that indicates whether to retrieve the per PriceBook prices and tiered prices (if available) for requested Products. Available end of June, 2021. | [optional] 

### Return type

[**Product**](Product.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProducts**
```swift
    open class func getProducts(organizationId: String, ids: String, siteId: String, select: String? = nil, inventoryIds: String? = nil, currency: String? = nil, expand: [Expand_getProducts]? = nil, locale: String? = nil, allImages: Bool? = nil, perPricebook: Bool? = nil, completion: @escaping (_ data: ProductResult?, _ error: Error?) -> Void)
```



Allows access to multiple products by a single request. Only products that are online and assigned to a site catalog are returned. The maximum number of productIDs that can be requested are 24. Along with product details, the availability, product options, images, price, promotions, and variations for the valid products will be included, as appropriate.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organizationId = "organizationId_example" // String | An identifier for the organization the request is being made by.
let ids = "ids_example" // String | The IDs of the requested products (comma-separated, max 24 IDs).
let siteId = "siteId_example" // String | 
let select = "select_example" // String | The property selector declaring which fields are included into the response payload. You can specify a single field name, a comma-separated list of names, or work with wildcards.You can also sepcify Array Operations.The select will be available, tentatively from october 2023.The exact date will be announced via changelog. (optional)
let inventoryIds = "inventoryIds_example" // String | The optional inventory list IDs, for which the availability should be shown (comma-separated, max 5 inventoryListIDs). (optional)
let currency = "currency_example" // String | The currency mnemonic specified for price. (optional)
let expand = ["expand_example"] // [String] | The expand parameter. A comma separated list with the allowed values (availability, links, promotions, options, images, prices, variations, recommendations). All expand parameters are used for the request when no expand parameter is provided. The value \"none\" may be used to turn off all expand options. (optional)
let locale = "locale_example" // String | The locale context. (optional)
let allImages = true // Bool | The flag that indicates whether to retrieve the whole image model for the requested product. (optional)
let perPricebook = true // Bool | The flag that indicates whether to retrieve the per PriceBook prices and tiered prices (if available) for requested Products. Available end of June, 2021. (optional)

DefaultAPI.getProducts(organizationId: organizationId, ids: ids, siteId: siteId, select: select, inventoryIds: inventoryIds, currency: currency, expand: expand, locale: locale, allImages: allImages, perPricebook: perPricebook) { (response, error) in
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
 **ids** | **String** | The IDs of the requested products (comma-separated, max 24 IDs). | 
 **siteId** | **String** |  | 
 **select** | **String** | The property selector declaring which fields are included into the response payload. You can specify a single field name, a comma-separated list of names, or work with wildcards.You can also sepcify Array Operations.The select will be available, tentatively from october 2023.The exact date will be announced via changelog. | [optional] 
 **inventoryIds** | **String** | The optional inventory list IDs, for which the availability should be shown (comma-separated, max 5 inventoryListIDs). | [optional] 
 **currency** | **String** | The currency mnemonic specified for price. | [optional] 
 **expand** | [**[String]**](String.md) | The expand parameter. A comma separated list with the allowed values (availability, links, promotions, options, images, prices, variations, recommendations). All expand parameters are used for the request when no expand parameter is provided. The value \&quot;none\&quot; may be used to turn off all expand options. | [optional] 
 **locale** | **String** | The locale context. | [optional] 
 **allImages** | **Bool** | The flag that indicates whether to retrieve the whole image model for the requested product. | [optional] 
 **perPricebook** | **Bool** | The flag that indicates whether to retrieve the per PriceBook prices and tiered prices (if available) for requested Products. Available end of June, 2021. | [optional] 

### Return type

[**ProductResult**](ProductResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


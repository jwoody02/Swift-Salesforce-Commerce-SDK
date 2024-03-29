//
// DefaultAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class DefaultAPI {

    /**

     - parameter pageId: (path) Identifier for the requested page. 
     - parameter organizationId: (path) An identifier for the organization the request is being made by. 
     - parameter siteId: (query)  
     - parameter aspectAttributes: (query) A JSON respresentation of aspect attributes. Each aspect attribute is a key/value pair. Aspect attributes serve as a runtime parameter contract between caller (for example, this API or the DWScript API) and callee (the page). This parameter must not contain more than 256 characters after URL decoding. (optional)
     - parameter parameters: (query) A free-form definition of parameters that influences the page rendering according to its implementation. This parameter must not contain more than 256 characters after URL decoding. (optional)
     - parameter locale: (query) A descriptor to provide locale context for a geographical region by both a language and/or country code. The locale pattern in the query param follows the ISO 639-1 for the language code (e.g. en, de, fr) and ISO 3166-1 for the country code (e.g. US, DE, AT). The param can be a combination of language code and country code or can just refer to the language code. Below are some valid examples: - en-US - de-AT - de - default (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getPage(pageId: String, organizationId: String, siteId: String, aspectAttributes: String? = nil, parameters: String? = nil, locale: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Page?, _ error: Error?) -> Void)) -> RequestTask {
        return getPageWithRequestBuilder(pageId: pageId, organizationId: organizationId, siteId: siteId, aspectAttributes: aspectAttributes, parameters: parameters, locale: locale).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /organizations/{organizationId}/pages/{pageId}
     - Get a Page Designer page based on a single page ID. The results will apply the visibility rules for the page's components, such as personalization or scheduled visibility.  **Important**: Currently, the Shopper Experience API can’t be used when the [storefront password protection](https://documentation.b2c.commercecloud.salesforce.com/DOC1/index.jsp?topic=%2Fcom.demandware.dochelp%2Fcontent%2Fb2c_commerce%2Ftopics%2Fpermissions%2Fb2c_storefront_password_protection.html&resultof=%22%73%74%6f%72%65%66%72%6f%6e%74%22%20%22%70%72%6f%74%65%63%74%69%6f%6e%22%20%22%70%72%6f%74%65%63%74%22%20) feature is enabled.  **Important**: Because this resource uses the GET method, you must not pass sensitive data (payment card information, for example) and must not perform any transactional processes within the server-side scripts that are run for the page and components.
     - parameter pageId: (path) Identifier for the requested page. 
     - parameter organizationId: (path) An identifier for the organization the request is being made by. 
     - parameter siteId: (query)  
     - parameter aspectAttributes: (query) A JSON respresentation of aspect attributes. Each aspect attribute is a key/value pair. Aspect attributes serve as a runtime parameter contract between caller (for example, this API or the DWScript API) and callee (the page). This parameter must not contain more than 256 characters after URL decoding. (optional)
     - parameter parameters: (query) A free-form definition of parameters that influences the page rendering according to its implementation. This parameter must not contain more than 256 characters after URL decoding. (optional)
     - parameter locale: (query) A descriptor to provide locale context for a geographical region by both a language and/or country code. The locale pattern in the query param follows the ISO 639-1 for the language code (e.g. en, de, fr) and ISO 3166-1 for the country code (e.g. US, DE, AT). The param can be a combination of language code and country code or can just refer to the language code. Below are some valid examples: - en-US - de-AT - de - default (optional)
     - returns: RequestBuilder<Page> 
     */
    open class func getPageWithRequestBuilder(pageId: String, organizationId: String, siteId: String, aspectAttributes: String? = nil, parameters: String? = nil, locale: String? = nil) -> RequestBuilder<Page> {
        var localVariablePath = "/organizations/{organizationId}/pages/{pageId}"
        let pageIdPreEscape = "\(APIHelper.mapValueToPathItem(pageId))"
        let pageIdPostEscape = pageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{pageId}", with: pageIdPostEscape, options: .literal, range: nil)
        let organizationIdPreEscape = "\(APIHelper.mapValueToPathItem(organizationId))"
        let organizationIdPostEscape = organizationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{organizationId}", with: organizationIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "aspectAttributes": (wrappedValue: aspectAttributes?.encodeToJSON(), isExplode: false),
            "parameters": (wrappedValue: parameters?.encodeToJSON(), isExplode: false),
            "siteId": (wrappedValue: siteId.encodeToJSON(), isExplode: false),
            "locale": (wrappedValue: locale?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Page>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter organizationId: (path) An identifier for the organization the request is being made by. 
     - parameter aspectTypeId: (query) Aspect type identifier that is used for searching the page assignment in conjunction with either the &#x60;productId&#x60; or &#x60;categoryId&#x60;. 
     - parameter siteId: (query)  
     - parameter categoryId: (query) Category identifier that is used for searching the page assignment. Must be provided if no &#x60;productId&#x60; is provided. (optional)
     - parameter productId: (query) Product identifier that is used for searching the page assignment. Must be provided if no &#x60;categoryId&#x60; is provided. (optional)
     - parameter aspectAttributes: (query) A JSON respresentation of aspect attributes. Each aspect attribute is a key/value pair. Aspect attributes serve as a runtime parameter contract between caller (for example, this API or the DWScript API) and callee (the page). This parameter must not contain more than 256 characters after URL decoding. (optional)
     - parameter parameters: (query) A free-form definition of parameters that influences the page rendering according to its implementation. This parameter must not contain more than 256 characters after URL decoding. (optional)
     - parameter locale: (query) A descriptor to provide locale context for a geographical region by both a language and/or country code. The locale pattern in the query param follows the ISO 639-1 for the language code (e.g. en, de, fr) and ISO 3166-1 for the country code (e.g. US, DE, AT). The param can be a combination of language code and country code or can just refer to the language code. Below are some valid examples: - en-US - de-AT - de - default (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getPages(organizationId: String, aspectTypeId: String, siteId: String, categoryId: String? = nil, productId: String? = nil, aspectAttributes: String? = nil, parameters: String? = nil, locale: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: PageResult?, _ error: Error?) -> Void)) -> RequestTask {
        return getPagesWithRequestBuilder(organizationId: organizationId, aspectTypeId: aspectTypeId, siteId: siteId, categoryId: categoryId, productId: productId, aspectAttributes: aspectAttributes, parameters: parameters, locale: locale).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /organizations/{organizationId}/pages
     - Get Page Designer pages. The results will apply the visibility rules for each page's components, such as personalization or scheduled visibility.  Either `categoryId` or `productId` must be given in addition to `aspectTypeId`. Because only a single page-to-product and page-to-category assignment per aspect type can be authored today, the returned result contains one element at most.  **Important**: Currently, the Shopper Experience API can’t be used when the [storefront password protection](https://documentation.b2c.commercecloud.salesforce.com/DOC1/index.jsp?topic=%2Fcom.demandware.dochelp%2Fcontent%2Fb2c_commerce%2Ftopics%2Fpermissions%2Fb2c_storefront_password_protection.html&resultof=%22%73%74%6f%72%65%66%72%6f%6e%74%22%20%22%70%72%6f%74%65%63%74%69%6f%6e%22%20%22%70%72%6f%74%65%63%74%22%20) feature is enabled.  **Important**: Because this resource uses the GET method, you must not pass sensitive data (payment card information, for example) and must not perform any transactional processes within the server-side scripts that are run for the page and components.
     - parameter organizationId: (path) An identifier for the organization the request is being made by. 
     - parameter aspectTypeId: (query) Aspect type identifier that is used for searching the page assignment in conjunction with either the &#x60;productId&#x60; or &#x60;categoryId&#x60;. 
     - parameter siteId: (query)  
     - parameter categoryId: (query) Category identifier that is used for searching the page assignment. Must be provided if no &#x60;productId&#x60; is provided. (optional)
     - parameter productId: (query) Product identifier that is used for searching the page assignment. Must be provided if no &#x60;categoryId&#x60; is provided. (optional)
     - parameter aspectAttributes: (query) A JSON respresentation of aspect attributes. Each aspect attribute is a key/value pair. Aspect attributes serve as a runtime parameter contract between caller (for example, this API or the DWScript API) and callee (the page). This parameter must not contain more than 256 characters after URL decoding. (optional)
     - parameter parameters: (query) A free-form definition of parameters that influences the page rendering according to its implementation. This parameter must not contain more than 256 characters after URL decoding. (optional)
     - parameter locale: (query) A descriptor to provide locale context for a geographical region by both a language and/or country code. The locale pattern in the query param follows the ISO 639-1 for the language code (e.g. en, de, fr) and ISO 3166-1 for the country code (e.g. US, DE, AT). The param can be a combination of language code and country code or can just refer to the language code. Below are some valid examples: - en-US - de-AT - de - default (optional)
     - returns: RequestBuilder<PageResult> 
     */
    open class func getPagesWithRequestBuilder(organizationId: String, aspectTypeId: String, siteId: String, categoryId: String? = nil, productId: String? = nil, aspectAttributes: String? = nil, parameters: String? = nil, locale: String? = nil) -> RequestBuilder<PageResult> {
        var localVariablePath = "/organizations/{organizationId}/pages"
        let organizationIdPreEscape = "\(APIHelper.mapValueToPathItem(organizationId))"
        let organizationIdPostEscape = organizationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{organizationId}", with: organizationIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "categoryId": (wrappedValue: categoryId?.encodeToJSON(), isExplode: false),
            "productId": (wrappedValue: productId?.encodeToJSON(), isExplode: false),
            "aspectTypeId": (wrappedValue: aspectTypeId.encodeToJSON(), isExplode: false),
            "aspectAttributes": (wrappedValue: aspectAttributes?.encodeToJSON(), isExplode: false),
            "parameters": (wrappedValue: parameters?.encodeToJSON(), isExplode: false),
            "siteId": (wrappedValue: siteId.encodeToJSON(), isExplode: false),
            "locale": (wrappedValue: locale?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PageResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}

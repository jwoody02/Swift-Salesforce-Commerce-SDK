//
//  File.swift
//  Swift-Salesforce-Commerce-SDK
//
//  Created by Jordan Wood on 1/21/24.
//

import Foundation
import os.log
import OpenAPIRuntime
import OpenAPIURLSession

public class SalesforceClient {
    public let shared = SalesforceClient()
    
    private let clientId: String?
    private let organizationId: String?
    private let shortCode: String?
    private let siteId: String?
    
    private let baseUri: URL?
    
    /**
     Configure the required client parameters. See documentation for information on how to get these.
     - Note: if this is not called on the shared instance, it will cause the error:
            '@salesClient(#2546) - Error: Client parameters not set'
     */
    public func configureWith(baseUri: URL, clientId: String, organizationId: String, shortCode: String,siteId: String) {
        if (self.clientId != nil || self.organizationId != nil || self.shortCode != nil || self.siteId != nil) {
            os_log(.error, "@salesClient(#2547) - Error: Client parameters already set")
            return
        }
        if (baseUri.absoluteString == "") { os_log(.error, "@salesClient(#2548) - Error: Base URI cannot be empty"); return }
        if (clientId == "") { os_log(.error, "@salesClient(#2549) - Error: Client ID cannot be empty"); return }
        if (organizationId == "") { os_log(.error, "@salesClient(#2550) - Error: Organization ID cannot be empty"); return }
        if (shortCode == "") { os_log(.error, "@salesClient(#2551) - Error: Short code cannot be empty"); return }
        if (siteId == "") { os_log(.error, "@salesClient(#2552) - Error: Site ID cannot be empty"); return }


        self.clientId = clientId
        self.organizationId = organizationId
        self.shortCode = shortCode
        self.siteId = siteId
        
        self.baseUri = baseUri
        
        os_log(.info, "@salesClient(#2545) ")
    }
}

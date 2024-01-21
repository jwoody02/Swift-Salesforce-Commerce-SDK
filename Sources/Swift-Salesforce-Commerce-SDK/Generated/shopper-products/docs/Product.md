# Product

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**brand** | **String** | The product&#39;s brand. | [optional] 
**bundledProducts** | [BundledProduct] | The array of all bundled products of this product. | [optional] 
**currency** | **String** | The ISO 4217 mnemonic code of the currency. | [optional] 
**ean** | **String** | The European Article Number of the product. | [optional] 
**fetchDate** | **Int** |  | [optional] 
**id** | **String** | The ID (SKU) of the product. | 
**imageGroups** | [ImageGroup] | The array of product image groups. | [optional] 
**inventories** | [Inventory] | The array of product inventories explicitly requested via the &#39;inventory_ids&#39; query parameter. This property  is only returned in context of the &#39;availability&#39; expansion. | [optional] 
**inventory** | [**Inventory**](Inventory.md) |  | [optional] 
**longDescription** | **String** | The localized product&#39;s long description. | [optional] 
**manufacturerName** | **String** | The product&#39;s manufacturer name. | [optional] 
**manufacturerSku** | **String** | The product&#39;s manufacturer SKU. | [optional] 
**master** | [**Master**](Master.md) |  | [optional] 
**minOrderQuantity** | **Double** | The minimum order quantity for this product. | [optional] 
**name** | **String** | The localized product name. | [optional] 
**options** | [Option] | The array of product options, only for type option. This array can be empty. | [optional] 
**pageDescription** | **String** | The localized product&#39;s page description. | [optional] 
**pageKeywords** | **String** | The localized product&#39;s page description. | [optional] 
**pageTitle** | **String** | The localized product&#39;s page title. | [optional] 
**price** | **Double** | The sales price of the product. In case of complex products, like master or set, this is the minimum price of  related child products. | [optional] 
**pricePerUnit** | **Double** | The price per unit if defined for the product | [optional] 
**pricePerUnitMax** | **Double** | The max price per unit typically for a master product&#39;s variant. | [optional] 
**priceMax** | **Double** | The maximum sales of related child products in complex products like master or set. | [optional] 
**priceRanges** | [PriceRange] | Array of one or more price range objects representing one or more Pricebooks in context for the site. | [optional] 
**prices** | **[String: Double]** | The prices map with pricebook IDs and their values. | [optional] 
**primaryCategoryId** | **String** | The ID of the products primary category. | [optional] 
**productLinks** | [ProductLink] | The array of source and target product links information. | [optional] 
**productPromotions** | [ProductPromotion] | The array of active customer product promotions for this product. This array can be empty.  Coupon promotions are not returned in this array. | [optional] 
**recommendations** | [Recommendation] | Returns a list of recommendations. | [optional] 
**setProducts** | [Product] | The array of set products of this product. | [optional] 
**shortDescription** | **String** | The localized product short description. | [optional] 
**slugUrl** | **String** | The complete link to this product&#39;s storefront page. | [optional] 
**stepQuantity** | **Double** | The steps in which the order amount of the product can be  increased. | [optional] 
**tieredPrices** | [ProductPriceTable] | The document represents list of tiered prices if the product is a variant | [optional] 
**type** | [**ProductType**](ProductType.md) |  | [optional] 
**unit** | **String** | The sales unit of the product. | [optional] 
**upc** | **String** | The Universal Product Code (UPC). | [optional] 
**validFrom** | **Date** | The time a product is valid from. | [optional] 
**validTo** | **Date** | The time a product is valid to. | [optional] 
**variants** | [Variant] | The array of actual variants. Only for master, variation group, and variant types. This array can be empty. | [optional] 
**variationAttributes** | [VariationAttribute] | Sorted array of variation attributes information. Only for master,  variation group, and variant types. This array can be empty. | [optional] 
**variationGroups** | [VariationGroup] | The array of actual variation groups. Only for master, variation group, and variant types. This array can be empty. | [optional] 
**variationValues** | **[String: String]** | The actual variation attribute ID - value pairs. Only for variant and  variation group types. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# Inventory

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ats** | **Double** | The Available To Sell (ATS) of the product. If it is infinity, the return value is 999999. The value can be overwritten by the  OCAPI setting &#39;product.inventory.ats.max_threshold&#39;. | [optional] 
**backorderable** | **Bool** | A flag indicating whether the product is backorderable. | [optional] 
**id** | **String** | The inventory ID. | 
**inStockDate** | **Date** | A flag indicating the date when the product will be in stock. | [optional] 
**orderable** | **Bool** | A flag indicating whether at least one of the products is available to sell. | [optional] 
**preorderable** | **Bool** | A flag indicating whether the product is preorderable. | [optional] 
**stockLevel** | **Double** | The stock level of the product. If it is infinity, the return value is 999999. The value can be overwritten by the  OCAPI setting &#39;product.inventory.stock_level.max_threshold&#39;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



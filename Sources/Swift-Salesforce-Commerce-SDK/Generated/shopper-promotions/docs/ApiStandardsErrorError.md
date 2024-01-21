# ApiStandardsErrorError

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | A URI reference [RFC3986] that identifies the problem type.  This specification encourages that, when dereferenced, it provide human-readable documentation for the problem type (e.g., using HTML [W3C.REC-html5-20141028]).  When this member is not present, its value is assumed to be \&quot;about:blank\&quot;. It accepts relative URIs; this means that they must be resolved relative to the document&#39;s base URI, as per [RFC3986], Section 5.  | 
**title** | **String** | A short, human-readable summary of the problem type.  It will not change from occurrence to occurrence of the problem, except for purposes of localization.  | [optional] 
**detail** | **String** | A human-readable explanation specific to this occurrence of the problem.  | [optional] 
**instance** | **String** | A URI reference that identifies the specific occurrence of the problem.  It may or may not yield further information if dereferenced.  It accepts relative URIs; this means that they must be resolved relative to the document&#39;s base URI, as per [RFC3986], Section 5.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



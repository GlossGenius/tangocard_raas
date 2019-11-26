# TangocardRaas::CatalogsApi

All URIs are relative to *http://integration-api.tangocard.com/raas/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_catalog**](CatalogsApi.md#get_catalog) | **GET** /catalogs | Get all items in the Platform&#39;s Catalog.



## get_catalog

> CatalogViewVerbose get_catalog(opts)

Get all items in the Platform's Catalog.

### Example

```ruby
# load the gem
require 'tangocard_raas'
# setup authorization
TangocardRaas.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = TangocardRaas::CatalogsApi.new
opts = {
  verbose: true # Boolean | Verbose payload
}

begin
  #Get all items in the Platform's Catalog.
  result = api_instance.get_catalog(opts)
  p result
rescue TangocardRaas::ApiError => e
  puts "Exception when calling CatalogsApi->get_catalog: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verbose** | **Boolean**| Verbose payload | [optional] [default to true]

### Return type

[**CatalogViewVerbose**](CatalogViewVerbose.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


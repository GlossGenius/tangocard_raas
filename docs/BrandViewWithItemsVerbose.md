# TangocardRaas::BrandViewWithItemsVerbose

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**brand_key** | **String** | Brand Key | 
**brand_name** | **String** | Brand Display Name | 
**brand_requirements** | [**BrandRequirements**](BrandRequirements.md) |  | 
**created_date** | **String** | Created Date | 
**description** | **String** | Brand Description | 
**disclaimer** | **String** | Brand Disclaimer | 
**image_urls** | **Hash&lt;String, String&gt;** | Brand Images in various sizes | 
**items** | [**Array&lt;ItemViewVerbose&gt;**](ItemViewVerbose.md) | List of Items associated with this Brand | 
**last_update_date** | **String** | Last Updated Date | 
**short_description** | **String** | Short Description | 
**status** | **String** | Brand Status | 
**terms** | **String** | Brand Terms and Conditions | 

## Code Sample

```ruby
require 'TangocardRaas'

instance = TangocardRaas::BrandViewWithItemsVerbose.new(brand_key: null,
                                 brand_name: null,
                                 brand_requirements: null,
                                 created_date: null,
                                 description: null,
                                 disclaimer: null,
                                 image_urls: null,
                                 items: null,
                                 last_update_date: null,
                                 short_description: null,
                                 status: null,
                                 terms: null)
```



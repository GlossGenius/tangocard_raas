# TangocardRaas::EmailTemplateViewVerbose

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accent_color** | **String** | Accent Color | 
**access_controls** | [**Array&lt;StandardRewardEmailTemplateAccess&gt;**](StandardRewardEmailTemplateAccess.md) | Access Control | [optional] 
**closing** | **String** | Closing Message | 
**customer_service_message** | **String** | Customer Service Message | [optional] 
**defaults** | [**Array&lt;StandardRewardEmailTemplateDefault&gt;**](StandardRewardEmailTemplateDefault.md) | Defaults | [optional] 
**etid** | **String** | Email Template Identifier (ETID) | 
**from_name** | **String** | From Name | 
**header_image** | **String** | Header Image Url | 
**header_image_alt_text** | **String** | Header Image - Alt Text | 
**message_body** | **String** | Message Body | 
**name** | **String** | Name | 
**subject** | **String** | Subject | 

## Code Sample

```ruby
require 'TangocardRaas'

instance = TangocardRaas::EmailTemplateViewVerbose.new(accent_color: null,
                                 access_controls: null,
                                 closing: null,
                                 customer_service_message: null,
                                 defaults: null,
                                 etid: null,
                                 from_name: null,
                                 header_image: null,
                                 header_image_alt_text: null,
                                 message_body: null,
                                 name: null,
                                 subject: null)
```



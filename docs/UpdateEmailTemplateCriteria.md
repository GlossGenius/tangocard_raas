# TangocardRaas::UpdateEmailTemplateCriteria

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accent_color** | **String** | Accent Color | [optional] 
**access_control** | [**Array&lt;StandardRewardEmailTemplateAccess&gt;**](StandardRewardEmailTemplateAccess.md) | Access Control | [optional] 
**closing** | **String** | Closing Message | [optional] 
**customer_service_message** | **String** | Customer Service Message | [optional] 
**defaults** | [**Array&lt;StandardRewardEmailTemplateDefault&gt;**](StandardRewardEmailTemplateDefault.md) | Defaults | [optional] 
**from_name** | **String** | From Name | [optional] 
**header_image** | **String** | Header Image (Base 64 Encoded) | [optional] 
**header_image_alt_text** | **String** | Header Image - Alt Text | [optional] 
**message_body** | **String** | Message Body | [optional] 
**name** | **String** | Name | [optional] 
**subject** | **String** | Subject | [optional] 

## Code Sample

```ruby
require 'TangocardRaas'

instance = TangocardRaas::UpdateEmailTemplateCriteria.new(accent_color: #000000,
                                 access_control: null,
                                 closing: null,
                                 customer_service_message: null,
                                 defaults: null,
                                 from_name: null,
                                 header_image: null,
                                 header_image_alt_text: null,
                                 message_body: null,
                                 name: null,
                                 subject: null)
```



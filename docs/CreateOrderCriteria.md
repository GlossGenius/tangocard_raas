# TangocardRaas::CreateOrderCriteria

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_identifier** | **String** | Account Identifier | 
**amount** | **Float** | Amount | 
**campaign** | **String** | Campaign | [optional] 
**customer_identifier** | **String** | Customer Identifier | 
**email_subject** | **String** | Email subject | [optional] 
**etid** | **String** | Email Template Identifier | [optional] 
**external_ref_id** | **String** | External Reference ID | [optional] 
**message** | **String** | Message | [optional] 
**notes** | **String** | Notes | [optional] 
**recipient** | [**RecipientInfoCriteria**](RecipientInfoCriteria.md) |  | [optional] 
**send_email** | **Boolean** | Send Email | 
**sender** | [**SenderInfoCriteria**](SenderInfoCriteria.md) |  | [optional] 
**utid** | **String** | Unique Tango Card Identifier | 

## Code Sample

```ruby
require 'TangocardRaas'

instance = TangocardRaas::CreateOrderCriteria.new(account_identifier: null,
                                 amount: null,
                                 campaign: null,
                                 customer_identifier: null,
                                 email_subject: null,
                                 etid: E000000,
                                 external_ref_id: null,
                                 message: null,
                                 notes: null,
                                 recipient: null,
                                 send_email: true,
                                 sender: null,
                                 utid: null)
```



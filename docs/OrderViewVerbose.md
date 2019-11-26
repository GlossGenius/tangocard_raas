# TangocardRaas::OrderViewVerbose

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_identifier** | **String** | Account Identifier | 
**account_number** | **String** | Account Number | 
**amount_charged** | [**MoneyView**](MoneyView.md) |  | 
**campaign** | **String** | Reward Campaign | 
**created_at** | **String** | Created Date | 
**customer_identifier** | **String** | Customer Identifier | 
**denomination** | [**MoneyView**](MoneyView.md) |  | 
**email_subject** | **String** | Email Subject | 
**etid** | **String** | Reward Email Template | 
**external_ref_id** | **String** | External Reference ID | 
**message** | **String** | Email Message | 
**notes** | **String** | Notes | [optional] 
**recipient** | [**RecipientInfoView**](RecipientInfoView.md) |  | [optional] 
**reference_order_id** | **String** | Reference Order ID | 
**reward** | [**OrderRewardView**](OrderRewardView.md) |  | 
**reward_name** | **String** | Reward Name | 
**send_email** | **Boolean** | Send Email? | 
**sender** | [**SenderInfoView**](SenderInfoView.md) |  | [optional] 
**status** | **String** | Reward Status | 
**utid** | **String** | Utid - Unique Tango Card ID. | 

## Code Sample

```ruby
require 'TangocardRaas'

instance = TangocardRaas::OrderViewVerbose.new(account_identifier: null,
                                 account_number: null,
                                 amount_charged: null,
                                 campaign: null,
                                 created_at: null,
                                 customer_identifier: null,
                                 denomination: null,
                                 email_subject: null,
                                 etid: null,
                                 external_ref_id: null,
                                 message: null,
                                 notes: null,
                                 recipient: null,
                                 reference_order_id: null,
                                 reward: null,
                                 reward_name: null,
                                 send_email: false,
                                 sender: null,
                                 status: null,
                                 utid: null)
```



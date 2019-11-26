# TangocardRaas::OrderViewSummary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_identifier** | **String** | Account Identifier | 
**amount_charged** | [**MoneyView**](MoneyView.md) |  | 
**campaign** | **String** | Reward Campaign | 
**created_at** | **String** | Created Date | 
**customer_identifier** | **String** | Customer Identifier | 
**denomination** | [**MoneyView**](MoneyView.md) |  | 
**email_subject** | **String** | Email Subject | 
**external_ref_id** | **String** | External Reference ID | 
**message** | **String** | Email Message | 
**recipient** | [**RecipientInfoView**](RecipientInfoView.md) |  | 
**redemption_instructions** | **String** | Redemption Instructions | 
**reference_order_id** | **String** | Reference Order ID | 
**reward** | [**OrderRewardView**](OrderRewardView.md) |  | 
**reward_name** | **String** | Reward Name | 
**send_email** | **Boolean** | Send Email? | 
**sender** | [**SenderInfoView**](SenderInfoView.md) |  | 
**status** | **String** | Reward Status | 
**utid** | **String** | Utid - Unique Tango Card ID. | 

## Code Sample

```ruby
require 'TangocardRaas'

instance = TangocardRaas::OrderViewSummary.new(account_identifier: null,
                                 amount_charged: null,
                                 campaign: null,
                                 created_at: null,
                                 customer_identifier: null,
                                 denomination: null,
                                 email_subject: null,
                                 external_ref_id: null,
                                 message: null,
                                 recipient: null,
                                 redemption_instructions: null,
                                 reference_order_id: null,
                                 reward: null,
                                 reward_name: null,
                                 send_email: false,
                                 sender: null,
                                 status: null,
                                 utid: null)
```



# TangocardRaas::CreditCardDepositView

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_number** | **String** | Account Number | 
**amount** | **Float** | Amount funded in USD | 
**amount_charged** | **Float** | Amount charged in USD | 
**created_date** | **String** | Date the credit card deposit was created | 
**fee_percent** | **Float** | Fee percent charged for credit card processing | 
**reference_deposit_id** | **String** | Credit Card Deposit order reference ID | 
**status** | **String** | Status of the credit card deposit | 

## Code Sample

```ruby
require 'TangocardRaas'

instance = TangocardRaas::CreditCardDepositView.new(account_number: null,
                                 amount: null,
                                 amount_charged: null,
                                 created_date: null,
                                 fee_percent: null,
                                 reference_deposit_id: null,
                                 status: null)
```



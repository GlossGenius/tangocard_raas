# TangocardRaas::CreditCardView

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_identifier** | **String** | Account Identifier | 
**account_number** | **String** | Account Number | 
**activation_date** | **String** | Date when the the credit card will be activated for use in funding | 
**contact_information** | [**Array&lt;ContactInformationView&gt;**](ContactInformationView.md) | List of contact information for funding confirmation emails | 
**created_date** | **String** | Date the credit card was created | 
**customer_identifier** | **String** | Customer Identifier | 
**expiration_date** | **String** | Expiration date of the registered card in YYYY-MM format | 
**label** | **String** | Credit Card label | 
**last_four_digits** | **String** | Last four digits of the registered credit card | 
**status** | **String** | Status of the registered card | 
**token** | **String** | Credit Card token identifier | 

## Code Sample

```ruby
require 'TangocardRaas'

instance = TangocardRaas::CreditCardView.new(account_identifier: null,
                                 account_number: null,
                                 activation_date: null,
                                 contact_information: null,
                                 created_date: null,
                                 customer_identifier: null,
                                 expiration_date: null,
                                 label: null,
                                 last_four_digits: null,
                                 status: null,
                                 token: null)
```



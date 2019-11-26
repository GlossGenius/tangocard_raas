# TangocardRaas::CreateCreditCardCriteria

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_identifier** | **String** | Account Identifier | 
**billing_address** | [**BillingAddressCriteria**](BillingAddressCriteria.md) |  | 
**contact_information** | [**Array&lt;ContactInformationCriteria&gt;**](ContactInformationCriteria.md) | Contact Information | [optional] 
**credit_card** | [**CreditCardCriteria**](CreditCardCriteria.md) |  | 
**customer_identifier** | **String** | Customer Identifier | 
**ip_address** | **String** | IP Address | 
**label** | **String** | Credit Card Label | 

## Code Sample

```ruby
require 'TangocardRaas'

instance = TangocardRaas::CreateCreditCardCriteria.new(account_identifier: null,
                                 billing_address: null,
                                 contact_information: null,
                                 credit_card: null,
                                 customer_identifier: null,
                                 ip_address: null,
                                 label: null)
```



# TangocardRaas::CustomerViewSummary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accounts** | [**Array&lt;AccountViewSummary&gt;**](AccountViewSummary.md) | List of Accounts this Customer has | 
**created_at** | **String** | Created Date | 
**customer_identifier** | **String** | Customer Identifier | 
**display_name** | **String** | Customer Display Name | 
**status** | **String** | Customer Status | 

## Code Sample

```ruby
require 'TangocardRaas'

instance = TangocardRaas::CustomerViewSummary.new(accounts: null,
                                 created_at: null,
                                 customer_identifier: null,
                                 display_name: null,
                                 status: null)
```



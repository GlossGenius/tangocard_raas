# TangocardRaas::ResendView

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **String** | Created Date | 
**email** | **String** | Email address that the resend was sent to | 
**id** | **Integer** | ID | 
**legacy_id** | **String** | Legacy ID (only when resending v1 orders) | 

## Code Sample

```ruby
require 'TangocardRaas'

instance = TangocardRaas::ResendView.new(created_at: null,
                                 email: null,
                                 id: null,
                                 legacy_id: null)
```



# TangocardRaas::OrderRewardView

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**credential_list** | [**Array&lt;CredentialView&gt;**](CredentialView.md) | Verbose list of credentials | [optional] 
**credentials** | **Hash&lt;String, String&gt;** | Credentials as a map with String label key and credential value String | 
**redemption_instructions** | **String** |  | [optional] 

## Code Sample

```ruby
require 'TangocardRaas'

instance = TangocardRaas::OrderRewardView.new(credential_list: null,
                                 credentials: null,
                                 redemption_instructions: null)
```



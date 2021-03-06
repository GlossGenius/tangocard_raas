# TangocardRaas::CustomersApi

All URIs are relative to *http://integration-api.tangocard.com/raas/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_customer**](CustomersApi.md#create_customer) | **POST** /customers | Create a new Customer on this Platform.
[**create_customer_account**](CustomersApi.md#create_customer_account) | **POST** /customers/{customerIdentifier}/accounts | Create an Account under a specific Customer on this Platform.
[**get_customer**](CustomersApi.md#get_customer) | **GET** /customers/{customerIdentifier} | Get details for a specific Customer on this Platform.
[**list_customer_accounts1**](CustomersApi.md#list_customer_accounts1) | **GET** /customers/{customerIdentifier}/accounts | Get a list of all Accounts created for a specific Customer on this Platform.
[**list_customers**](CustomersApi.md#list_customers) | **GET** /customers | Get a list of all Customers on this Platform.



## create_customer

> CustomerViewNew create_customer(opts)

Create a new Customer on this Platform.

### Example

```ruby
# load the gem
require 'tangocard_raas'
# setup authorization
TangocardRaas.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = TangocardRaas::CustomersApi.new
opts = {
  form: TangocardRaas::CreateCustomerCriteria.new # CreateCustomerCriteria | <strong>displayName</strong> - a friendly name for this customer <br /><br /><strong>customerIdentifier</strong> - an official identifier for this customer. This identifier needs to be lowercase if alphabetic characters are used.
}

begin
  #Create a new Customer on this Platform.
  result = api_instance.create_customer(opts)
  p result
rescue TangocardRaas::ApiError => e
  puts "Exception when calling CustomersApi->create_customer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **form** | [**CreateCustomerCriteria**](CreateCustomerCriteria.md)| &lt;strong&gt;displayName&lt;/strong&gt; - a friendly name for this customer &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;customerIdentifier&lt;/strong&gt; - an official identifier for this customer. This identifier needs to be lowercase if alphabetic characters are used. | [optional] 

### Return type

[**CustomerViewNew**](CustomerViewNew.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_customer_account

> AccountView create_customer_account(customer_identifier, opts)

Create an Account under a specific Customer on this Platform.

### Example

```ruby
# load the gem
require 'tangocard_raas'
# setup authorization
TangocardRaas.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = TangocardRaas::CustomersApi.new
customer_identifier = 'customer_identifier_example' # String | The customerIdentifier for the Customer under which you are creating a new account
opts = {
  account_criteria: TangocardRaas::CreateAccountCriteria.new # CreateAccountCriteria | <strong>contactEmail</strong> - An email address for a designated representative for this account.<br /><br /><strong>displayName</strong> - A friendly name for this account<br /><br /><strong>identifier</strong> - A unique identifier for this account. This identifier must be lowercase if alphabetic characters are used.
}

begin
  #Create an Account under a specific Customer on this Platform.
  result = api_instance.create_customer_account(customer_identifier, opts)
  p result
rescue TangocardRaas::ApiError => e
  puts "Exception when calling CustomersApi->create_customer_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_identifier** | **String**| The customerIdentifier for the Customer under which you are creating a new account | 
 **account_criteria** | [**CreateAccountCriteria**](CreateAccountCriteria.md)| &lt;strong&gt;contactEmail&lt;/strong&gt; - An email address for a designated representative for this account.&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;displayName&lt;/strong&gt; - A friendly name for this account&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;identifier&lt;/strong&gt; - A unique identifier for this account. This identifier must be lowercase if alphabetic characters are used. | [optional] 

### Return type

[**AccountView**](AccountView.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_customer

> CustomerViewSummary get_customer(customer_identifier)

Get details for a specific Customer on this Platform.

### Example

```ruby
# load the gem
require 'tangocard_raas'
# setup authorization
TangocardRaas.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = TangocardRaas::CustomersApi.new
customer_identifier = 'customer_identifier_example' # String | customerIdentifier

begin
  #Get details for a specific Customer on this Platform.
  result = api_instance.get_customer(customer_identifier)
  p result
rescue TangocardRaas::ApiError => e
  puts "Exception when calling CustomersApi->get_customer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_identifier** | **String**| customerIdentifier | 

### Return type

[**CustomerViewSummary**](CustomerViewSummary.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_customer_accounts1

> AccountViewSummary list_customer_accounts1(customer_identifier)

Get a list of all Accounts created for a specific Customer on this Platform.

### Example

```ruby
# load the gem
require 'tangocard_raas'
# setup authorization
TangocardRaas.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = TangocardRaas::CustomersApi.new
customer_identifier = 'customer_identifier_example' # String | customerIdentifier

begin
  #Get a list of all Accounts created for a specific Customer on this Platform.
  result = api_instance.list_customer_accounts1(customer_identifier)
  p result
rescue TangocardRaas::ApiError => e
  puts "Exception when calling CustomersApi->list_customer_accounts1: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_identifier** | **String**| customerIdentifier | 

### Return type

[**AccountViewSummary**](AccountViewSummary.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_customers

> CustomerViewSummary list_customers

Get a list of all Customers on this Platform.

### Example

```ruby
# load the gem
require 'tangocard_raas'
# setup authorization
TangocardRaas.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = TangocardRaas::CustomersApi.new

begin
  #Get a list of all Customers on this Platform.
  result = api_instance.list_customers
  p result
rescue TangocardRaas::ApiError => e
  puts "Exception when calling CustomersApi->list_customers: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CustomerViewSummary**](CustomerViewSummary.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


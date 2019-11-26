# TangocardRaas::EmailTemplatesApi

All URIs are relative to *http://integration-api.tangocard.com/raas/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_email_template**](EmailTemplatesApi.md#create_email_template) | **POST** /emailTemplates | Create a new email template
[**delete_email_template**](EmailTemplatesApi.md#delete_email_template) | **DELETE** /emailTemplates/{etid} | Delete a specific Email Template on this Platform.
[**get_email_template**](EmailTemplatesApi.md#get_email_template) | **GET** /emailTemplates/{etid} | Get details for a specific Email Template on this Platform.
[**list_email_templates**](EmailTemplatesApi.md#list_email_templates) | **GET** /emailTemplates | Get a list of all Email Templates on this Platform.
[**update_email_template**](EmailTemplatesApi.md#update_email_template) | **PATCH** /emailTemplates/{etid} | Update details for a specific Email Template on this Platform.



## create_email_template

> EmailTemplateViewVerbose create_email_template(opts)

Create a new email template

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

api_instance = TangocardRaas::EmailTemplatesApi.new
opts = {
  create_email_template_criteria: TangocardRaas::CreateEmailTemplateCriteria.new # CreateEmailTemplateCriteria | <strong>name</strong> - A unique name to give the template.<br/><br/><strong>fromName</strong> - The name that will appear in the From line of the email.<br/><br/><strong>subject</strong> - The Subject of the email.<br/><br/><strong>headerImage</strong> - A Base64 encoded string of an image that will show as the header of the email.<br/><br/><strong>headerImageAltText</strong> - The Alt Text for the Header Image in the email.<br/><br/><strong>accentColor</strong> - A Hex color value, six hexadecimal digits preceded by a pound sign, used as an accent in the email.<br/><br/><strong>messageBody</strong> - The message body for the email. This is often used to let the recipient know why they have received the reward.<br/><br/><strong>closing</strong> - After the reward credential, a space to close the message to the recipient<br/><br/><strong>customerServiceMessage</strong> - (Optional) If left null, Tango Card's Customer Support contact information will be included. Otherwise contact information for your customer support, if you are taking responsibility for providing first tier customer support of your recipients. <br/><br/><strong>accessControl</strong> - (Optional) Which Customers and/or Accounts should have access to this template.<br/><br/><strong>accessControl - type</strong> - The type of access being specified: PLATFORM, CUSTOMER or ACCOUNT.<br/><br/><strong>accessControl - identifier</strong> - If the type is PLATFORM, the platform name or can be left blank. If the type is CUSTOMER OR ACCOUNT, the customerIdentifier or the accountIdentifier, respectively.<br/><br/><strong>defaults</strong> - If you want this template to be used at order time for the given Platform, Customer or Account when the Email Template Identifier (etid) is not provided with the order.<br/><br/><strong>defaults - type</strong> - The type of default being specified: PLATFORM, CUSTOMER or ACCOUNT.<br/><br/><strong>defaults - identifier</strong> - If the type is PLATFORM, the platform name or can be left blank. If the type is CUSTOMER OR ACCOUNT, the customerIdentifier or the accountIdentifier, respectively.<br/><br/>
}

begin
  #Create a new email template
  result = api_instance.create_email_template(opts)
  p result
rescue TangocardRaas::ApiError => e
  puts "Exception when calling EmailTemplatesApi->create_email_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_email_template_criteria** | [**CreateEmailTemplateCriteria**](CreateEmailTemplateCriteria.md)| &lt;strong&gt;name&lt;/strong&gt; - A unique name to give the template.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;fromName&lt;/strong&gt; - The name that will appear in the From line of the email.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;subject&lt;/strong&gt; - The Subject of the email.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;headerImage&lt;/strong&gt; - A Base64 encoded string of an image that will show as the header of the email.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;headerImageAltText&lt;/strong&gt; - The Alt Text for the Header Image in the email.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;accentColor&lt;/strong&gt; - A Hex color value, six hexadecimal digits preceded by a pound sign, used as an accent in the email.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;messageBody&lt;/strong&gt; - The message body for the email. This is often used to let the recipient know why they have received the reward.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;closing&lt;/strong&gt; - After the reward credential, a space to close the message to the recipient&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;customerServiceMessage&lt;/strong&gt; - (Optional) If left null, Tango Card&#39;s Customer Support contact information will be included. Otherwise contact information for your customer support, if you are taking responsibility for providing first tier customer support of your recipients. &lt;br/&gt;&lt;br/&gt;&lt;strong&gt;accessControl&lt;/strong&gt; - (Optional) Which Customers and/or Accounts should have access to this template.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;accessControl - type&lt;/strong&gt; - The type of access being specified: PLATFORM, CUSTOMER or ACCOUNT.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;accessControl - identifier&lt;/strong&gt; - If the type is PLATFORM, the platform name or can be left blank. If the type is CUSTOMER OR ACCOUNT, the customerIdentifier or the accountIdentifier, respectively.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;defaults&lt;/strong&gt; - If you want this template to be used at order time for the given Platform, Customer or Account when the Email Template Identifier (etid) is not provided with the order.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;defaults - type&lt;/strong&gt; - The type of default being specified: PLATFORM, CUSTOMER or ACCOUNT.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;defaults - identifier&lt;/strong&gt; - If the type is PLATFORM, the platform name or can be left blank. If the type is CUSTOMER OR ACCOUNT, the customerIdentifier or the accountIdentifier, respectively.&lt;br/&gt;&lt;br/&gt; | [optional] 

### Return type

[**EmailTemplateViewVerbose**](EmailTemplateViewVerbose.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_email_template

> delete_email_template(etid)

Delete a specific Email Template on this Platform.

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

api_instance = TangocardRaas::EmailTemplatesApi.new
etid = 'etid_example' # String | Email Template Identifier (ETID) is returned in the email template response payload

begin
  #Delete a specific Email Template on this Platform.
  api_instance.delete_email_template(etid)
rescue TangocardRaas::ApiError => e
  puts "Exception when calling EmailTemplatesApi->delete_email_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **etid** | **String**| Email Template Identifier (ETID) is returned in the email template response payload | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_email_template

> EmailTemplateViewVerbose get_email_template(etid)

Get details for a specific Email Template on this Platform.

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

api_instance = TangocardRaas::EmailTemplatesApi.new
etid = 'etid_example' # String | Email Template Identifier (ETID) is returned in the email template response payload

begin
  #Get details for a specific Email Template on this Platform.
  result = api_instance.get_email_template(etid)
  p result
rescue TangocardRaas::ApiError => e
  puts "Exception when calling EmailTemplatesApi->get_email_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **etid** | **String**| Email Template Identifier (ETID) is returned in the email template response payload | 

### Return type

[**EmailTemplateViewVerbose**](EmailTemplateViewVerbose.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_email_templates

> EmailTemplateViewVerbose list_email_templates(opts)

Get a list of all Email Templates on this Platform.

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

api_instance = TangocardRaas::EmailTemplatesApi.new
opts = {
  elements_per_block: 56, # Integer | specify the number of elements in a block.
  page: 56 # Integer | specify the page number to return.
}

begin
  #Get a list of all Email Templates on this Platform.
  result = api_instance.list_email_templates(opts)
  p result
rescue TangocardRaas::ApiError => e
  puts "Exception when calling EmailTemplatesApi->list_email_templates: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **elements_per_block** | **Integer**| specify the number of elements in a block. | [optional] 
 **page** | **Integer**| specify the page number to return. | [optional] 

### Return type

[**EmailTemplateViewVerbose**](EmailTemplateViewVerbose.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_email_template

> EmailTemplateViewVerbose update_email_template(etid, opts)

Update details for a specific Email Template on this Platform.

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

api_instance = TangocardRaas::EmailTemplatesApi.new
etid = 'etid_example' # String | Email Template Identifier (ETID) is returned in the email template response payload
opts = {
  update_email_template_criteria: TangocardRaas::UpdateEmailTemplateCriteria.new # UpdateEmailTemplateCriteria | <strong>name</strong> - (Optional) A unique name to give the template.<br/><br/><strong>fromName</strong> - (Optional) The name that will appear in the From line of the email.<br/><br/><strong>subject</strong> - (Optional) The Subject of the email.<br/><br/><strong>headerImage</strong> - (Optional) A Base64 encoded string of an image that will show as the header of the email.<br/><br/><strong>headerImageAltText</strong> - (Optional) The Alt Text for the Header Image in the email.<br/><br/><strong>accentColor</strong> - (Optional) A Hex color value, six hexadecimal digits preceded by a pound sign, used as an accent in the email.<br/><br/><strong>messageBody</strong> - (Optional) The message body for the email. This is often used to let the recipient know why they have received the reward.<br/><br/><strong>closing</strong> - (Optional) After the reward credential, a space to close the message to the recipient<br/><br/><strong>customerServiceMessage</strong> - (Optional) If left null, Tango Card's Customer Support contact information will be included. Otherwise contact information for your customer support, if you are taking responsibility for providing first tier customer support of your recipients. <br/><br/><strong>accessControl</strong> - (Optional) Which Customers and/or Accounts should have access to this template.<br/><br/><strong>accessControl - type</strong> - The type of access being specified: PLATFORM, CUSTOMER or ACCOUNT.<br/><br/><strong>accessControl - identifier</strong> - If the type is PLATFORM, the platform name or can be left blank. If the type is CUSTOMER OR ACCOUNT, the customerIdentifier or the accountIdentifier, respectively.<br/><br/><strong>defaults</strong> - If you want this template to be used at order time for the given Platform, Customer or Account when the Email Template Identifier (etid) is not provided with the order.<br/><br/><strong>defaults - type</strong> - The type of default being specified: PLATFORM, CUSTOMER or ACCOUNT.<br/><br/><strong>defaults - identifier</strong> - If the type is PLATFORM, the platform name or can be left blank. If the type is CUSTOMER OR ACCOUNT, the customerIdentifier or the accountIdentifier, respectively.<br/><br/>
}

begin
  #Update details for a specific Email Template on this Platform.
  result = api_instance.update_email_template(etid, opts)
  p result
rescue TangocardRaas::ApiError => e
  puts "Exception when calling EmailTemplatesApi->update_email_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **etid** | **String**| Email Template Identifier (ETID) is returned in the email template response payload | 
 **update_email_template_criteria** | [**UpdateEmailTemplateCriteria**](UpdateEmailTemplateCriteria.md)| &lt;strong&gt;name&lt;/strong&gt; - (Optional) A unique name to give the template.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;fromName&lt;/strong&gt; - (Optional) The name that will appear in the From line of the email.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;subject&lt;/strong&gt; - (Optional) The Subject of the email.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;headerImage&lt;/strong&gt; - (Optional) A Base64 encoded string of an image that will show as the header of the email.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;headerImageAltText&lt;/strong&gt; - (Optional) The Alt Text for the Header Image in the email.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;accentColor&lt;/strong&gt; - (Optional) A Hex color value, six hexadecimal digits preceded by a pound sign, used as an accent in the email.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;messageBody&lt;/strong&gt; - (Optional) The message body for the email. This is often used to let the recipient know why they have received the reward.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;closing&lt;/strong&gt; - (Optional) After the reward credential, a space to close the message to the recipient&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;customerServiceMessage&lt;/strong&gt; - (Optional) If left null, Tango Card&#39;s Customer Support contact information will be included. Otherwise contact information for your customer support, if you are taking responsibility for providing first tier customer support of your recipients. &lt;br/&gt;&lt;br/&gt;&lt;strong&gt;accessControl&lt;/strong&gt; - (Optional) Which Customers and/or Accounts should have access to this template.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;accessControl - type&lt;/strong&gt; - The type of access being specified: PLATFORM, CUSTOMER or ACCOUNT.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;accessControl - identifier&lt;/strong&gt; - If the type is PLATFORM, the platform name or can be left blank. If the type is CUSTOMER OR ACCOUNT, the customerIdentifier or the accountIdentifier, respectively.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;defaults&lt;/strong&gt; - If you want this template to be used at order time for the given Platform, Customer or Account when the Email Template Identifier (etid) is not provided with the order.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;defaults - type&lt;/strong&gt; - The type of default being specified: PLATFORM, CUSTOMER or ACCOUNT.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;defaults - identifier&lt;/strong&gt; - If the type is PLATFORM, the platform name or can be left blank. If the type is CUSTOMER OR ACCOUNT, the customerIdentifier or the accountIdentifier, respectively.&lt;br/&gt;&lt;br/&gt; | [optional] 

### Return type

[**EmailTemplateViewVerbose**](EmailTemplateViewVerbose.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


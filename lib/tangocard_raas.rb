=begin
#Tango Card RaaS API

#<p>Welcome to the RaaS&reg; API – with this RESTful API you can integrate a global reward or incentive program into your app or platform.<br /><br /> This console works in our Sandbox environment. To receive your own credentials or to ask questions, please contact us at <a href=\"mailto:devsupport@tangocard.com\">devsupport@tangocard.com</a>.

The version of the OpenAPI document: 2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2-SNAPSHOT

=end

# Common files
require 'tangocard_raas/api_client'
require 'tangocard_raas/api_error'
require 'tangocard_raas/version'
require 'tangocard_raas/configuration'

# Models
require 'tangocard_raas/models/account_view'
require 'tangocard_raas/models/account_view_summary'
require 'tangocard_raas/models/billing_address_criteria'
require 'tangocard_raas/models/brand_requirements'
require 'tangocard_raas/models/brand_view_with_items_verbose'
require 'tangocard_raas/models/catalog_view_verbose'
require 'tangocard_raas/models/contact_information_criteria'
require 'tangocard_raas/models/contact_information_view'
require 'tangocard_raas/models/create_account_criteria'
require 'tangocard_raas/models/create_credit_card_criteria'
require 'tangocard_raas/models/create_credit_card_deposit_criteria'
require 'tangocard_raas/models/create_credit_card_unregister_criteria'
require 'tangocard_raas/models/create_customer_criteria'
require 'tangocard_raas/models/create_email_template_criteria'
require 'tangocard_raas/models/create_order_criteria'
require 'tangocard_raas/models/credential_view'
require 'tangocard_raas/models/credit_card_criteria'
require 'tangocard_raas/models/credit_card_deposit_view'
require 'tangocard_raas/models/credit_card_unregister_view'
require 'tangocard_raas/models/credit_card_view'
require 'tangocard_raas/models/customer_view_new'
require 'tangocard_raas/models/customer_view_summary'
require 'tangocard_raas/models/email_template_list_view'
require 'tangocard_raas/models/email_template_view_verbose'
require 'tangocard_raas/models/item_view_verbose'
require 'tangocard_raas/models/money_view'
require 'tangocard_raas/models/order_list_item_view'
require 'tangocard_raas/models/order_list_view'
require 'tangocard_raas/models/order_resend_request_criteria'
require 'tangocard_raas/models/order_reward_view'
require 'tangocard_raas/models/order_view'
require 'tangocard_raas/models/order_view_summary'
require 'tangocard_raas/models/order_view_verbose'
require 'tangocard_raas/models/page_view'
require 'tangocard_raas/models/recipient_info_criteria'
require 'tangocard_raas/models/recipient_info_view'
require 'tangocard_raas/models/resend_view'
require 'tangocard_raas/models/sender_info_criteria'
require 'tangocard_raas/models/sender_info_view'
require 'tangocard_raas/models/standard_reward_email_template_access'
require 'tangocard_raas/models/standard_reward_email_template_default'
require 'tangocard_raas/models/update_email_template_criteria'

# APIs
require 'tangocard_raas/api/customers_api'
require 'tangocard_raas/api/accounts_api'
require 'tangocard_raas/api/fund_api'
require 'tangocard_raas/api/catalogs_api'
require 'tangocard_raas/api/orders_api'
require 'tangocard_raas/api/email_templates_api'

module TangocardRaas
  class << self
    # Customize default settings for the SDK using block.
    #   TangocardRaas.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end

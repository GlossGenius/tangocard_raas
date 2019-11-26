=begin
#Tango Card RaaS API

#<p>Welcome to the RaaS&reg; API – with this RESTful API you can integrate a global reward or incentive program into your app or platform.<br /><br /> This console works in our Sandbox environment. To receive your own credentials or to ask questions, please contact us at <a href=\"mailto:devsupport@tangocard.com\">devsupport@tangocard.com</a>.

The version of the OpenAPI document: 2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2-SNAPSHOT

=end

require 'cgi'

module TangocardRaas
  class OrdersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an Order under a specific Account.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id 
    # @option opts [String] :name 
    # @option opts [String] :identity_hash 
    # @option opts [CreateOrderCriteria] :create_order_criteria &lt;strong&gt;accountIdentifier&lt;/strong&gt; - specify the account this order will be deducted from&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;amount&lt;/strong&gt; - specify the face value of of the reward. Always required, including for fixed value items.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;campaign&lt;/strong&gt; - optional campaign that may be used to administratively categorize a specific order.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;customerIdentifier&lt;/strong&gt; - specify the customer associated with the order. Must be the customer the accountIdentifier is associated with.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;emailSubject&lt;/strong&gt; - Optional. If not specified, a default email subject will be used for the specified reward.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;externalRefID&lt;/strong&gt; - Optional. Idempotenent field that can be used for client-side order cross reference and prevent accidental order duplication. Will be returned in order response, order details, and order history.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;message&lt;/strong&gt; - optional gift message&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;recipient - email&lt;/strong&gt; - required if sendEmail is true&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;recipient - firstName&lt;/strong&gt; - required if sendEmail is true (100 character max)&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;recipient - lastName&lt;/strong&gt; - always optional (100 character max)&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;sendEmail&lt;/strong&gt; - should Tango Card send the email to the recipient?&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;sender - firstName&lt;/strong&gt; - always optional (100 character max)&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;sender - lastName&lt;/strong&gt; - always optional (100 character max)&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;sender - email&lt;/strong&gt; - always optional&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;utid&lt;/strong&gt; - the unique identifier for the reward you are sending as provided in the Get Catalog call&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;etid&lt;/strong&gt; - Optional. The unique identifier for the email template you would like to use. Only applicable if sendEmail is true.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;notes&lt;/strong&gt; - Optional order notes (up to 150 characters)
    # @return [OrderViewSummary]
    def create_order(opts = {})
      data, _status_code, _headers = create_order_with_http_info(opts)
      data
    end

    # Create an Order under a specific Account.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id 
    # @option opts [String] :name 
    # @option opts [String] :identity_hash 
    # @option opts [CreateOrderCriteria] :create_order_criteria &lt;strong&gt;accountIdentifier&lt;/strong&gt; - specify the account this order will be deducted from&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;amount&lt;/strong&gt; - specify the face value of of the reward. Always required, including for fixed value items.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;campaign&lt;/strong&gt; - optional campaign that may be used to administratively categorize a specific order.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;customerIdentifier&lt;/strong&gt; - specify the customer associated with the order. Must be the customer the accountIdentifier is associated with.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;emailSubject&lt;/strong&gt; - Optional. If not specified, a default email subject will be used for the specified reward.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;externalRefID&lt;/strong&gt; - Optional. Idempotenent field that can be used for client-side order cross reference and prevent accidental order duplication. Will be returned in order response, order details, and order history.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;message&lt;/strong&gt; - optional gift message&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;recipient - email&lt;/strong&gt; - required if sendEmail is true&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;recipient - firstName&lt;/strong&gt; - required if sendEmail is true (100 character max)&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;recipient - lastName&lt;/strong&gt; - always optional (100 character max)&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;sendEmail&lt;/strong&gt; - should Tango Card send the email to the recipient?&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;sender - firstName&lt;/strong&gt; - always optional (100 character max)&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;sender - lastName&lt;/strong&gt; - always optional (100 character max)&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;sender - email&lt;/strong&gt; - always optional&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;utid&lt;/strong&gt; - the unique identifier for the reward you are sending as provided in the Get Catalog call&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;etid&lt;/strong&gt; - Optional. The unique identifier for the email template you would like to use. Only applicable if sendEmail is true.&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;notes&lt;/strong&gt; - Optional order notes (up to 150 characters)
    # @return [Array<(OrderViewSummary, Integer, Hash)>] OrderViewSummary data, response status code and response headers
    def create_order_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.create_order ...'
      end
      # resource path
      local_var_path = '/orders'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'identityHash'] = opts[:'identity_hash'] if !opts[:'identity_hash'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'create_order_criteria']) 

      # return_type
      return_type = opts[:return_type] || 'OrderViewSummary' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#create_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get details for a specific Order.
    # @param reference_order_id [String] Reference order ID is returned in the order response payload
    # @param [Hash] opts the optional parameters
    # @return [OrderViewVerbose]
    def get_order(reference_order_id, opts = {})
      data, _status_code, _headers = get_order_with_http_info(reference_order_id, opts)
      data
    end

    # Get details for a specific Order.
    # @param reference_order_id [String] Reference order ID is returned in the order response payload
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderViewVerbose, Integer, Hash)>] OrderViewVerbose data, response status code and response headers
    def get_order_with_http_info(reference_order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.get_order ...'
      end
      # verify the required parameter 'reference_order_id' is set
      if @api_client.config.client_side_validation && reference_order_id.nil?
        fail ArgumentError, "Missing the required parameter 'reference_order_id' when calling OrdersApi.get_order"
      end
      # resource path
      local_var_path = '/orders/{referenceOrderID}'.sub('{' + 'referenceOrderID' + '}', CGI.escape(reference_order_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'OrderViewVerbose' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#get_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resend a specific Order.
    # @param reference_order_id [String] Reference order ID is returned in the order response payload
    # @param [Hash] opts the optional parameters
    # @option opts [OrderResendRequestCriteria] :order_resend_criteria &lt;strong&gt;newEmail&lt;/strong&gt; - A new email to resend this order to.
    # @return [ResendView]
    def get_order_resends(reference_order_id, opts = {})
      data, _status_code, _headers = get_order_resends_with_http_info(reference_order_id, opts)
      data
    end

    # Resend a specific Order.
    # @param reference_order_id [String] Reference order ID is returned in the order response payload
    # @param [Hash] opts the optional parameters
    # @option opts [OrderResendRequestCriteria] :order_resend_criteria &lt;strong&gt;newEmail&lt;/strong&gt; - A new email to resend this order to.
    # @return [Array<(ResendView, Integer, Hash)>] ResendView data, response status code and response headers
    def get_order_resends_with_http_info(reference_order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.get_order_resends ...'
      end
      # verify the required parameter 'reference_order_id' is set
      if @api_client.config.client_side_validation && reference_order_id.nil?
        fail ArgumentError, "Missing the required parameter 'reference_order_id' when calling OrdersApi.get_order_resends"
      end
      # resource path
      local_var_path = '/orders/{referenceOrderID}/resends'.sub('{' + 'referenceOrderID' + '}', CGI.escape(reference_order_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'order_resend_criteria']) 

      # return_type
      return_type = opts[:return_type] || 'ResendView' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#get_order_resends\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of Orders placed under this Platform.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_identifier specify the account to be queried.
    # @option opts [String] :customer_identifier specify the customer to be queried
    # @option opts [String] :external_ref_id specify the external reference ID to be queried
    # @option opts [String] :start_date specify the starting date or date time to be queried according to RFC 3339, i.e. \&quot;2016-01-01\&quot; or \&quot;2016-01-01T00:00:00Z\&quot;. See https://www.ietf.org/rfc/rfc3339.txt 
    # @option opts [String] :end_date specify the ending date or date time to be queried according to RFC 3339, i.e. \&quot;2016-01-01\&quot; or \&quot;2016-01-01T00:00:00Z\&quot;. See https://www.ietf.org/rfc/rfc3339.txt 
    # @option opts [Integer] :elements_per_block specify the number of elements in a block.
    # @option opts [Integer] :page specify the page number to return.
    # @return [OrderListView]
    def list_orders(opts = {})
      data, _status_code, _headers = list_orders_with_http_info(opts)
      data
    end

    # Get a list of Orders placed under this Platform.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_identifier specify the account to be queried.
    # @option opts [String] :customer_identifier specify the customer to be queried
    # @option opts [String] :external_ref_id specify the external reference ID to be queried
    # @option opts [String] :start_date specify the starting date or date time to be queried according to RFC 3339, i.e. \&quot;2016-01-01\&quot; or \&quot;2016-01-01T00:00:00Z\&quot;. See https://www.ietf.org/rfc/rfc3339.txt 
    # @option opts [String] :end_date specify the ending date or date time to be queried according to RFC 3339, i.e. \&quot;2016-01-01\&quot; or \&quot;2016-01-01T00:00:00Z\&quot;. See https://www.ietf.org/rfc/rfc3339.txt 
    # @option opts [Integer] :elements_per_block specify the number of elements in a block.
    # @option opts [Integer] :page specify the page number to return.
    # @return [Array<(OrderListView, Integer, Hash)>] OrderListView data, response status code and response headers
    def list_orders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.list_orders ...'
      end
      # resource path
      local_var_path = '/orders'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'accountIdentifier'] = opts[:'account_identifier'] if !opts[:'account_identifier'].nil?
      query_params[:'customerIdentifier'] = opts[:'customer_identifier'] if !opts[:'customer_identifier'].nil?
      query_params[:'externalRefID'] = opts[:'external_ref_id'] if !opts[:'external_ref_id'].nil?
      query_params[:'startDate'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'endDate'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'elementsPerBlock'] = opts[:'elements_per_block'] if !opts[:'elements_per_block'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'OrderListView' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#list_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
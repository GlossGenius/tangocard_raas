=begin
#Tango Card RaaS API

#<p>Welcome to the RaaS&reg; API – with this RESTful API you can integrate a global reward or incentive program into your app or platform.<br /><br /> This console works in our Sandbox environment. To receive your own credentials or to ask questions, please contact us at <a href=\"mailto:devsupport@tangocard.com\">devsupport@tangocard.com</a>.

The version of the OpenAPI document: 2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2-SNAPSHOT

=end

require 'date'

module TangocardRaas
  class OrderViewVerbose
    # Account Identifier
    attr_accessor :account_identifier

    # Account Number
    attr_accessor :account_number

    attr_accessor :amount_charged

    # Reward Campaign
    attr_accessor :campaign

    # Created Date
    attr_accessor :created_at

    # Customer Identifier
    attr_accessor :customer_identifier

    attr_accessor :denomination

    # Email Subject
    attr_accessor :email_subject

    # Reward Email Template
    attr_accessor :etid

    # External Reference ID
    attr_accessor :external_ref_id

    # Email Message
    attr_accessor :message

    # Notes
    attr_accessor :notes

    attr_accessor :recipient

    # Reference Order ID
    attr_accessor :reference_order_id

    attr_accessor :reward

    # Reward Name
    attr_accessor :reward_name

    # Send Email?
    attr_accessor :send_email

    attr_accessor :sender

    # Reward Status
    attr_accessor :status

    # Utid - Unique Tango Card ID.
    attr_accessor :utid

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_identifier' => :'accountIdentifier',
        :'account_number' => :'accountNumber',
        :'amount_charged' => :'amountCharged',
        :'campaign' => :'campaign',
        :'created_at' => :'createdAt',
        :'customer_identifier' => :'customerIdentifier',
        :'denomination' => :'denomination',
        :'email_subject' => :'emailSubject',
        :'etid' => :'etid',
        :'external_ref_id' => :'externalRefID',
        :'message' => :'message',
        :'notes' => :'notes',
        :'recipient' => :'recipient',
        :'reference_order_id' => :'referenceOrderID',
        :'reward' => :'reward',
        :'reward_name' => :'rewardName',
        :'send_email' => :'sendEmail',
        :'sender' => :'sender',
        :'status' => :'status',
        :'utid' => :'utid'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_identifier' => :'String',
        :'account_number' => :'String',
        :'amount_charged' => :'MoneyView',
        :'campaign' => :'String',
        :'created_at' => :'String',
        :'customer_identifier' => :'String',
        :'denomination' => :'MoneyView',
        :'email_subject' => :'String',
        :'etid' => :'String',
        :'external_ref_id' => :'String',
        :'message' => :'String',
        :'notes' => :'String',
        :'recipient' => :'RecipientInfoView',
        :'reference_order_id' => :'String',
        :'reward' => :'OrderRewardView',
        :'reward_name' => :'String',
        :'send_email' => :'Boolean',
        :'sender' => :'SenderInfoView',
        :'status' => :'String',
        :'utid' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TangocardRaas::OrderViewVerbose` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TangocardRaas::OrderViewVerbose`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_identifier')
        self.account_identifier = attributes[:'account_identifier']
      end

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'amount_charged')
        self.amount_charged = attributes[:'amount_charged']
      end

      if attributes.key?(:'campaign')
        self.campaign = attributes[:'campaign']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'customer_identifier')
        self.customer_identifier = attributes[:'customer_identifier']
      end

      if attributes.key?(:'denomination')
        self.denomination = attributes[:'denomination']
      end

      if attributes.key?(:'email_subject')
        self.email_subject = attributes[:'email_subject']
      end

      if attributes.key?(:'etid')
        self.etid = attributes[:'etid']
      end

      if attributes.key?(:'external_ref_id')
        self.external_ref_id = attributes[:'external_ref_id']
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.key?(:'recipient')
        self.recipient = attributes[:'recipient']
      end

      if attributes.key?(:'reference_order_id')
        self.reference_order_id = attributes[:'reference_order_id']
      end

      if attributes.key?(:'reward')
        self.reward = attributes[:'reward']
      end

      if attributes.key?(:'reward_name')
        self.reward_name = attributes[:'reward_name']
      end

      if attributes.key?(:'send_email')
        self.send_email = attributes[:'send_email']
      end

      if attributes.key?(:'sender')
        self.sender = attributes[:'sender']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'utid')
        self.utid = attributes[:'utid']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @account_identifier.nil?
        invalid_properties.push('invalid value for "account_identifier", account_identifier cannot be nil.')
      end

      if @account_number.nil?
        invalid_properties.push('invalid value for "account_number", account_number cannot be nil.')
      end

      if @amount_charged.nil?
        invalid_properties.push('invalid value for "amount_charged", amount_charged cannot be nil.')
      end

      if @campaign.nil?
        invalid_properties.push('invalid value for "campaign", campaign cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @customer_identifier.nil?
        invalid_properties.push('invalid value for "customer_identifier", customer_identifier cannot be nil.')
      end

      if @denomination.nil?
        invalid_properties.push('invalid value for "denomination", denomination cannot be nil.')
      end

      if @email_subject.nil?
        invalid_properties.push('invalid value for "email_subject", email_subject cannot be nil.')
      end

      if @etid.nil?
        invalid_properties.push('invalid value for "etid", etid cannot be nil.')
      end

      if @external_ref_id.nil?
        invalid_properties.push('invalid value for "external_ref_id", external_ref_id cannot be nil.')
      end

      if @message.nil?
        invalid_properties.push('invalid value for "message", message cannot be nil.')
      end

      if @reference_order_id.nil?
        invalid_properties.push('invalid value for "reference_order_id", reference_order_id cannot be nil.')
      end

      if @reward.nil?
        invalid_properties.push('invalid value for "reward", reward cannot be nil.')
      end

      if @reward_name.nil?
        invalid_properties.push('invalid value for "reward_name", reward_name cannot be nil.')
      end

      if @send_email.nil?
        invalid_properties.push('invalid value for "send_email", send_email cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @utid.nil?
        invalid_properties.push('invalid value for "utid", utid cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account_identifier.nil?
      return false if @account_number.nil?
      return false if @amount_charged.nil?
      return false if @campaign.nil?
      return false if @created_at.nil?
      return false if @customer_identifier.nil?
      return false if @denomination.nil?
      return false if @email_subject.nil?
      return false if @etid.nil?
      return false if @external_ref_id.nil?
      return false if @message.nil?
      return false if @reference_order_id.nil?
      return false if @reward.nil?
      return false if @reward_name.nil?
      return false if @send_email.nil?
      return false if @status.nil?
      return false if @utid.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_identifier == o.account_identifier &&
          account_number == o.account_number &&
          amount_charged == o.amount_charged &&
          campaign == o.campaign &&
          created_at == o.created_at &&
          customer_identifier == o.customer_identifier &&
          denomination == o.denomination &&
          email_subject == o.email_subject &&
          etid == o.etid &&
          external_ref_id == o.external_ref_id &&
          message == o.message &&
          notes == o.notes &&
          recipient == o.recipient &&
          reference_order_id == o.reference_order_id &&
          reward == o.reward &&
          reward_name == o.reward_name &&
          send_email == o.send_email &&
          sender == o.sender &&
          status == o.status &&
          utid == o.utid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_identifier, account_number, amount_charged, campaign, created_at, customer_identifier, denomination, email_subject, etid, external_ref_id, message, notes, recipient, reference_order_id, reward, reward_name, send_email, sender, status, utid].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        TangocardRaas.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
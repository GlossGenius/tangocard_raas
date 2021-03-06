=begin
#Tango Card RaaS API

#<p>Welcome to the RaaS&reg; API – with this RESTful API you can integrate a global reward or incentive program into your app or platform.<br /><br /> This console works in our Sandbox environment. To receive your own credentials or to ask questions, please contact us at <a href=\"mailto:devsupport@tangocard.com\">devsupport@tangocard.com</a>.

The version of the OpenAPI document: 2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2-SNAPSHOT

=end

require 'date'

module TangocardRaas
  class CreateCreditCardCriteria
    # Account Identifier
    attr_accessor :account_identifier

    attr_accessor :billing_address

    # Contact Information
    attr_accessor :contact_information

    attr_accessor :credit_card

    # Customer Identifier
    attr_accessor :customer_identifier

    # IP Address
    attr_accessor :ip_address

    # Credit Card Label
    attr_accessor :label

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_identifier' => :'accountIdentifier',
        :'billing_address' => :'billingAddress',
        :'contact_information' => :'contactInformation',
        :'credit_card' => :'creditCard',
        :'customer_identifier' => :'customerIdentifier',
        :'ip_address' => :'ipAddress',
        :'label' => :'label'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_identifier' => :'String',
        :'billing_address' => :'BillingAddressCriteria',
        :'contact_information' => :'Array<ContactInformationCriteria>',
        :'credit_card' => :'CreditCardCriteria',
        :'customer_identifier' => :'String',
        :'ip_address' => :'String',
        :'label' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `TangocardRaas::CreateCreditCardCriteria` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TangocardRaas::CreateCreditCardCriteria`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_identifier')
        self.account_identifier = attributes[:'account_identifier']
      end

      if attributes.key?(:'billing_address')
        self.billing_address = attributes[:'billing_address']
      end

      if attributes.key?(:'contact_information')
        if (value = attributes[:'contact_information']).is_a?(Array)
          self.contact_information = value
        end
      end

      if attributes.key?(:'credit_card')
        self.credit_card = attributes[:'credit_card']
      end

      if attributes.key?(:'customer_identifier')
        self.customer_identifier = attributes[:'customer_identifier']
      end

      if attributes.key?(:'ip_address')
        self.ip_address = attributes[:'ip_address']
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @account_identifier.nil?
        invalid_properties.push('invalid value for "account_identifier", account_identifier cannot be nil.')
      end

      if @billing_address.nil?
        invalid_properties.push('invalid value for "billing_address", billing_address cannot be nil.')
      end

      if @credit_card.nil?
        invalid_properties.push('invalid value for "credit_card", credit_card cannot be nil.')
      end

      if @customer_identifier.nil?
        invalid_properties.push('invalid value for "customer_identifier", customer_identifier cannot be nil.')
      end

      if @ip_address.nil?
        invalid_properties.push('invalid value for "ip_address", ip_address cannot be nil.')
      end

      if @label.nil?
        invalid_properties.push('invalid value for "label", label cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account_identifier.nil?
      return false if @billing_address.nil?
      return false if @credit_card.nil?
      return false if @customer_identifier.nil?
      return false if @ip_address.nil?
      return false if @label.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_identifier == o.account_identifier &&
          billing_address == o.billing_address &&
          contact_information == o.contact_information &&
          credit_card == o.credit_card &&
          customer_identifier == o.customer_identifier &&
          ip_address == o.ip_address &&
          label == o.label
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_identifier, billing_address, contact_information, credit_card, customer_identifier, ip_address, label].hash
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

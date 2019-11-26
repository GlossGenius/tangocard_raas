=begin
#Tango Card RaaS API

#<p>Welcome to the RaaS&reg; API – with this RESTful API you can integrate a global reward or incentive program into your app or platform.<br /><br /> This console works in our Sandbox environment. To receive your own credentials or to ask questions, please contact us at <a href=\"mailto:devsupport@tangocard.com\">devsupport@tangocard.com</a>.

The version of the OpenAPI document: 2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2-SNAPSHOT

=end

require 'date'

module TangocardRaas
  class EmailTemplateViewVerbose
    # Accent Color
    attr_accessor :accent_color

    # Access Control
    attr_accessor :access_controls

    # Closing Message
    attr_accessor :closing

    # Customer Service Message
    attr_accessor :customer_service_message

    # Defaults
    attr_accessor :defaults

    # Email Template Identifier (ETID)
    attr_accessor :etid

    # From Name
    attr_accessor :from_name

    # Header Image Url
    attr_accessor :header_image

    # Header Image - Alt Text
    attr_accessor :header_image_alt_text

    # Message Body
    attr_accessor :message_body

    # Name
    attr_accessor :name

    # Subject
    attr_accessor :subject

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'accent_color' => :'accentColor',
        :'access_controls' => :'accessControls',
        :'closing' => :'closing',
        :'customer_service_message' => :'customerServiceMessage',
        :'defaults' => :'defaults',
        :'etid' => :'etid',
        :'from_name' => :'fromName',
        :'header_image' => :'headerImage',
        :'header_image_alt_text' => :'headerImageAltText',
        :'message_body' => :'messageBody',
        :'name' => :'name',
        :'subject' => :'subject'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'accent_color' => :'String',
        :'access_controls' => :'Array<StandardRewardEmailTemplateAccess>',
        :'closing' => :'String',
        :'customer_service_message' => :'String',
        :'defaults' => :'Array<StandardRewardEmailTemplateDefault>',
        :'etid' => :'String',
        :'from_name' => :'String',
        :'header_image' => :'String',
        :'header_image_alt_text' => :'String',
        :'message_body' => :'String',
        :'name' => :'String',
        :'subject' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `TangocardRaas::EmailTemplateViewVerbose` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TangocardRaas::EmailTemplateViewVerbose`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'accent_color')
        self.accent_color = attributes[:'accent_color']
      end

      if attributes.key?(:'access_controls')
        if (value = attributes[:'access_controls']).is_a?(Array)
          self.access_controls = value
        end
      end

      if attributes.key?(:'closing')
        self.closing = attributes[:'closing']
      end

      if attributes.key?(:'customer_service_message')
        self.customer_service_message = attributes[:'customer_service_message']
      end

      if attributes.key?(:'defaults')
        if (value = attributes[:'defaults']).is_a?(Array)
          self.defaults = value
        end
      end

      if attributes.key?(:'etid')
        self.etid = attributes[:'etid']
      end

      if attributes.key?(:'from_name')
        self.from_name = attributes[:'from_name']
      end

      if attributes.key?(:'header_image')
        self.header_image = attributes[:'header_image']
      end

      if attributes.key?(:'header_image_alt_text')
        self.header_image_alt_text = attributes[:'header_image_alt_text']
      end

      if attributes.key?(:'message_body')
        self.message_body = attributes[:'message_body']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @accent_color.nil?
        invalid_properties.push('invalid value for "accent_color", accent_color cannot be nil.')
      end

      if @closing.nil?
        invalid_properties.push('invalid value for "closing", closing cannot be nil.')
      end

      if @etid.nil?
        invalid_properties.push('invalid value for "etid", etid cannot be nil.')
      end

      if @from_name.nil?
        invalid_properties.push('invalid value for "from_name", from_name cannot be nil.')
      end

      if @header_image.nil?
        invalid_properties.push('invalid value for "header_image", header_image cannot be nil.')
      end

      if @header_image_alt_text.nil?
        invalid_properties.push('invalid value for "header_image_alt_text", header_image_alt_text cannot be nil.')
      end

      if @message_body.nil?
        invalid_properties.push('invalid value for "message_body", message_body cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @subject.nil?
        invalid_properties.push('invalid value for "subject", subject cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @accent_color.nil?
      return false if @closing.nil?
      return false if @etid.nil?
      return false if @from_name.nil?
      return false if @header_image.nil?
      return false if @header_image_alt_text.nil?
      return false if @message_body.nil?
      return false if @name.nil?
      return false if @subject.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          accent_color == o.accent_color &&
          access_controls == o.access_controls &&
          closing == o.closing &&
          customer_service_message == o.customer_service_message &&
          defaults == o.defaults &&
          etid == o.etid &&
          from_name == o.from_name &&
          header_image == o.header_image &&
          header_image_alt_text == o.header_image_alt_text &&
          message_body == o.message_body &&
          name == o.name &&
          subject == o.subject
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [accent_color, access_controls, closing, customer_service_message, defaults, etid, from_name, header_image, header_image_alt_text, message_body, name, subject].hash
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
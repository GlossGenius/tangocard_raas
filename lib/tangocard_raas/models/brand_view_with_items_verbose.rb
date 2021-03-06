=begin
#Tango Card RaaS API

#<p>Welcome to the RaaS&reg; API – with this RESTful API you can integrate a global reward or incentive program into your app or platform.<br /><br /> This console works in our Sandbox environment. To receive your own credentials or to ask questions, please contact us at <a href=\"mailto:devsupport@tangocard.com\">devsupport@tangocard.com</a>.

The version of the OpenAPI document: 2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2-SNAPSHOT

=end

require 'date'

module TangocardRaas
  class BrandViewWithItemsVerbose
    # Brand Key
    attr_accessor :brand_key

    # Brand Display Name
    attr_accessor :brand_name

    attr_accessor :brand_requirements

    # Created Date
    attr_accessor :created_date

    # Brand Description
    attr_accessor :description

    # Brand Disclaimer
    attr_accessor :disclaimer

    # Brand Images in various sizes
    attr_accessor :image_urls

    # List of Items associated with this Brand
    attr_accessor :items

    # Last Updated Date
    attr_accessor :last_update_date

    # Short Description
    attr_accessor :short_description

    # Brand Status
    attr_accessor :status

    # Brand Terms and Conditions
    attr_accessor :terms

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'brand_key' => :'brandKey',
        :'brand_name' => :'brandName',
        :'brand_requirements' => :'brandRequirements',
        :'created_date' => :'createdDate',
        :'description' => :'description',
        :'disclaimer' => :'disclaimer',
        :'image_urls' => :'imageUrls',
        :'items' => :'items',
        :'last_update_date' => :'lastUpdateDate',
        :'short_description' => :'shortDescription',
        :'status' => :'status',
        :'terms' => :'terms'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'brand_key' => :'String',
        :'brand_name' => :'String',
        :'brand_requirements' => :'BrandRequirements',
        :'created_date' => :'String',
        :'description' => :'String',
        :'disclaimer' => :'String',
        :'image_urls' => :'Hash<String, String>',
        :'items' => :'Array<ItemViewVerbose>',
        :'last_update_date' => :'String',
        :'short_description' => :'String',
        :'status' => :'String',
        :'terms' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `TangocardRaas::BrandViewWithItemsVerbose` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TangocardRaas::BrandViewWithItemsVerbose`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'brand_key')
        self.brand_key = attributes[:'brand_key']
      end

      if attributes.key?(:'brand_name')
        self.brand_name = attributes[:'brand_name']
      end

      if attributes.key?(:'brand_requirements')
        self.brand_requirements = attributes[:'brand_requirements']
      end

      if attributes.key?(:'created_date')
        self.created_date = attributes[:'created_date']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'disclaimer')
        self.disclaimer = attributes[:'disclaimer']
      end

      if attributes.key?(:'image_urls')
        if (value = attributes[:'image_urls']).is_a?(Hash)
          self.image_urls = value
        end
      end

      if attributes.key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end

      if attributes.key?(:'last_update_date')
        self.last_update_date = attributes[:'last_update_date']
      end

      if attributes.key?(:'short_description')
        self.short_description = attributes[:'short_description']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'terms')
        self.terms = attributes[:'terms']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @brand_key.nil?
        invalid_properties.push('invalid value for "brand_key", brand_key cannot be nil.')
      end

      if @brand_name.nil?
        invalid_properties.push('invalid value for "brand_name", brand_name cannot be nil.')
      end

      if @brand_requirements.nil?
        invalid_properties.push('invalid value for "brand_requirements", brand_requirements cannot be nil.')
      end

      if @created_date.nil?
        invalid_properties.push('invalid value for "created_date", created_date cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @disclaimer.nil?
        invalid_properties.push('invalid value for "disclaimer", disclaimer cannot be nil.')
      end

      if @image_urls.nil?
        invalid_properties.push('invalid value for "image_urls", image_urls cannot be nil.')
      end

      if @items.nil?
        invalid_properties.push('invalid value for "items", items cannot be nil.')
      end

      if @last_update_date.nil?
        invalid_properties.push('invalid value for "last_update_date", last_update_date cannot be nil.')
      end

      if @short_description.nil?
        invalid_properties.push('invalid value for "short_description", short_description cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @terms.nil?
        invalid_properties.push('invalid value for "terms", terms cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @brand_key.nil?
      return false if @brand_name.nil?
      return false if @brand_requirements.nil?
      return false if @created_date.nil?
      return false if @description.nil?
      return false if @disclaimer.nil?
      return false if @image_urls.nil?
      return false if @items.nil?
      return false if @last_update_date.nil?
      return false if @short_description.nil?
      return false if @status.nil?
      return false if @terms.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          brand_key == o.brand_key &&
          brand_name == o.brand_name &&
          brand_requirements == o.brand_requirements &&
          created_date == o.created_date &&
          description == o.description &&
          disclaimer == o.disclaimer &&
          image_urls == o.image_urls &&
          items == o.items &&
          last_update_date == o.last_update_date &&
          short_description == o.short_description &&
          status == o.status &&
          terms == o.terms
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [brand_key, brand_name, brand_requirements, created_date, description, disclaimer, image_urls, items, last_update_date, short_description, status, terms].hash
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

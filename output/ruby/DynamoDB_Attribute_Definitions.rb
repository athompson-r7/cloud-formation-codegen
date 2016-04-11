require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # DynamoDB Attribute Definitions
        # DynamoDB_Attribute_Definitions
        ##
        class AttributeDefinitions < Resource


          # @!scope class
          # @attribute [w]
          # AttributeName
          # The name of an attribute. Attribute names can be 1 - 255 characters long                   and have no character restrictions. -- WIP 
          # @note Required: Yes
          # @see  
          property :attribute_name, 'AttributeName'

          # @!scope class
          # @attribute [w]
          # AttributeType
          # The data type for the attribute. You can specify S for string                   data, N for numeric data, or B for binary data. -- WIP 
          # @note Required: Yes
          # @see  
          property :attribute_type, 'AttributeType'


          def initialize(*args)
            super
            type 'AttributeDefinitions'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::AttributeDefinitions#attribute_name attribute_name}
      # {Model::Template::Resource::AttributeDefinitions#attribute_type attribute_type}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-attributedef.html 
      # @see {Model::Template::Resource::AttributeDefinitions}
      def attribute_definitions(name, &block)
        r = Model::Template::Resource::AttributeDefinitions.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

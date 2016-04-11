require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # DynamoDB Key Schema
        # DynamoDB_Key_Schema
        ##
        class KeySchema < Resource


          # @!scope class
          # @attribute [w]
          # AttributeName
          # The attribute name that is used as the primary key for this table. Primary key                   element names can be 1 - 255 characters long and have no character                   restrictions. -- WIP 
          # @note Required: Yes
          # @see  
          property :attribute_name, 'AttributeName'

          # @!scope class
          # @attribute [w]
          # KeyType
          # Represents the attribute data, consisting of the data type and the attribute                   value itself. You can specify HASH or RANGE. -- WIP 
          # @note Required: Yes
          # @see  
          property :key_type, 'KeyType'


          def initialize(*args)
            super
            type 'KeySchema'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::KeySchema#attribute_name attribute_name}
      # {Model::Template::Resource::KeySchema#key_type key_type}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-keyschema.html 
      # @see {Model::Template::Resource::KeySchema}
      def key_schema(name, &block)
        r = Model::Template::Resource::KeySchema.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

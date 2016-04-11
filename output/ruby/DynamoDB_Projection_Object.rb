require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # DynamoDB Projection Object
        # DynamoDB_Projection_Object
        ##
        class ProjectionObject < Resource


          # @!scope class
          # @attribute [w]
          # ProjectionType
          # The set of attributes that are projected into the index: -- WIP 
          # @note Required: No
          # @see  
          property :projection_type, 'ProjectionType'

          # @!scope class
          # @attribute [w]
          # KEYS_ONLY
          # Only the index and primary keys are projected into the                               index. -- WIP 
          # @note Required: No
          # @see  
          property :keys_only, 'KEYS_ONLY'

          # @!scope class
          # @attribute [w]
          # INCLUDE
          # Only the specified table attributes are projected into the index.                               The list of projected attributes are in                               NonKeyAttributes. -- WIP 
          # @note Required: No
          # @see  
          property :include, 'INCLUDE'

          # @!scope class
          # @attribute [w]
          # ALL
          # All of the table attributes are projected into the index. -- WIP 
          # @note Required: No
          # @see  
          property :all, 'ALL'

          # @!scope class
          # @attribute [w]
          # NonKeyAttributes
          # The non-key attribute names that are projected into the index. -- WIP
          # @note Required: No
          # @see 
          property :non_key_attributes, 'NonKeyAttributes', :array


          def initialize(*args)
            super
            type 'ProjectionObject'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::ProjectionObject#projection_type projection_type}
      # {Model::Template::Resource::ProjectionObject#keys_only keys_only}
      # {Model::Template::Resource::ProjectionObject#include include}
      # {Model::Template::Resource::ProjectionObject#all all}
      # {Model::Template::Resource::ProjectionObject#non_key_attributes non_key_attributes}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-projectionobject.html 
      # @see {Model::Template::Resource::ProjectionObject}
      def projection_object(name, &block)
        r = Model::Template::Resource::ProjectionObject.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

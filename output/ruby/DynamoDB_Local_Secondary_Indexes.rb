require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # DynamoDB Local Secondary Indexes
        # DynamoDB_Local_Secondary_Indexes
        ##
        class LocalSecondaryIndexes < Resource


          # @!scope class
          # @attribute [w]
          # IndexName
          # The name of the local secondary index. The index name can be 3 - 255                   characters long and have no character restrictions. -- WIP 
          # @note Required: Yes
          # @see  
          property :index_name, 'IndexName'

          # @!scope class
          # @attribute [w]
          # KeySchema
          # The complete index key schema for the local secondary index, which consists of                   one or more pairs of attribute names and key types. For local secondary indexes,                   the hash key must be the same as that of the source table. -- WIP 
          # @note Required: Yes
          # @see  
          property :key_schema, 'KeySchema'

          # @!scope class
          # @attribute [w]
          # Projection
          # Attributes that are copied (projected) from the source table into the index.                   These attributes are additions to the primary key attributes and index key                   attributes, which are automatically projected. -- WIP 
          # @note Required: Yes
          # @see  
          property :projection, 'Projection'


          def initialize(*args)
            super
            type 'LocalSecondaryIndexes'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::LocalSecondaryIndexes#index_name index_name}
      # {Model::Template::Resource::LocalSecondaryIndexes#key_schema key_schema}
      # {Model::Template::Resource::LocalSecondaryIndexes#projection projection}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-lsi.html 
      # @see {Model::Template::Resource::LocalSecondaryIndexes}
      def local_secondary_indexes(name, &block)
        r = Model::Template::Resource::LocalSecondaryIndexes.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

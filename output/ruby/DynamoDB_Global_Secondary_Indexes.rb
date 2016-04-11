require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # DynamoDB Global Secondary Indexes
        # DynamoDB_Global_Secondary_Indexes
        ##
        class GlobalSecondaryIndexes < Resource


          # @!scope class
          # @attribute [w]
          # IndexName
          # The name of the global secondary index. The index name can be 3 - 255                   characters long and have no character restrictions. -- WIP 
          # @note Required: Yes
          # @see  
          property :index_name, 'IndexName'

          # @!scope class
          # @attribute [w]
          # KeySchema
          # The complete index key schema for the global secondary index, which consists of                   one or more pairs of attribute names and key types. -- WIP 
          # @note Required: Yes
          # @see  
          property :key_schema, 'KeySchema'

          # @!scope class
          # @attribute [w]
          # Projection
          # Attributes that are copied (projected) from the source table into the index.                   These attributes are in addition to the primary key attributes and index key                   attributes, which are automatically projected. -- WIP 
          # @note Required: Yes
          # @see  
          property :projection, 'Projection'

          # @!scope class
          # @attribute [w]
          # ProvisionedThroughput
          # The provisioned throughput settings for the index. -- WIP 
          # @note Required: Yes
          # @see  
          property :provisioned_throughput, 'ProvisionedThroughput'


          def initialize(*args)
            super
            type 'GlobalSecondaryIndexes'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::GlobalSecondaryIndexes#index_name index_name}
      # {Model::Template::Resource::GlobalSecondaryIndexes#key_schema key_schema}
      # {Model::Template::Resource::GlobalSecondaryIndexes#projection projection}
      # {Model::Template::Resource::GlobalSecondaryIndexes#provisioned_throughput provisioned_throughput}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html 
      # @see {Model::Template::Resource::GlobalSecondaryIndexes}
      def global_secondary_indexes(name, &block)
        r = Model::Template::Resource::GlobalSecondaryIndexes.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::DynamoDB::Table
        # AWS_DynamoDB_Table
        ##
        class DynamoDBTable < Resource


          # @!scope class
          # @attribute [w]
          # AttributeDefinitions
          # A list of AttributeName and AttributeType objects             that describe the key schema for the table and indexes. -- WIP 
          # @note Required: Yes
          # @see  
          property :attribute_definitions, 'AttributeDefinitions'

          # @!scope class
          # @attribute [w]
          # GlobalSecondaryIndexes
          # Global secondary indexes to be created on the table. You can create up to 5 global             secondary indexes. -- WIP 
          # @note Required: No
          # @see  
          property :global_secondary_indexes, 'GlobalSecondaryIndexes'

          # @!scope class
          # @attribute [w]
          # KeySchema
          # Specifies the attributes that make up the primary key for the table. The             attributes in the KeySchema property must also be defined in the               AttributeDefinitions property. -- WIP 
          # @note Required: Yes
          # @see  
          property :key_schema, 'KeySchema'

          # @!scope class
          # @attribute [w]
          # LocalSecondaryIndexes
          # Local secondary indexes to be created on the table. You can create up to 5 local             secondary indexes. Each index is scoped to a given hash key value. The size of each hash             key can be up to 10 gigabytes. -- WIP 
          # @note Required: No
          # @see  
          property :local_secondary_indexes, 'LocalSecondaryIndexes'

          # @!scope class
          # @attribute [w]
          # ProvisionedThroughput
          # Throughput for the specified table, consisting of values for ReadCapacityUnits             and WriteCapacityUnits. For more information about the contents of a Provisioned             Throughput structure, see DynamoDB Provisioned       Throughput. -- WIP 
          # @note Required: Yes
          # @see  
          property :provisioned_throughput, 'ProvisionedThroughput'

          # @!scope class
          # @attribute [w]
          # TableName
          # A name for the table. If you don't specify a name, AWS CloudFormation generates a unique             physical ID and uses that ID for the table name. For more information, see Name Type. -- WIP 
          # @note Required: No
          # @see  
          property :table_name, 'TableName'


          def initialize(*args)
            super
            type 'DynamoDBTable'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::DynamoDBTable#attribute_definitions attribute_definitions}
      # {Model::Template::Resource::DynamoDBTable#global_secondary_indexes global_secondary_indexes}
      # {Model::Template::Resource::DynamoDBTable#key_schema key_schema}
      # {Model::Template::Resource::DynamoDBTable#local_secondary_indexes local_secondary_indexes}
      # {Model::Template::Resource::DynamoDBTable#provisioned_throughput provisioned_throughput}
      # {Model::Template::Resource::DynamoDBTable#table_name table_name}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html 
      # @see {Model::Template::Resource::DynamoDBTable}
      def dynamodb_table(name, &block)
        r = Model::Template::Resource::DynamoDBTable.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

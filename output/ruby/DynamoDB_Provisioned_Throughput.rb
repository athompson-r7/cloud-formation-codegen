require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # DynamoDB Provisioned
      Throughput
        # DynamoDB_Provisioned_Throughput
        ##
        class ProvisionedThroughput < Resource


          # @!scope class
          # @attribute [w]
          # ReadCapacityUnits
          # Sets the desired minimum number of consistent reads of items (up to 1KB in                   size) per second for the specified table before Amazon DynamoDB balances the                   load. -- WIP 
          # @note Required: Yes
          # @see  
          property :read_capacity_units, 'ReadCapacityUnits'

          # @!scope class
          # @attribute [w]
          # WriteCapacityUnits
          # Sets the desired minimum number of consistent writes of items (up to 1KB in                   size) per second for the specified table before Amazon DynamoDB balances the                   load. -- WIP 
          # @note Required: Yes
          # @see  
          property :write_capacity_units, 'WriteCapacityUnits'


          def initialize(*args)
            super
            type 'ProvisionedThroughput'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::ProvisionedThroughput#read_capacity_units read_capacity_units}
      # {Model::Template::Resource::ProvisionedThroughput#write_capacity_units write_capacity_units}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html 
      # @see {Model::Template::Resource::ProvisionedThroughput}
      def provisioned_throughput(name, &block)
        r = Model::Template::Resource::ProvisionedThroughput.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

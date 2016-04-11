require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::ElastiCache::SubnetGroup 
        # AWS_ElastiCache_SubnetGroup_
        ##
        class ElastiCacheSubnetGroup < Resource


          # @!scope class
          # @attribute [w]
          # Description
          # The description for the cache subnet group. -- WIP 
          # @note Required: Yes
          # @see  
          property :description, 'Description'

          # @!scope class
          # @attribute [w]
          # SubnetIds
          # The Amazon EC2 subnet IDs for the cache subnet group. -- WIP
          # @note Required: Yes
          # @see 
          property :subnet_ids, 'SubnetIds', :array


          def initialize(*args)
            super
            type 'ElastiCacheSubnetGroup'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::ElastiCacheSubnetGroup#description description}
      # {Model::Template::Resource::ElastiCacheSubnetGroup#subnet_ids subnet_ids}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-subnetgroup.html 
      # @see {Model::Template::Resource::ElastiCacheSubnetGroup}
      def elasticache_subnetgroup_(name, &block)
        r = Model::Template::Resource::ElastiCacheSubnetGroup.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::ElastiCache::SecurityGroup
        # AWS_ElastiCache_SecurityGroup
        ##
        class ElastiCacheSecurityGroup < Resource


          # @!scope class
          # @attribute [w]
          # Description
          # A description for the cache security group. -- WIP 
          # @note Required: No
          # @see  
          property :description, 'Description'


          def initialize(*args)
            super
            type 'ElastiCacheSecurityGroup'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::ElastiCacheSecurityGroup#description description}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group.html 
      # @see {Model::Template::Resource::ElastiCacheSecurityGroup}
      def elasticache_securitygroup(name, &block)
        r = Model::Template::Resource::ElastiCacheSecurityGroup.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

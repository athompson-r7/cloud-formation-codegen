require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::ElastiCache::SecurityGroupIngress
        # AWS_ElastiCache_SecurityGroupIngress
        ##
        class ElastiCacheSecurityGroupIngress < Resource


          # @!scope class
          # @attribute [w]
          # CacheSecurityGroupName
          # The name of the Cache Security Group to authorize. -- WIP 
          # @note Required: Yes
          # @see  
          property :cache_security_group_name, 'CacheSecurityGroupName'

          # @!scope class
          # @attribute [w]
          # EC2SecurityGroupName
          # Name of the EC2 Security Group to include in the authorization. -- WIP 
          # @note Required: Yes
          # @see  
          property :ec2_security_group_name, 'EC2SecurityGroupName'

          # @!scope class
          # @attribute [w]
          # EC2SecurityGroupOwnerId
          # Specifies the AWS Account ID of the owner of the EC2 security group specified                   in the EC2SecurityGroupName property. The AWS access key ID is not an acceptable                   value. -- WIP 
          # @note Required: No
          # @see  
          property :ec2_security_group_owner_id, 'EC2SecurityGroupOwnerId'


          def initialize(*args)
            super
            type 'ElastiCacheSecurityGroupIngress'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::ElastiCacheSecurityGroupIngress#cache_security_group_name cache_security_group_name}
      # {Model::Template::Resource::ElastiCacheSecurityGroupIngress#ec2_security_group_name ec2_security_group_name}
      # {Model::Template::Resource::ElastiCacheSecurityGroupIngress#ec2_security_group_owner_id ec2_security_group_owner_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group-ingress.html 
      # @see {Model::Template::Resource::ElastiCacheSecurityGroupIngress}
      def elasticache_securitygroupingress(name, &block)
        r = Model::Template::Resource::ElastiCacheSecurityGroupIngress.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

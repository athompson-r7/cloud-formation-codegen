require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::VPC
        # AWS_EC2_VPC
        ##
        class EC2VPC < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # CidrBlock
          # The CIDR block you want the VPC to cover. For example: &quot;10.0.0.0/16&quot;. -- WIP 
          # @note Required: Yes
          # @see  
          property :cidr_block, 'CidrBlock'

          # @!scope class
          # @attribute [w]
          # EnableDnsSupport
          # Specifies whether DNS resolution is supported for the VPC. If this attribute is                      true, the Amazon DNS server resolves DNS hostnames for your                   instances to their corresponding IP addresses; otherwise, it does not. By default                   the value is set to true. -- WIP 
          # @note Required: No
          # @see  
          property :enable_dns_support, 'EnableDnsSupport'

          # @!scope class
          # @attribute [w]
          # EnableDnsHostnames
          # Specifies whether the instances launched in the VPC get DNS hostnames. If this                   attribute is true, instances in the VPC get DNS hostnames; otherwise,                   they do not. You can only set EnableDnsHostnames to true                   if you also set the EnableDnsSupport attribute to true.                   By default, the value is set to false. -- WIP 
          # @note Required: No
          # @see  
          property :enable_dns_hostnames, 'EnableDnsHostnames'

          # @!scope class
          # @attribute [w]
          # InstanceTenancy
          # The allowed tenancy of instances launched into the VPC. -- WIP 
          # @note Required: No
          # @see  
          property :instance_tenancy, 'InstanceTenancy'

          # @!scope class
          # @attribute [w]
          # Tags
          # An arbitrary set of tags (key-value pairs) for this VPC. -- WIP 
          # @note Required: No
          # @see  
          property :tags, 'Tags'

          # @!scope class
          # @attribute [w]
          # DefaultNetworkAcl
          # The default network ACL ID that is associated with the VPC. For example,                         acl-814dafe3. -- WIP 
          # @note Required: No
          # @see  
          property :default_network_acl, 'DefaultNetworkAcl'

          # @!scope class
          # @attribute [w]
          # DefaultSecurityGroup
          # The default security group ID that is associated with the VPC. For example,                         sg-b178e0d3. -- WIP 
          # @note Required: No
          # @see  
          property :default_security_group, 'DefaultSecurityGroup'


          def initialize(*args)
            super
            type 'EC2VPC'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2VPC#cidr_block cidr_block}
      # {Model::Template::Resource::EC2VPC#enable_dns_support enable_dns_support}
      # {Model::Template::Resource::EC2VPC#enable_dns_hostnames enable_dns_hostnames}
      # {Model::Template::Resource::EC2VPC#instance_tenancy instance_tenancy}
      # {Model::Template::Resource::EC2VPC#tags tags}
      # {Model::Template::Resource::EC2VPC#default_network_acl default_network_acl}
      # {Model::Template::Resource::EC2VPC#default_security_group default_security_group}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc.html 
      # @see {Model::Template::Resource::EC2VPC}
      def ec2_vpc(name, &block)
        r = Model::Template::Resource::EC2VPC.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

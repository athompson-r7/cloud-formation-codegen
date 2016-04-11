require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::Subnet
        # AWS_EC2_Subnet
        ##
        class EC2Subnet < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # AvailabilityZone
          # The availability zone in which you want the subnet. Default: AWS selects a zone                   for you (recommended). -- WIP 
          # @note Required: No
          # @see  
          property :availability_zone, 'AvailabilityZone'

          # @!scope class
          # @attribute [w]
          # CidrBlock
          # The CIDR block that you want the subnet to cover (for example,                      &quot;10.0.0.0/24&quot;). -- WIP 
          # @note Required: Yes
          # @see  
          property :cidr_block, 'CidrBlock'

          # @!scope class
          # @attribute [w]
          # MapPublicIpOnLaunch
          # Indicates whether instances that are launched in this subnet receive a public                   IP address. By default, the value is false. -- WIP 
          # @note Required: No
          # @see  
          property :map_public_ip_on_launch, 'MapPublicIpOnLaunch'

          # @!scope class
          # @attribute [w]
          # Tags
          # An arbitrary set of tags (key-value pairs) for this subnet. -- WIP 
          # @note Required: No
          # @see  
          property :tags, 'Tags'

          # @!scope class
          # @attribute [w]
          # VpcId
          # A Ref structure that contains the ID of the VPC on which you want to create the                   subnet. The VPC ID is provided as the value of the &quot;Ref&quot; property, as: {                      &quot;Ref&quot;: &quot;VPCID&quot; }. -- WIP 
          # @note Required: Yes
          # @see  
          property :vpc_id, 'VpcId'

          # @!scope class
          # @attribute [w]
          # AvailabilityZone
          # Returns the availability zone (for example, &quot;us-east-1a&quot;) of                      this subnet. -- WIP 
          # @note Required: No
          # @see  
          property :availability_zone, 'AvailabilityZone'


          def initialize(*args)
            super
            type 'EC2Subnet'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2Subnet#availability_zone availability_zone}
      # {Model::Template::Resource::EC2Subnet#cidr_block cidr_block}
      # {Model::Template::Resource::EC2Subnet#map_public_ip_on_launch map_public_ip_on_launch}
      # {Model::Template::Resource::EC2Subnet#tags tags}
      # {Model::Template::Resource::EC2Subnet#vpc_id vpc_id}
      # {Model::Template::Resource::EC2Subnet#availability_zone availability_zone}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html 
      # @see {Model::Template::Resource::EC2Subnet}
      def ec2_subnet(name, &block)
        r = Model::Template::Resource::EC2Subnet.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

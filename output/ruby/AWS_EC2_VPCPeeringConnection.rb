require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::VPCPeeringConnection
        # AWS_EC2_VPCPeeringConnection
        ##
        class EC2VPCPeeringConnection < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # PeerVpcId
          # The ID of the VPC with which you are creating the peering connection. -- WIP 
          # @note Required: Yes
          # @see  
          property :peer_vpc_id, 'PeerVpcId'

          # @!scope class
          # @attribute [w]
          # Tags
          # An arbitrary set of tags (key-value pairs) for this                         resource. -- WIP 
          # @note Required: No
          # @see  
          property :tags, 'Tags'

          # @!scope class
          # @attribute [w]
          # VpcId
          # The ID of the VPC that is requesting a peering connection. -- WIP 
          # @note Required: Yes
          # @see  
          property :vpc_id, 'VpcId'


          def initialize(*args)
            super
            type 'EC2VPCPeeringConnection'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2VPCPeeringConnection#peer_vpc_id peer_vpc_id}
      # {Model::Template::Resource::EC2VPCPeeringConnection#tags tags}
      # {Model::Template::Resource::EC2VPCPeeringConnection#vpc_id vpc_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcpeeringconnection.html 
      # @see {Model::Template::Resource::EC2VPCPeeringConnection}
      def ec2_vpcpeeringconnection(name, &block)
        r = Model::Template::Resource::EC2VPCPeeringConnection.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

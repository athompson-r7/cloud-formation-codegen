require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::VPNGatewayRoutePropagation
        # AWS_EC2_VPNGatewayRoutePropagation
        ##
        class EC2VPNGatewayRoutePropagation < Resource


          # @!scope class
          # @attribute [w]
          # VpnGatewayId
          # The ID of the virtual private gateway that is attached to a VPC. The virtual                   private gateway must be attached to the same VPC that the routing tables are                   associated with. -- WIP 
          # @note Required: Yes
          # @see  
          property :vpn_gateway_id, 'VpnGatewayId'

          # @!scope class
          # @attribute [w]
          # RouteTableIds
          # A list of routing table IDs that are associated with a VPC. The routing                   tables must be associated with the same VPC that the virtual private gateway is                   attached to. -- WIP
          # @note Required: Yes
          # @see 
          property :route_table_ids, 'RouteTableIds', :array


          def initialize(*args)
            super
            type 'EC2VPNGatewayRoutePropagation'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2VPNGatewayRoutePropagation#vpn_gateway_id vpn_gateway_id}
      # {Model::Template::Resource::EC2VPNGatewayRoutePropagation#route_table_ids route_table_ids}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gatewayrouteprop.html 
      # @see {Model::Template::Resource::EC2VPNGatewayRoutePropagation}
      def ec2_vpngatewayroutepropagation(name, &block)
        r = Model::Template::Resource::EC2VPNGatewayRoutePropagation.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

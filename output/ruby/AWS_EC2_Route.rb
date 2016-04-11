require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::Route
        # AWS_EC2_Route
        ##
        class EC2Route < Resource


          # @!scope class
          # @attribute [w]
          # DestinationCidrBlock
          # The CIDR address block used for the destination match. For example, &quot;0.0.0.0/0&quot;.                   Routing decisions are based on the most specific match. -- WIP 
          # @note Required: Yes
          # @see  
          property :destination_cidr_block, 'DestinationCidrBlock'

          # @!scope class
          # @attribute [w]
          # GatewayId
          # The ID of an Internet gateway or virtual private gateway that is attached to                   your VPC. For example: &quot;igw-eaad4883&quot;. -- WIP 
          # @note Required: Conditional. You must specify only one of the                   following properties: GatewayId, InstanceId,                      NetworkInterfaceId, or VpcPeeringConnectionId.
          # @see  
          property :gateway_id, 'GatewayId'

          # @!scope class
          # @attribute [w]
          # InstanceId
          # The ID of a NAT instance in your VPC. For example, &quot;i-1a2b3c4d&quot;. -- WIP 
          # @note Required: Conditional. You must specify only one of the                   following properties: GatewayId, InstanceId,                      NetworkInterfaceId, or VpcPeeringConnectionId.
          # @see  
          property :instance_id, 'InstanceId'

          # @!scope class
          # @attribute [w]
          # NetworkInterfaceId
          # Allows the routing of network interface IDs. -- WIP 
          # @note Required: Conditional. You must specify only one of the                   following properties: GatewayId, InstanceId,                      NetworkInterfaceId, or VpcPeeringConnectionId.
          # @see  
          property :network_interface_id, 'NetworkInterfaceId'

          # @!scope class
          # @attribute [w]
          # RouteTableId
          # The ID of the route table where the route will                   be added. -- WIP 
          # @note Required: Yes
          # @see  
          property :route_table_id, 'RouteTableId'

          # @!scope class
          # @attribute [w]
          # VpcPeeringConnectionId
          # The ID of a VPC peering connection. -- WIP 
          # @note Required: Conditional. You must specify only one of the                   following properties: GatewayId, InstanceId,                      NetworkInterfaceId, or VpcPeeringConnectionId.
          # @see  
          property :vpc_peering_connection_id, 'VpcPeeringConnectionId'


          def initialize(*args)
            super
            type 'EC2Route'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2Route#destination_cidr_block destination_cidr_block}
      # {Model::Template::Resource::EC2Route#gateway_id gateway_id}
      # {Model::Template::Resource::EC2Route#instance_id instance_id}
      # {Model::Template::Resource::EC2Route#network_interface_id network_interface_id}
      # {Model::Template::Resource::EC2Route#route_table_id route_table_id}
      # {Model::Template::Resource::EC2Route#vpc_peering_connection_id vpc_peering_connection_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html 
      # @see {Model::Template::Resource::EC2Route}
      def ec2_route(name, &block)
        r = Model::Template::Resource::EC2Route.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

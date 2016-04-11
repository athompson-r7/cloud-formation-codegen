require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::VPNConnectionRoute
        # AWS_EC2_VPNConnectionRoute
        ##
        class EC2VPNConnectionRoute < Resource


          # @!scope class
          # @attribute [w]
          # DestinationCidrBlock
          # The CIDR block that is associated with the local subnet of the customer                   network. -- WIP 
          # @note Required: Yes.
          # @see  
          property :destination_cidr_block, 'DestinationCidrBlock'

          # @!scope class
          # @attribute [w]
          # VpnConnectionId
          # The ID of the VPN connection. -- WIP 
          # @note Required: Yes.
          # @see  
          property :vpn_connection_id, 'VpnConnectionId'


          def initialize(*args)
            super
            type 'EC2VPNConnectionRoute'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2VPNConnectionRoute#destination_cidr_block destination_cidr_block}
      # {Model::Template::Resource::EC2VPNConnectionRoute#vpn_connection_id vpn_connection_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection-route.html 
      # @see {Model::Template::Resource::EC2VPNConnectionRoute}
      def ec2_vpnconnectionroute(name, &block)
        r = Model::Template::Resource::EC2VPNConnectionRoute.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

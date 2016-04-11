require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::VPNConnection
        # AWS_EC2_VPNConnection
        ##
        class EC2VPNConnection < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # Type
          # The type of VPN connection this virtual private gateway supports. -- WIP 
          # @note Required: Yes
          # @see  
          property :type, 'Type'

          # @!scope class
          # @attribute [w]
          # CustomerGatewayId
          # The ID of the customer gateway. This can either be an embedded JSON object or a                   reference to a Gateway ID. -- WIP 
          # @note Required: Yes
          # @see  
          property :customer_gateway_id, 'CustomerGatewayId'

          # @!scope class
          # @attribute [w]
          # StaticRoutesOnly
          # Indicates whether the VPN connection requires static routes. -- WIP 
          # @note Required: Conditional: If you are creating a VPN                   connection for a device that does not support Border Gateway Protocol (BGP), you                   must specify true.
          # @see  
          property :static_routes_only, 'StaticRoutesOnly'

          # @!scope class
          # @attribute [w]
          # Tags
          # The tags that you want to attach to the resource. -- WIP 
          # @note Required: No
          # @see  
          property :tags, 'Tags'

          # @!scope class
          # @attribute [w]
          # VpnGatewayId
          # The ID of the virtual private gateway. This can either be an embedded JSON                   object or a reference to a Gateway ID. -- WIP 
          # @note Required: Yes
          # @see  
          property :vpn_gateway_id, 'VpnGatewayId'


          def initialize(*args)
            super
            type 'EC2VPNConnection'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2VPNConnection#type type}
      # {Model::Template::Resource::EC2VPNConnection#customer_gateway_id customer_gateway_id}
      # {Model::Template::Resource::EC2VPNConnection#static_routes_only static_routes_only}
      # {Model::Template::Resource::EC2VPNConnection#tags tags}
      # {Model::Template::Resource::EC2VPNConnection#vpn_gateway_id vpn_gateway_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html 
      # @see {Model::Template::Resource::EC2VPNConnection}
      def ec2_vpnconnection(name, &block)
        r = Model::Template::Resource::EC2VPNConnection.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

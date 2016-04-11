require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::VPNGateway
        # AWS_EC2_VPNGateway
        ##
        class EC2VPNGateway < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # Type
          # The type of VPN connection this virtual private gateway supports. The only valid value is                &quot;ipsec.1&quot;. -- WIP 
          # @note Required: Yes
          # @see  
          property :type, 'Type'

          # @!scope class
          # @attribute [w]
          # Tags
          # An arbitrary set of tags (key-value pairs) for this resource. -- WIP 
          # @note Required: No
          # @see  
          property :tags, 'Tags'


          def initialize(*args)
            super
            type 'EC2VPNGateway'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2VPNGateway#type type}
      # {Model::Template::Resource::EC2VPNGateway#tags tags}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gateway.html 
      # @see {Model::Template::Resource::EC2VPNGateway}
      def ec2_vpngateway(name, &block)
        r = Model::Template::Resource::EC2VPNGateway.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

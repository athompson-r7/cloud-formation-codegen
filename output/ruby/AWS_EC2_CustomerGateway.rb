require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::CustomerGateway
        # AWS_EC2_CustomerGateway
        ##
        class EC2CustomerGateway < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # BgpAsn
          # The customer gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN). -- WIP 
          # @note Required: Yes
          # @see  
          property :bgp_asn, 'BgpAsn'

          # @!scope class
          # @attribute [w]
          # IpAddress
          # The internet-routable IP address for the customer gateway's outside interface. The address must be                static. -- WIP 
          # @note Required: Yes
          # @see  
          property :ip_address, 'IpAddress'

          # @!scope class
          # @attribute [w]
          # Tags
          # The tags that you want to attach to the resource. -- WIP 
          # @note Required: No
          # @see  
          property :tags, 'Tags'

          # @!scope class
          # @attribute [w]
          # Type
          # The type of VPN connection that this customer gateway supports. -- WIP 
          # @note Required: Yes
          # @see  
          property :type, 'Type'


          def initialize(*args)
            super
            type 'EC2CustomerGateway'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2CustomerGateway#bgp_asn bgp_asn}
      # {Model::Template::Resource::EC2CustomerGateway#ip_address ip_address}
      # {Model::Template::Resource::EC2CustomerGateway#tags tags}
      # {Model::Template::Resource::EC2CustomerGateway#type type}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customer-gateway.html 
      # @see {Model::Template::Resource::EC2CustomerGateway}
      def ec2_customergateway(name, &block)
        r = Model::Template::Resource::EC2CustomerGateway.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

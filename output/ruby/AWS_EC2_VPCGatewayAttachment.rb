require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::VPCGatewayAttachment
        # AWS_EC2_VPCGatewayAttachment
        ##
        class EC2VPCGatewayAttachment < Resource


          # @!scope class
          # @attribute [w]
          # InternetGatewayId
          # The ID of the Internet gateway. -- WIP 
          # @note Required: Conditional You must specify either InternetGatewayId or                VpnGatewayId, but not both.
          # @see  
          property :internet_gateway_id, 'InternetGatewayId'

          # @!scope class
          # @attribute [w]
          # VpcId
          # The ID of the VPC to associate with this gateway. -- WIP 
          # @note Required: Yes
          # @see  
          property :vpc_id, 'VpcId'

          # @!scope class
          # @attribute [w]
          # VpnGatewayId
          # The ID of the virtual private network (VPN) gateway to attach to the VPC. -- WIP 
          # @note Required: Conditional You must specify either                      InternetGatewayId or VpnGatewayId, but not both.
          # @see  
          property :vpn_gateway_id, 'VpnGatewayId'


          def initialize(*args)
            super
            type 'EC2VPCGatewayAttachment'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2VPCGatewayAttachment#internet_gateway_id internet_gateway_id}
      # {Model::Template::Resource::EC2VPCGatewayAttachment#vpc_id vpc_id}
      # {Model::Template::Resource::EC2VPCGatewayAttachment#vpn_gateway_id vpn_gateway_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-gateway-attachment.html 
      # @see {Model::Template::Resource::EC2VPCGatewayAttachment}
      def ec2_vpcgatewayattachment(name, &block)
        r = Model::Template::Resource::EC2VPCGatewayAttachment.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

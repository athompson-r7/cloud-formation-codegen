require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::VPCDHCPOptionsAssociation
        # AWS_EC2_VPCDHCPOptionsAssociation
        ##
        class EC2VPCDHCPOptionsAssociation < Resource


          # @!scope class
          # @attribute [w]
          # DhcpOptionsId
          # The ID of the DHCP options you want to associate with the VPC. Specify                      default if you want the VPC to use no DHCP options. -- WIP 
          # @note Required: Yes
          # @see  
          property :dhcp_options_id, 'DhcpOptionsId'

          # @!scope class
          # @attribute [w]
          # VpcId
          # The ID of the VPC to associate with this DHCP options set. -- WIP 
          # @note Required: Yes
          # @see  
          property :vpc_id, 'VpcId'


          def initialize(*args)
            super
            type 'EC2VPCDHCPOptionsAssociation'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2VPCDHCPOptionsAssociation#dhcp_options_id dhcp_options_id}
      # {Model::Template::Resource::EC2VPCDHCPOptionsAssociation#vpc_id vpc_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-dhcp-options-assoc.html 
      # @see {Model::Template::Resource::EC2VPCDHCPOptionsAssociation}
      def ec2_vpcdhcpoptionsassociation(name, &block)
        r = Model::Template::Resource::EC2VPCDHCPOptionsAssociation.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

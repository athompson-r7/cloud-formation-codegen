require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # EC2 Network Interface
      Private IP Specification
        # EC2_Network_Interface_Private_IP_Specification
        ##
        class NetworkInterfacePrivateIPSpecification < Resource


          # @!scope class
          # @attribute [w]
          # PrivateIpAddress
          # The private IP address of the network interface. -- WIP 
          # @note Required: Yes
          # @see  
          property :private_ip_address, 'PrivateIpAddress'

          # @!scope class
          # @attribute [w]
          # Primary
          # Sets the private IP address as the primary private address. You can set only                   one primary private IP address. If you don't specify a primary private IP address,                   Amazon EC2 automatically assigns a primary private IP address. -- WIP 
          # @note Required: Yes
          # @see  
          property :primary, 'Primary'


          def initialize(*args)
            super
            type 'NetworkInterfacePrivateIPSpecification'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::NetworkInterfacePrivateIPSpecification#private_ip_address private_ip_address}
      # {Model::Template::Resource::NetworkInterfacePrivateIPSpecification#primary primary}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-privateipspec.html 
      # @see {Model::Template::Resource::NetworkInterfacePrivateIPSpecification}
      def network_interface_private_ip_specification(name, &block)
        r = Model::Template::Resource::NetworkInterfacePrivateIPSpecification.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

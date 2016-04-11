require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # EC2 Network Interface Group Item
        # EC2_Network_Interface_Group_Item
        ##
        class NetworkInterfaceGroupItem < Resource


          # @!scope class
          # @attribute [w]
          # Key
          # ID of the security group. -- WIP 
          # @note Required: Yes
          # @see  
          property :key, 'Key'

          # @!scope class
          # @attribute [w]
          # Value
          # Name of the security group. -- WIP 
          # @note Required: Yes
          # @see  
          property :value, 'Value'


          def initialize(*args)
            super
            type 'NetworkInterfaceGroupItem'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::NetworkInterfaceGroupItem#key key}
      # {Model::Template::Resource::NetworkInterfaceGroupItem#value value}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-groupitem.html 
      # @see {Model::Template::Resource::NetworkInterfaceGroupItem}
      def network_interface_group_item(name, &block)
        r = Model::Template::Resource::NetworkInterfaceGroupItem.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

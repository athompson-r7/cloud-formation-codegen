require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # EC2 NetworkInterface Embedded
      Property Type
        # EC2_NetworkInterface_Embedded_Property_Type
        ##
        class NetworkInterfaceEmbeddedPropertyType < Resource


          # @!scope class
          # @attribute [w]
          # AssociatePublicIpAddress
          # Indicates whether the network interface receives a public IP address. You can                   associate a public IP address with a network interface only if it has a device                   index of eth0 and if it is a new network interface (not an existing                   one). In other words, if you specify true, don't specify a network interface ID.                   For more information, see Amazon EC2 Instance IP                      Addressing. -- WIP 
          # @note Required: No
          # @see  
          property :associate_public_ip_address, 'AssociatePublicIpAddress'

          # @!scope class
          # @attribute [w]
          # DeleteOnTermination
          # Whether to delete the network interface when the instance terminates. -- WIP 
          # @note Required: No
          # @see  
          property :delete_on_termination, 'DeleteOnTermination'

          # @!scope class
          # @attribute [w]
          # Description
          # The description of this network interface. -- WIP 
          # @note Required: No
          # @see  
          property :description, 'Description'

          # @!scope class
          # @attribute [w]
          # DeviceIndex
          # The network interface's position in the attachment order. -- WIP 
          # @note Required: Yes
          # @see  
          property :device_index, 'DeviceIndex'

          # @!scope class
          # @attribute [w]
          # NetworkInterfaceId
          # An existing network interface ID. -- WIP 
          # @note Required: No
          # @see  
          property :network_interface_id, 'NetworkInterfaceId'

          # @!scope class
          # @attribute [w]
          # PrivateIpAddress
          # Assigns a single private IP address to the network interface, which is used as                   the primary private IP address. If you want to specify multiple private IP                   address, use the PrivateIpAddresses property. -- WIP 
          # @note Required: No
          # @see  
          property :private_ip_address, 'PrivateIpAddress'

          # @!scope class
          # @attribute [w]
          # SecondaryPrivateIpAddressCount
          # The number of secondary private IP addresses that Amazon EC2 auto assigns to the                   network interface. Amazon EC2 uses the value of the PrivateIpAddress                   property as the primary private IP address. If you don't specify that property,                   Amazon EC2 auto assigns both the primary and secondary private IP addresses. -- WIP 
          # @note Required: No
          # @see  
          property :secondary_private_ip_address_count, 'SecondaryPrivateIpAddressCount'

          # @!scope class
          # @attribute [w]
          # SubnetId
          # The ID of the subnet to associate with the network interface. -- WIP 
          # @note Required: Conditional. If you don't specify the                      NetworkInterfaceId property, you must specify this                   property.
          # @see  
          property :subnet_id, 'SubnetId'

          # @!scope class
          # @attribute [w]
          # GroupSet
          # A list of security group IDs associated with this network interface. -- WIP
          # @note Required: No
          # @see 
          property :group_set, 'GroupSet', :array

          # @!scope class
          # @attribute [w]
          # PrivateIpAddresses
          # Assigns a list of private IP addresses to the network interface. You can                   specify a primary private IP address by setting the value of the                      Primary property to true in the                      PrivateIpAddressSpecification property. If you want Amazon EC2 to                   automatically assign private IP addresses, use the                      SecondaryPrivateIpCount property and do not specify this                   property. -- WIP
          # @note Required: No
          # @see 
          property :private_ip_addresses, 'PrivateIpAddresses', :array


          def initialize(*args)
            super
            type 'NetworkInterfaceEmbeddedPropertyType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::NetworkInterfaceEmbeddedPropertyType#associate_public_ip_address associate_public_ip_address}
      # {Model::Template::Resource::NetworkInterfaceEmbeddedPropertyType#delete_on_termination delete_on_termination}
      # {Model::Template::Resource::NetworkInterfaceEmbeddedPropertyType#description description}
      # {Model::Template::Resource::NetworkInterfaceEmbeddedPropertyType#device_index device_index}
      # {Model::Template::Resource::NetworkInterfaceEmbeddedPropertyType#network_interface_id network_interface_id}
      # {Model::Template::Resource::NetworkInterfaceEmbeddedPropertyType#private_ip_address private_ip_address}
      # {Model::Template::Resource::NetworkInterfaceEmbeddedPropertyType#secondary_private_ip_address_count secondary_private_ip_address_count}
      # {Model::Template::Resource::NetworkInterfaceEmbeddedPropertyType#subnet_id subnet_id}
      # {Model::Template::Resource::NetworkInterfaceEmbeddedPropertyType#group_set group_set}
      # {Model::Template::Resource::NetworkInterfaceEmbeddedPropertyType#private_ip_addresses private_ip_addresses}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html 
      # @see {Model::Template::Resource::NetworkInterfaceEmbeddedPropertyType}
      def networkinterface_embedded_property_type(name, &block)
        r = Model::Template::Resource::NetworkInterfaceEmbeddedPropertyType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

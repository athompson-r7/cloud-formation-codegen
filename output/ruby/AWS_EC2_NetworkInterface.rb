require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::NetworkInterface
        # AWS_EC2_NetworkInterface
        ##
        class EC2NetworkInterface < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # Description
          # The description of this network interface. -- WIP 
          # @note Required: No
          # @see  
          property :description, 'Description'

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
          # The number of secondary private IP addresses that Amazon EC2 automatically assigns                   to the network interface. Amazon EC2 uses the value of the                      PrivateIpAddress property as the primary private IP address. If                   you don't specify that property, Amazon EC2 automatically assigns both the primary and                   secondary private IP addresses. -- WIP 
          # @note Required: No
          # @see  
          property :secondary_private_ip_address_count, 'SecondaryPrivateIpAddressCount'

          # @!scope class
          # @attribute [w]
          # SourceDestCheck
          # Flag indicating whether traffic to or from the instance is validated. -- WIP 
          # @note Required: No
          # @see  
          property :source_dest_check, 'SourceDestCheck'

          # @!scope class
          # @attribute [w]
          # SubnetId
          # The ID of the subnet to associate with the network interface. -- WIP 
          # @note Required: Yes
          # @see  
          property :subnet_id, 'SubnetId'

          # @!scope class
          # @attribute [w]
          # Tags
          # An arbitrary set of tags (key-value pairs) for this network                   interface. -- WIP 
          # @note Required: No
          # @see  
          property :tags, 'Tags'

          # @!scope class
          # @attribute [w]
          # PrimaryPrivateIpAddress
          # Returns the primary private IP address of the network interface. For                      example, 10.0.0.192. -- WIP 
          # @note Required: No
          # @see  
          property :primary_private_ip_address, 'PrimaryPrivateIpAddress'

          # @!scope class
          # @attribute [w]
          # SecondaryPrivateIpAddresses
          # Returns the secondary private IP addresses of the network interface. For                      example, [&quot;10.0.0.161&quot;, &quot;10.0.0.162&quot;, &quot;10.0.0.163&quot;]. -- WIP 
          # @note Required: No
          # @see  
          property :secondary_private_ip_addresses, 'SecondaryPrivateIpAddresses'

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
          # Assigns a list of private IP addresses to the network interface. You can                   specify a primary private IP address by setting the value of the                      Primary property to true in the                      PrivateIpAddressSpecification property. If you want Amazon EC2 to                   automatically assign private IP addresses, use the                      SecondaryPrivateIpAddressCount property and do not specify this                   property. -- WIP
          # @note Required: No
          # @see 
          property :private_ip_addresses, 'PrivateIpAddresses', :array


          def initialize(*args)
            super
            type 'EC2NetworkInterface'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2NetworkInterface#description description}
      # {Model::Template::Resource::EC2NetworkInterface#private_ip_address private_ip_address}
      # {Model::Template::Resource::EC2NetworkInterface#secondary_private_ip_address_count secondary_private_ip_address_count}
      # {Model::Template::Resource::EC2NetworkInterface#source_dest_check source_dest_check}
      # {Model::Template::Resource::EC2NetworkInterface#subnet_id subnet_id}
      # {Model::Template::Resource::EC2NetworkInterface#tags tags}
      # {Model::Template::Resource::EC2NetworkInterface#primary_private_ip_address primary_private_ip_address}
      # {Model::Template::Resource::EC2NetworkInterface#secondary_private_ip_addresses secondary_private_ip_addresses}
      # {Model::Template::Resource::EC2NetworkInterface#group_set group_set}
      # {Model::Template::Resource::EC2NetworkInterface#private_ip_addresses private_ip_addresses}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html 
      # @see {Model::Template::Resource::EC2NetworkInterface}
      def ec2_networkinterface(name, &block)
        r = Model::Template::Resource::EC2NetworkInterface.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

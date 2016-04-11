require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::EIPAssociation
        # AWS_EC2_EIPAssociation
        ##
        class EC2EIPAssociation < Resource


          # @!scope class
          # @attribute [w]
          # AllocationId
          # Allocation ID for the VPC Elastic IP address you want to associate with an                   Amazon EC2 instance in your VPC. -- WIP 
          # @note Required: Conditional. Required for a VPC.
          # @see  
          property :allocation_id, 'AllocationId'

          # @!scope class
          # @attribute [w]
          # EIP
          # Elastic IP address that you want to associate with the Amazon EC2 instance specified                   by the InstanceId property. You can specify an existing Elastic IP                   address or a reference to an Elastic IP address allocated with a AWS::EC2::EIP resource. -- WIP 
          # @note Required: Conditional. Required for Elastic IP addresses                   for use in EC2-Classic.
          # @see  
          property :eip, 'EIP'

          # @!scope class
          # @attribute [w]
          # InstanceId
          # Instance ID of the Amazon EC2 instance that you want to associate with the Elastic                   IP address specified by the EIP property. -- WIP 
          # @note Required: No
          # @see  
          property :instance_id, 'InstanceId'

          # @!scope class
          # @attribute [w]
          # NetworkInterfaceId
          # The ID of the network interface to associate with the Elastic IP address (VPC                   only). -- WIP 
          # @note Required: No
          # @see  
          property :network_interface_id, 'NetworkInterfaceId'

          # @!scope class
          # @attribute [w]
          # PrivateIpAddress
          # The private IP address that you want to associate with the Elastic IP address.                   The private IP address is restricted to the primary and secondary private IP                   addresses that are associated with the network interface. By default, the private                   IP address that is associated with the EIP is the primary private IP address of                   the network interface. -- WIP 
          # @note Required: No
          # @see  
          property :private_ip_address, 'PrivateIpAddress'


          def initialize(*args)
            super
            type 'EC2EIPAssociation'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2EIPAssociation#allocation_id allocation_id}
      # {Model::Template::Resource::EC2EIPAssociation#eip eip}
      # {Model::Template::Resource::EC2EIPAssociation#instance_id instance_id}
      # {Model::Template::Resource::EC2EIPAssociation#network_interface_id network_interface_id}
      # {Model::Template::Resource::EC2EIPAssociation#private_ip_address private_ip_address}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip-association.html 
      # @see {Model::Template::Resource::EC2EIPAssociation}
      def ec2_eipassociation(name, &block)
        r = Model::Template::Resource::EC2EIPAssociation.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

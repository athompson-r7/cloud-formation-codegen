require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::NetworkInterfaceAttachment
        # AWS_EC2_NetworkInterfaceAttachment
        ##
        class EC2NetworkInterfaceAttachment < Resource


          # @!scope class
          # @attribute [w]
          # DeleteOnTermination
          # Whether to delete the network interface when the instance terminates. By                   default, this value is set to True. -- WIP 
          # @note Required: No
          # @see  
          property :delete_on_termination, 'DeleteOnTermination'

          # @!scope class
          # @attribute [w]
          # DeviceIndex
          # The network interface's position in the attachment order. For example, the                   first attached network interface has a DeviceIndex of                   0. -- WIP 
          # @note Required: Yes.
          # @see  
          property :device_index, 'DeviceIndex'

          # @!scope class
          # @attribute [w]
          # InstanceId
          # The ID of the instance to which you will attach the ENI. -- WIP 
          # @note Required: Yes.
          # @see  
          property :instance_id, 'InstanceId'

          # @!scope class
          # @attribute [w]
          # NetworkInterfaceId
          # The ID of the ENI that you want to attach. -- WIP 
          # @note Required: Yes.
          # @see  
          property :network_interface_id, 'NetworkInterfaceId'


          def initialize(*args)
            super
            type 'EC2NetworkInterfaceAttachment'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2NetworkInterfaceAttachment#delete_on_termination delete_on_termination}
      # {Model::Template::Resource::EC2NetworkInterfaceAttachment#device_index device_index}
      # {Model::Template::Resource::EC2NetworkInterfaceAttachment#instance_id instance_id}
      # {Model::Template::Resource::EC2NetworkInterfaceAttachment#network_interface_id network_interface_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface-attachment.html 
      # @see {Model::Template::Resource::EC2NetworkInterfaceAttachment}
      def ec2_networkinterfaceattachment(name, &block)
        r = Model::Template::Resource::EC2NetworkInterfaceAttachment.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

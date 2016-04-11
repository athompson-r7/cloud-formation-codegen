require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # EC2 Network Interface Attachment
        # EC2_Network_Interface_Attachment
        ##
        class NetworkInterfaceAttachment < Resource


          # @!scope class
          # @attribute [w]
          # AttachmentID
          # The ID of the network interface attachment. -- WIP 
          # @note Required: Yes
          # @see  
          property :attachment_id, 'AttachmentID'

          # @!scope class
          # @attribute [w]
          # InstanceID
          # The ID of the instance attached to the network interface. -- WIP 
          # @note Required: Yes
          # @see  
          property :instance_id, 'InstanceID'


          def initialize(*args)
            super
            type 'NetworkInterfaceAttachment'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::NetworkInterfaceAttachment#attachment_id attachment_id}
      # {Model::Template::Resource::NetworkInterfaceAttachment#instance_id instance_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-attachment.html 
      # @see {Model::Template::Resource::NetworkInterfaceAttachment}
      def network_interface_attachment(name, &block)
        r = Model::Template::Resource::NetworkInterfaceAttachment.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # EC2 Network Interface Association
        # EC2_Network_Interface_Association
        ##
        class NetworkInterfaceAssociation < Resource


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

          # @!scope class
          # @attribute [w]
          # PublicIp
          # The address of the Elastic IP address bound to the network interface. -- WIP 
          # @note Required: Yes
          # @see  
          property :public_ip, 'PublicIp'

          # @!scope class
          # @attribute [w]
          # IpOwnerId
          # The ID of the Elastic IP address owner. -- WIP 
          # @note Required: Yes
          # @see  
          property :ip_owner_id, 'IpOwnerId'


          def initialize(*args)
            super
            type 'NetworkInterfaceAssociation'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::NetworkInterfaceAssociation#attachment_id attachment_id}
      # {Model::Template::Resource::NetworkInterfaceAssociation#instance_id instance_id}
      # {Model::Template::Resource::NetworkInterfaceAssociation#public_ip public_ip}
      # {Model::Template::Resource::NetworkInterfaceAssociation#ip_owner_id ip_owner_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-association.html 
      # @see {Model::Template::Resource::NetworkInterfaceAssociation}
      def network_interface_association(name, &block)
        r = Model::Template::Resource::NetworkInterfaceAssociation.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

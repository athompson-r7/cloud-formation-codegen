require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # EC2 MountPoint Property Type
        # EC2_MountPoint_Property_Type
        ##
        class MountPointPropertyType < Resource


          # @!scope class
          # @attribute [w]
          # Device
          # How the device is exposed to the instance (such as /dev/sdh, or xvdh). -- WIP 
          # @note Required: Yes
          # @see  
          property :device, 'Device'

          # @!scope class
          # @attribute [w]
          # VolumeId
          # The ID of the Amazon EBS volume. The volume and instance must be within the same Availability Zone                and the instance must be running. -- WIP 
          # @note Required: Yes
          # @see  
          property :volume_id, 'VolumeId'


          def initialize(*args)
            super
            type 'MountPointPropertyType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::MountPointPropertyType#device device}
      # {Model::Template::Resource::MountPointPropertyType#volume_id volume_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-mount-point.html 
      # @see {Model::Template::Resource::MountPointPropertyType}
      def mountpoint_property_type(name, &block)
        r = Model::Template::Resource::MountPointPropertyType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

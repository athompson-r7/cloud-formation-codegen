require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS OpsWorks VolumeConfiguration
      Type
        # AWS_OpsWorks_VolumeConfiguration_Type
        ##
        class OpsWorksVolumeConfigurationType < Resource


          # @!scope class
          # @attribute [w]
          # Iops
          # The number of I/O operations per second (IOPS) to provision for the                   volume. -- WIP 
          # @note Required: Conditional. If you specify io1 for the volume type,                   you must specify this property.
          # @see  
          property :iops, 'Iops'

          # @!scope class
          # @attribute [w]
          # MountPoint
          # The volume mount point, such as /dev/sdh. -- WIP 
          # @note Required: Yes
          # @see  
          property :mount_point, 'MountPoint'

          # @!scope class
          # @attribute [w]
          # NumberOfDisks
          # The number of disks in the volume. -- WIP 
          # @note Required: Yes
          # @see  
          property :number_of_disks, 'NumberOfDisks'

          # @!scope class
          # @attribute [w]
          # RaidLevel
          # The volume RAID level. -- WIP 
          # @note Required: No
          # @see  
          property :raid_level, 'RaidLevel'

          # @!scope class
          # @attribute [w]
          # Size
          # The volume size. -- WIP 
          # @note Required: Yes
          # @see  
          property :size, 'Size'

          # @!scope class
          # @attribute [w]
          # VolumeType
          # The type of volume, such as magnetic or SSD. For valid values, see VolumeConfiguration in                   the AWS OpsWorks API Reference. -- WIP 
          # @note Required: No
          # @see  
          property :volume_type, 'VolumeType'


          def initialize(*args)
            super
            type 'OpsWorksVolumeConfigurationType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::OpsWorksVolumeConfigurationType#iops iops}
      # {Model::Template::Resource::OpsWorksVolumeConfigurationType#mount_point mount_point}
      # {Model::Template::Resource::OpsWorksVolumeConfigurationType#number_of_disks number_of_disks}
      # {Model::Template::Resource::OpsWorksVolumeConfigurationType#raid_level raid_level}
      # {Model::Template::Resource::OpsWorksVolumeConfigurationType#size size}
      # {Model::Template::Resource::OpsWorksVolumeConfigurationType#volume_type volume_type}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfig.html 
      # @see {Model::Template::Resource::OpsWorksVolumeConfigurationType}
      def opsworks_volumeconfiguration_type(name, &block)
        r = Model::Template::Resource::OpsWorksVolumeConfigurationType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon Elastic Block Store Block Device Property
        # Amazon_Elastic_Block_Store_Block_Device_Property
        ##
        class ElasticBlockStoreBlockDeviceProperty < Resource


          # @!scope class
          # @attribute [w]
          # DeleteOnTermination
          # Determines whether to delete the volume on instance termination. The default                   value is true. -- WIP 
          # @note Required: No
          # @see  
          property :delete_on_termination, 'DeleteOnTermination'

          # @!scope class
          # @attribute [w]
          # Encrypted
          # Indicates whether the volume is encrypted. Encrypted Amazon EBS volumes can only be                   attached to instance types that support Amazon EBS encryption. Volumes that are created                   from encrypted snapshots are automatically encrypted. You cannot create an                   encrypted volume from an unencrypted snapshot or vice versa. If your AMI uses                   encrypted volumes, you can only launch the AMI on supported instance types. For                   more information, see Amazon EBS                      encryption in the Amazon EC2 User Guide for Linux Instances. -- WIP 
          # @note Required: No
          # @see  
          property :encrypted, 'Encrypted'

          # @!scope class
          # @attribute [w]
          # Iops
          # The number of I/O operations per second (IOPS) that the volume supports. This can be an integer                from 100 - 2000. -- WIP 
          # @note Required: Conditional Required when the volume type is                      io1; not used with other volume types.
          # @see  
          property :iops, 'Iops'

          # @!scope class
          # @attribute [w]
          # SnapshotId
          # The snapshot ID of the volume to use to create a block device. -- WIP 
          # @note Required: Conditional If you specify both SnapshotId and                      VolumeSize, VolumeSize must be equal or greater than                   the size of the snapshot.
          # @see  
          property :snapshot_id, 'SnapshotId'

          # @!scope class
          # @attribute [w]
          # VolumeSize
          # The volume size, in gibibytes (GiB). This can be a number from 1 - 1024.                   If the volume type is io1, the minimum value is 10. -- WIP 
          # @note Required: Conditional If you specify both SnapshotId and                      VolumeSize, VolumeSize must be equal or greater than                   the size of the snapshot.
          # @see  
          property :volume_size, 'VolumeSize'

          # @!scope class
          # @attribute [w]
          # VolumeType
          # The volume type. You can specify standard, io1, or                      gp2. If you set the type to io1, you must also set                   the Iops property. For more information about these values                   and the default value, see CreateVolume in                   the Amazon EC2 API Reference. -- WIP 
          # @note Required: No
          # @see  
          property :volume_type, 'VolumeType'


          def initialize(*args)
            super
            type 'ElasticBlockStoreBlockDeviceProperty'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::ElasticBlockStoreBlockDeviceProperty#delete_on_termination delete_on_termination}
      # {Model::Template::Resource::ElasticBlockStoreBlockDeviceProperty#encrypted encrypted}
      # {Model::Template::Resource::ElasticBlockStoreBlockDeviceProperty#iops iops}
      # {Model::Template::Resource::ElasticBlockStoreBlockDeviceProperty#snapshot_id snapshot_id}
      # {Model::Template::Resource::ElasticBlockStoreBlockDeviceProperty#volume_size volume_size}
      # {Model::Template::Resource::ElasticBlockStoreBlockDeviceProperty#volume_type volume_type}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html 
      # @see {Model::Template::Resource::ElasticBlockStoreBlockDeviceProperty}
      def elastic_block_store_block_device_property(name, &block)
        r = Model::Template::Resource::ElasticBlockStoreBlockDeviceProperty.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

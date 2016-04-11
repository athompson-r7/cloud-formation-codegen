require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::Volume
        # AWS_EC2_Volume
        ##
        class EC2Volume < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # AvailabilityZone
          # The Availability Zone in which to create the new volume. -- WIP 
          # @note Required: Yes
          # @see  
          property :availability_zone, 'AvailabilityZone'

          # @!scope class
          # @attribute [w]
          # Encrypted
          # Indicates whether the volume is encrypted. Encrypted Amazon EBS volumes can only be                   attached to instance types that support Amazon EBS encryption. Volumes that are created                   from encrypted snapshots are automatically encrypted. You cannot create an                   encrypted volume from an unencrypted snapshot or vice versa. If your AMI uses                   encrypted volumes, you can only launch the AMI on supported instance types. For                   more information, see Amazon EBS                      encryption in the Amazon EC2 User Guide for Linux Instances. -- WIP 
          # @note Required: Conditional. If you specify the KmsKeyId property, you                   must enable encryption.
          # @see  
          property :encrypted, 'Encrypted'

          # @!scope class
          # @attribute [w]
          # Iops
          # The number of I/O operations per second (IOPS) that the volume supports. This                   can be any integer value from 1-4000. -- WIP 
          # @note Required: Conditional. Required when the volume type is                      io1; not used with other volume types.
          # @see  
          property :iops, 'Iops'

          # @!scope class
          # @attribute [w]
          # KmsKeyId
          # The Amazon Resource Name (ARN) of the AWS Key Management Service master key that is used to                   create the encrypted volume, such as                      arn:aws:kms:us-east-1:012345678910:key/abcd1234-a123-456a-a12b-a123b4cd56ef.                   If you create an encrypted volume and don't specify this property, the default                   master key is used. -- WIP 
          # @note Required: No
          # @see  
          property :kms_key_id, 'KmsKeyId'

          # @!scope class
          # @attribute [w]
          # Size
          # The size of the volume, in gibibytes (GiBs). For more information about the                   valid sizes for each volume type, see the CreateVolume                   Size parameter in the                      Amazon EC2 API Reference. -- WIP 
          # @note Required: Conditional. If you don't specify a value for the                      SnapshotId property, you must specify this property.
          # @see  
          property :size, 'Size'

          # @!scope class
          # @attribute [w]
          # SnapshotId
          # The snapshot from which to create the new volume. -- WIP 
          # @note Required: No
          # @see  
          property :snapshot_id, 'SnapshotId'

          # @!scope class
          # @attribute [w]
          # Tags
          # An arbitrary set of tags (key-value pairs) for this volume. -- WIP 
          # @note Required: No
          # @see  
          property :tags, 'Tags'

          # @!scope class
          # @attribute [w]
          # VolumeType
          # The volume type. You can specify standard, io1, or                      gp2. If you set the type to io1, you must also set                   the Iops property. For more information about these values                   and the default value, see CreateVolume in                   the Amazon EC2 API Reference. -- WIP 
          # @note Required: No
          # @see  
          property :volume_type, 'VolumeType'


          def initialize(*args)
            super
            type 'EC2Volume'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2Volume#availability_zone availability_zone}
      # {Model::Template::Resource::EC2Volume#encrypted encrypted}
      # {Model::Template::Resource::EC2Volume#iops iops}
      # {Model::Template::Resource::EC2Volume#kms_key_id kms_key_id}
      # {Model::Template::Resource::EC2Volume#size size}
      # {Model::Template::Resource::EC2Volume#snapshot_id snapshot_id}
      # {Model::Template::Resource::EC2Volume#tags tags}
      # {Model::Template::Resource::EC2Volume#volume_type volume_type}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html 
      # @see {Model::Template::Resource::EC2Volume}
      def ec2_volume(name, &block)
        r = Model::Template::Resource::EC2Volume.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

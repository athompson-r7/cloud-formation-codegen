require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS CloudFormation AutoScaling EBS Block Device Property Type
        # AWS_CloudFormation_AutoScaling_EBS_Block_Device_Property_Type
        ##
        class CloudFormationAutoScalingEBSBlockDevicePropertyType < Resource


          # @!scope class
          # @attribute [w]
          # DeleteOnTermination
          # Indicates whether to delete the volume when the instance is terminated. By                   default, Auto Scaling uses true. -- WIP 
          # @note Required: No
          # @see  
          property :delete_on_termination, 'DeleteOnTermination'

          # @!scope class
          # @attribute [w]
          # Iops
          # The number of I/O operations per second (IOPS) that the volume supports. The                   maximum ratio of IOPS to volume size is 30. -- WIP 
          # @note Required: No
          # @see  
          property :iops, 'Iops'

          # @!scope class
          # @attribute [w]
          # SnapshotId
          # The snapshot ID of the volume to use. -- WIP 
          # @note Required: Conditional If you specify both SnapshotId and                      VolumeSize, VolumeSize must be equal or greater than                   the size of the snapshot.
          # @see  
          property :snapshot_id, 'SnapshotId'

          # @!scope class
          # @attribute [w]
          # VolumeSize
          # The volume size, in Gibibytes (GiB). This can be a number from 1 - 1024.                   If the volume type is EBS optimized, the minimum value is 10. For more information                   about specifying the volume type, see EbsOptimized in AWS::AutoScaling::LaunchConfiguration. -- WIP 
          # @note Required: Conditional If you specify both SnapshotId and                      VolumeSize, VolumeSize must be equal or greater than                   the size of the snapshot.
          # @see  
          property :volume_size, 'VolumeSize'

          # @!scope class
          # @attribute [w]
          # VolumeType
          # The volume type. By default, Auto Scaling uses the standard volume type.                   For more information, see Ebs in the Auto Scaling API Reference. -- WIP 
          # @note Required: No
          # @see  
          property :volume_type, 'VolumeType'


          def initialize(*args)
            super
            type 'CloudFormationAutoScalingEBSBlockDevicePropertyType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::CloudFormationAutoScalingEBSBlockDevicePropertyType#delete_on_termination delete_on_termination}
      # {Model::Template::Resource::CloudFormationAutoScalingEBSBlockDevicePropertyType#iops iops}
      # {Model::Template::Resource::CloudFormationAutoScalingEBSBlockDevicePropertyType#snapshot_id snapshot_id}
      # {Model::Template::Resource::CloudFormationAutoScalingEBSBlockDevicePropertyType#volume_size volume_size}
      # {Model::Template::Resource::CloudFormationAutoScalingEBSBlockDevicePropertyType#volume_type volume_type}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html 
      # @see {Model::Template::Resource::CloudFormationAutoScalingEBSBlockDevicePropertyType}
      def cloudformation_autoscaling_ebs_block_device_property_type(name, &block)
        r = Model::Template::Resource::CloudFormationAutoScalingEBSBlockDevicePropertyType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

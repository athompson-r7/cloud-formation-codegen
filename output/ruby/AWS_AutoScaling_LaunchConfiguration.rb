require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::AutoScaling::LaunchConfiguration
        # AWS_AutoScaling_LaunchConfiguration
        ##
        class AutoScalingLaunchConfiguration < Resource


          # @!scope class
          # @attribute [w]
          # AssociatePublicIpAddress
          # For Amazon EC2 instances in a VPC, indicates whether instances in the Auto Scaling group                   receive public IP addresses. If you specify true, each instance in                   the Auto Scaling receives a unique public IP address. -- WIP 
          # @note Required: No
          # @see  
          property :associate_public_ip_address, 'AssociatePublicIpAddress'

          # @!scope class
          # @attribute [w]
          # ClassicLinkVPCId
          # The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances to. You                   can specify this property only for EC2-Classic instances. For more information,                   see ClassicLink in the                      Amazon Elastic Compute Cloud User                   Guide. -- WIP 
          # @note Required: No
          # @see  
          property :classic_link_vpc_id, 'ClassicLinkVPCId'

          # @!scope class
          # @attribute [w]
          # EbsOptimized
          # Specifies whether the launch configuration is optimized for EBS I/O. This                   optimization provides dedicated throughput to Amazon EBS and an optimized                   configuration stack to provide optimal EBS I/O performance. -- WIP 
          # @note Required: No If this property is not specified, &quot;false&quot; is used.
          # @see  
          property :ebs_optimized, 'EbsOptimized'

          # @!scope class
          # @attribute [w]
          # IamInstanceProfile
          # Provides the name or the Amazon Resource Name (ARN) of the instance profile                   associated with the IAM role for the instance. The instance profile contains the                   IAM role. -- WIP 
          # @note Required: No
          # @see  
          property :iam_instance_profile, 'IamInstanceProfile'

          # @!scope class
          # @attribute [w]
          # ImageId
          # Provides the unique ID of the Amazon Machine Image (AMI) that was assigned                   during registration. -- WIP 
          # @note Required: Yes
          # @see  
          property :image_id, 'ImageId'

          # @!scope class
          # @attribute [w]
          # InstanceId
          # The ID of the Amazon EC2 instance you want to use to create the launch                   configuration. Use this property if you want the launch configuration to use                   settings from an existing Amazon EC2 instance. -- WIP 
          # @note Required: No
          # @see  
          property :instance_id, 'InstanceId'

          # @!scope class
          # @attribute [w]
          # InstanceMonitoring
          # Indicates whether detailed instance monitoring is enabled for the Auto Scaling group.                   By default, this property is set to true (enabled). -- WIP 
          # @note Required: No
          # @see  
          property :instance_monitoring, 'InstanceMonitoring'

          # @!scope class
          # @attribute [w]
          # InstanceType
          # Specifies the instance type of the EC2 instance. -- WIP 
          # @note Required: Yes
          # @see  
          property :instance_type, 'InstanceType'

          # @!scope class
          # @attribute [w]
          # KernelId
          # Provides the ID of the kernel associated with the EC2 AMI. -- WIP 
          # @note Required: No
          # @see  
          property :kernel_id, 'KernelId'

          # @!scope class
          # @attribute [w]
          # KeyName
          # Provides the name of the EC2 key pair. -- WIP 
          # @note Required: No
          # @see  
          property :key_name, 'KeyName'

          # @!scope class
          # @attribute [w]
          # PlacementTenancy
          # The tenancy of the instance. An instance with a tenancy of                      dedicated runs on single-tenant hardware and can only be launched                   in a VPC. You must set the value of this parameter to dedicated if                   want to launch dedicated instances in a shared tenancy VPC (a VPC with the                   instance placement tenancy attribute set to default). For more information, see                      CreateLaunchConfiguration in the                   Auto Scaling API Reference. -- WIP 
          # @note Required: No
          # @see  
          property :placement_tenancy, 'PlacementTenancy'

          # @!scope class
          # @attribute [w]
          # RamDiskId
          # The ID of the RAM disk to select. Some kernels require additional drivers at                   launch. Check the kernel requirements for information about whether you need to                   specify a RAM disk. To find kernel requirements, refer to the AWS Resource Center                   and search for the kernel ID. -- WIP 
          # @note Required: No
          # @see  
          property :ram_disk_id, 'RamDiskId'

          # @!scope class
          # @attribute [w]
          # SpotPrice
          # The spot price for this autoscaling group. If a spot price is set, then the                   autoscaling group will launch when the current spot price is less than the amount                   specified in the template. -- WIP 
          # @note Required: No
          # @see  
          property :spot_price, 'SpotPrice'

          # @!scope class
          # @attribute [w]
          # UserData
          # The user data available to the launched EC2 instances. -- WIP 
          # @note Required: No
          # @see  
          property :user_data, 'UserData'

          # @!scope class
          # @attribute [w]
          # BlockDeviceMappings
          # Specifies how block devices are exposed to the instance. You can specify                   virtual devices and EBS volumes. -- WIP
          # @note Required: No
          # @see 
          property :block_device_mappings, 'BlockDeviceMappings', :array

          # @!scope class
          # @attribute [w]
          # ClassicLinkVPCSecurityGroups
          # The IDs of one or more security groups for the VPC that you specified in the                      ClassicLinkVPCId property. -- WIP
          # @note Required: Conditional. If you specified the ClassicLinkVPCId                   property, you must specify this property.
          # @see 
          property :classic_link_vpc_security_groups, 'ClassicLinkVPCSecurityGroups', :array

          # @!scope class
          # @attribute [w]
          # SecurityGroups
          # A list that contains the EC2 security groups to assign to the Amazon EC2                   instances in the Auto Scaling group. The list can contain the name of existing EC2                   security groups or references to AWS::EC2::SecurityGroup resources                   created in the template. If your instances are launched within VPC, specify Amazon VPC                   security group IDs. -- WIP
          # @note Required: No
          # @see 
          property :security_groups, 'SecurityGroups', :array


          def initialize(*args)
            super
            type 'AutoScalingLaunchConfiguration'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::AutoScalingLaunchConfiguration#associate_public_ip_address associate_public_ip_address}
      # {Model::Template::Resource::AutoScalingLaunchConfiguration#classic_link_vpc_id classic_link_vpc_id}
      # {Model::Template::Resource::AutoScalingLaunchConfiguration#ebs_optimized ebs_optimized}
      # {Model::Template::Resource::AutoScalingLaunchConfiguration#iam_instance_profile iam_instance_profile}
      # {Model::Template::Resource::AutoScalingLaunchConfiguration#image_id image_id}
      # {Model::Template::Resource::AutoScalingLaunchConfiguration#instance_id instance_id}
      # {Model::Template::Resource::AutoScalingLaunchConfiguration#instance_monitoring instance_monitoring}
      # {Model::Template::Resource::AutoScalingLaunchConfiguration#instance_type instance_type}
      # {Model::Template::Resource::AutoScalingLaunchConfiguration#kernel_id kernel_id}
      # {Model::Template::Resource::AutoScalingLaunchConfiguration#key_name key_name}
      # {Model::Template::Resource::AutoScalingLaunchConfiguration#placement_tenancy placement_tenancy}
      # {Model::Template::Resource::AutoScalingLaunchConfiguration#ram_disk_id ram_disk_id}
      # {Model::Template::Resource::AutoScalingLaunchConfiguration#spot_price spot_price}
      # {Model::Template::Resource::AutoScalingLaunchConfiguration#user_data user_data}
      # {Model::Template::Resource::AutoScalingLaunchConfiguration#block_device_mappings block_device_mappings}
      # {Model::Template::Resource::AutoScalingLaunchConfiguration#classic_link_vpc_security_groups classic_link_vpc_security_groups}
      # {Model::Template::Resource::AutoScalingLaunchConfiguration#security_groups security_groups}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html 
      # @see {Model::Template::Resource::AutoScalingLaunchConfiguration}
      def autoscaling_launchconfiguration(name, &block)
        r = Model::Template::Resource::AutoScalingLaunchConfiguration.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

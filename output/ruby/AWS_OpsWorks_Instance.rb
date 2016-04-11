require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::OpsWorks::Instance
        # AWS_OpsWorks_Instance
        ##
        class OpsWorksInstance < Resource


          # @!scope class
          # @attribute [w]
          # AmiId
          # The ID of the custom Amazon Machine Image (AMI) to be used to create the                   instance. The AMI should be based on one of the standard AWS OpsWorks APIs. -- WIP 
          # @note Required: No
          # @see  
          property :ami_id, 'AmiId'

          # @!scope class
          # @attribute [w]
          # Architecture
          # The instance architecture. -- WIP 
          # @note Required: No
          # @see  
          property :architecture, 'Architecture'

          # @!scope class
          # @attribute [w]
          # AutoScalingType
          # For scaling instances, the type of scaling. If you specify load-based scaling,                   do not specify a time-based scaling configuration. For valid values, see CreateInstance in the                      AWS OpsWorks API Reference. -- WIP 
          # @note Required: No
          # @see  
          property :auto_scaling_type, 'AutoScalingType'

          # @!scope class
          # @attribute [w]
          # AvailabilityZone
          # The instance Availability Zone. -- WIP 
          # @note Required: No
          # @see  
          property :availability_zone, 'AvailabilityZone'

          # @!scope class
          # @attribute [w]
          # EbsOptimized
          # Whether the instance is optimized for Amazon Elastic Block Store (Amazon EBS) I/O. If you specify an                   Amazon EBS-optimized instance type, AWS OpsWorks enables EBS optimization by default. For more                   information, see Amazon EBS-Optimized                      Instances in the Amazon EC2 User Guide for Linux Instances. -- WIP 
          # @note Required: No
          # @see  
          property :ebs_optimized, 'EbsOptimized'

          # @!scope class
          # @attribute [w]
          # InstallUpdatesOnBoot
          # Whether to install operating system and package updates when the instance                   boots. -- WIP 
          # @note Required: No
          # @see  
          property :install_updates_on_boot, 'InstallUpdatesOnBoot'

          # @!scope class
          # @attribute [w]
          # InstanceType
          # The instance type, which must be supported by AWS OpsWorks. For more information, see                      CreateInstance in the                      AWS OpsWorks API Reference. -- WIP 
          # @note Required: Yes
          # @see  
          property :instance_type, 'InstanceType'

          # @!scope class
          # @attribute [w]
          # Os
          # The instance operating system. For more information, see CreateInstance in the                      AWS OpsWorks API Reference. -- WIP 
          # @note Required: No
          # @see  
          property :os, 'Os'

          # @!scope class
          # @attribute [w]
          # RootDeviceType
          # The root device type of the instance. -- WIP 
          # @note Required: No
          # @see  
          property :root_device_type, 'RootDeviceType'

          # @!scope class
          # @attribute [w]
          # SshKeyName
          # The SSH key name of the instance. -- WIP 
          # @note Required: No
          # @see  
          property :ssh_key_name, 'SshKeyName'

          # @!scope class
          # @attribute [w]
          # StackId
          # The ID of the AWS OpsWorks stack that this instance will be associated with. -- WIP 
          # @note Required: Yes
          # @see  
          property :stack_id, 'StackId'

          # @!scope class
          # @attribute [w]
          # SubnetId
          # The ID of the instance's subnet. If the stack is running in a VPC, you can use                   this parameter to override the stack's default subnet ID value and direct AWS OpsWorks to                   launch the instance in a different subnet. -- WIP 
          # @note Required: No
          # @see  
          property :subnet_id, 'SubnetId'

          # @!scope class
          # @attribute [w]
          # TimeBasedAutoScaling
          # The time-based scaling configuration for the instance. -- WIP 
          # @note Required: No
          # @see  
          property :time_based_auto_scaling, 'TimeBasedAutoScaling'

          # @!scope class
          # @attribute [w]
          # LayerIds
          # The IDs of the AWS OpsWorks layers to associate with this instance. -- WIP
          # @note Required: Yes
          # @see 
          property :layer_ids, 'LayerIds', :array


          def initialize(*args)
            super
            type 'OpsWorksInstance'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::OpsWorksInstance#ami_id ami_id}
      # {Model::Template::Resource::OpsWorksInstance#architecture architecture}
      # {Model::Template::Resource::OpsWorksInstance#auto_scaling_type auto_scaling_type}
      # {Model::Template::Resource::OpsWorksInstance#availability_zone availability_zone}
      # {Model::Template::Resource::OpsWorksInstance#ebs_optimized ebs_optimized}
      # {Model::Template::Resource::OpsWorksInstance#install_updates_on_boot install_updates_on_boot}
      # {Model::Template::Resource::OpsWorksInstance#instance_type instance_type}
      # {Model::Template::Resource::OpsWorksInstance#os os}
      # {Model::Template::Resource::OpsWorksInstance#root_device_type root_device_type}
      # {Model::Template::Resource::OpsWorksInstance#ssh_key_name ssh_key_name}
      # {Model::Template::Resource::OpsWorksInstance#stack_id stack_id}
      # {Model::Template::Resource::OpsWorksInstance#subnet_id subnet_id}
      # {Model::Template::Resource::OpsWorksInstance#time_based_auto_scaling time_based_auto_scaling}
      # {Model::Template::Resource::OpsWorksInstance#layer_ids layer_ids}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html 
      # @see {Model::Template::Resource::OpsWorksInstance}
      def opsworks_instance(name, &block)
        r = Model::Template::Resource::OpsWorksInstance.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

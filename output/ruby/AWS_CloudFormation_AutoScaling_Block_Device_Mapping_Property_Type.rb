require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS CloudFormation AutoScaling Block Device Mapping Property Type
        # AWS_CloudFormation_AutoScaling_Block_Device_Mapping_Property_Type
        ##
        class CloudFormationAutoScalingBlockDeviceMappingPropertyType < Resource


          # @!scope class
          # @attribute [w]
          # DeviceName
          # The name of the device within Amazon EC2. -- WIP 
          # @note Required: Yes
          # @see  
          property :device_name, 'DeviceName'

          # @!scope class
          # @attribute [w]
          # Ebs
          # The Amazon Elastic Block Store volume information. -- WIP 
          # @note Required: Conditional You can specify either VirtualName or                      Ebs, but not both.
          # @see  
          property :ebs, 'Ebs'

          # @!scope class
          # @attribute [w]
          # NoDevice
          # Suppresses the device mapping. If NoDevice is set to true for the                   root device, the instance might fail the Amazon EC2 health check. Auto Scaling launches a                   replacement instance if the instance fails the health check. -- WIP 
          # @note Required: No
          # @see  
          property :no_device, 'NoDevice'

          # @!scope class
          # @attribute [w]
          # VirtualName
          # The name of the virtual device. The name must be in the form                         ephemeralX                    where X is a number starting from zero (0), for                   example, ephemeral0. -- WIP 
          # @note Required: Conditional You can specify either VirtualName or                      Ebs, but not both.
          # @see  
          property :virtual_name, 'VirtualName'


          def initialize(*args)
            super
            type 'CloudFormationAutoScalingBlockDeviceMappingPropertyType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::CloudFormationAutoScalingBlockDeviceMappingPropertyType#device_name device_name}
      # {Model::Template::Resource::CloudFormationAutoScalingBlockDeviceMappingPropertyType#ebs ebs}
      # {Model::Template::Resource::CloudFormationAutoScalingBlockDeviceMappingPropertyType#no_device no_device}
      # {Model::Template::Resource::CloudFormationAutoScalingBlockDeviceMappingPropertyType#virtual_name virtual_name}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html 
      # @see {Model::Template::Resource::CloudFormationAutoScalingBlockDeviceMappingPropertyType}
      def cloudformation_autoscaling_block_device_mapping_property_type(name, &block)
        r = Model::Template::Resource::CloudFormationAutoScalingBlockDeviceMappingPropertyType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

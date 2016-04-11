require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon EC2 Block Device Mapping Property
        # Amazon_EC2_Block_Device_Mapping_Property
        ##
        class EC2BlockDeviceMappingProperty < Resource


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
          # Required: Conditional You can specify either VirtualName or                      Ebs, but not both. -- WIP 
          # @note Required: Conditional You can specify either VirtualName or                      Ebs, but not both.
          # @see  
          property :ebs, 'Ebs'

          # @!scope class
          # @attribute [w]
          # NoDevice
          # This property can be used to unmap a defined device. -- WIP 
          # @note Required: No
          # @see  
          property :no_device, 'NoDevice'

          # @!scope class
          # @attribute [w]
          # VirtualName
          # The name of the virtual device. The name must be in the form                         ephemeralX                    where X is a number starting from zero (0); for                   example, ephemeral0. -- WIP 
          # @note Required: Conditional You can specify either VirtualName or                      Ebs, but not both.
          # @see  
          property :virtual_name, 'VirtualName'


          def initialize(*args)
            super
            type 'EC2BlockDeviceMappingProperty'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2BlockDeviceMappingProperty#device_name device_name}
      # {Model::Template::Resource::EC2BlockDeviceMappingProperty#ebs ebs}
      # {Model::Template::Resource::EC2BlockDeviceMappingProperty#no_device no_device}
      # {Model::Template::Resource::EC2BlockDeviceMappingProperty#virtual_name virtual_name}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html 
      # @see {Model::Template::Resource::EC2BlockDeviceMappingProperty}
      def ec2_block_device_mapping_property(name, &block)
        r = Model::Template::Resource::EC2BlockDeviceMappingProperty.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::VolumeAttachment
        # AWS_EC2_VolumeAttachment
        ##
        class EC2VolumeAttachment < Resource


          # @!scope class
          # @attribute [w]
          # Device
          # How the device is exposed to the instance (e.g., /dev/sdh, or xvdh). -- WIP 
          # @note Required: Yes
          # @see  
          property :device, 'Device'

          # @!scope class
          # @attribute [w]
          # InstanceId
          # The ID of the instance to which the volume attaches. This value can be a reference to an                   AWS::EC2::Instance resource, or it can be                   the physical ID of an existing EC2 instance. -- WIP 
          # @note Required: Yes
          # @see  
          property :instance_id, 'InstanceId'

          # @!scope class
          # @attribute [w]
          # VolumeId
          # The ID of the Amazon EBS volume. The volume and instance must be within the same                   Availability Zone. This value can be a reference to an AWS::EC2::Volume resource, or it can be the                   volume ID of an existing Amazon EBS volume. -- WIP 
          # @note Required: Yes
          # @see  
          property :volume_id, 'VolumeId'


          def initialize(*args)
            super
            type 'EC2VolumeAttachment'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2VolumeAttachment#device device}
      # {Model::Template::Resource::EC2VolumeAttachment#instance_id instance_id}
      # {Model::Template::Resource::EC2VolumeAttachment#volume_id volume_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volumeattachment.html 
      # @see {Model::Template::Resource::EC2VolumeAttachment}
      def ec2_volumeattachment(name, &block)
        r = Model::Template::Resource::EC2VolumeAttachment.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

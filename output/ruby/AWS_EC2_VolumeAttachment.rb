require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EC2_VolumeAttachment
        ##
        class EC2VolumeAttachment < Resource


          property :device, 'Device'
          property :instance_id, 'InstanceId'
          property :volume_id, 'VolumeId'

          def initialize(*args)
            super
            type 'AWS_EC2_VolumeAttachment'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_volumeattachment(name, &block)
        r = Model::Template::Resource::EC2VolumeAttachment.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end
require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EC2_NetworkInterfaceAttachment
        ##
        class EC2NetworkInterfaceAttachment < Resource


          property :delete_on_termination, 'DeleteOnTermination'
          property :device_index, 'DeviceIndex'
          property :instance_id, 'InstanceId'
          property :network_interface_id, 'NetworkInterfaceId'

          def initialize(*args)
            super
            type 'AWS_EC2_NetworkInterfaceAttachment'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_networkinterfaceattachment(name, &block)
        r = Model::Template::Resource::EC2NetworkInterfaceAttachment.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end
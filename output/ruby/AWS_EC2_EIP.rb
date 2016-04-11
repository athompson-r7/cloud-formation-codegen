require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::EIP
        # AWS_EC2_EIP
        ##
        class EC2EIP < Resource


          # @!scope class
          # @attribute [w]
          # InstanceId
          # The Instance ID of the Amazon EC2 instance that you want to associate with this                   Elastic IP address. -- WIP 
          # @note Required: No
          # @see  
          property :instance_id, 'InstanceId'

          # @!scope class
          # @attribute [w]
          # Domain
          # Set to vpc to allocate the address to your Virtual Private Cloud                   (VPC). No other values are supported. -- WIP 
          # @note Required: Conditional. Required when allocating an address to a VPC
          # @see  
          property :domain, 'Domain'

          # @!scope class
          # @attribute [w]
          # AllocationId
          # The ID that AWS assigns to represent the allocation of the address for use                      with Amazon VPC. This is returned only for VPC elastic IP addresses. Example                      return value: eipalloc-5723d13e -- WIP 
          # @note Required: No
          # @see  
          property :allocation_id, 'AllocationId'


          def initialize(*args)
            super
            type 'EC2EIP'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2EIP#instance_id instance_id}
      # {Model::Template::Resource::EC2EIP#domain domain}
      # {Model::Template::Resource::EC2EIP#allocation_id allocation_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip.html 
      # @see {Model::Template::Resource::EC2EIP}
      def ec2_eip(name, &block)
        r = Model::Template::Resource::EC2EIP.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

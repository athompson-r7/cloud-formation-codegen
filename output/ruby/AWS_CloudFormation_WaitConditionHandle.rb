require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::CloudFormation::WaitConditionHandle
        # AWS_CloudFormation_WaitConditionHandle
        ##
        class CloudFormationWaitConditionHandle < Resource



          def initialize(*args)
            super
            type 'CloudFormationWaitConditionHandle'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitconditionhandle.html 
      # @see {Model::Template::Resource::CloudFormationWaitConditionHandle}
      def cloudformation_waitconditionhandle(name, &block)
        r = Model::Template::Resource::CloudFormationWaitConditionHandle.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

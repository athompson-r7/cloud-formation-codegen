require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_CloudFormation_WaitConditionHandle
        ##
        class CloudFormationWaitConditionHandle < Resource



          def initialize(*args)
            super
            type 'AWS_CloudFormation_WaitConditionHandle'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def cloudformation_waitconditionhandle(name, &block)
        r = Model::Template::Resource::CloudFormationWaitConditionHandle.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end
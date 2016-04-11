require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::CloudFormation::Init
        # AWS_CloudFormation_Init
        ##
        class CloudFormationInit < Resource



          def initialize(*args)
            super
            type 'CloudFormationInit'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-init.html 
      # @see {Model::Template::Resource::CloudFormationInit}
      def cloudformation_init(name, &block)
        r = Model::Template::Resource::CloudFormationInit.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

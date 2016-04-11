require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFormation Stack Parameters Property Type
        # CloudFormation_Stack_Parameters_Property_Type
        ##
        class StackParametersPropertyType < Resource



          def initialize(*args)
            super
            type 'StackParametersPropertyType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack-parameters.html 
      # @see {Model::Template::Resource::StackParametersPropertyType}
      def stack_parameters_property_type(name, &block)
        r = Model::Template::Resource::StackParametersPropertyType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS Data Pipeline
      Parameter Objects Attributes
        # AWS_Data_Pipeline_Parameter_Objects_Attributes
        ##
        class DataPipelineParameterObjectsAttributes < Resource


          # @!scope class
          # @attribute [w]
          # Key
          # Specifies the name of a parameter attribute. To view parameter attributes, see                      Creating a Pipeline Using                      Parameterized Templates in the                   AWS Data Pipeline Developer Guide. -- WIP 
          # @note Required: Yes
          # @see  
          property :key, 'Key'

          # @!scope class
          # @attribute [w]
          # StringValue
          # A parameter attribute value. -- WIP 
          # @note Required: Conditional if the key that you are using requires it.
          # @see  
          property :string_value, 'StringValue'


          def initialize(*args)
            super
            type 'DataPipelineParameterObjectsAttributes'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::DataPipelineParameterObjectsAttributes#key key}
      # {Model::Template::Resource::DataPipelineParameterObjectsAttributes#string_value string_value}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parameterobjects-attributes.html 
      # @see {Model::Template::Resource::DataPipelineParameterObjectsAttributes}
      def data_pipeline_parameter_objects_attributes(name, &block)
        r = Model::Template::Resource::DataPipelineParameterObjectsAttributes.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

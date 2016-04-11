require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS Data Pipeline Pipeline
      ParameterValues
        # AWS_Data_Pipeline_Pipeline_ParameterValues
        ##
        class DataPipelinePipelineParameterValues < Resource


          # @!scope class
          # @attribute [w]
          # Id
          # The ID of a parameter object. -- WIP 
          # @note Required: Yes
          # @see  
          property :id, 'Id'

          # @!scope class
          # @attribute [w]
          # StringValue
          # A value to associate with the parameter object. -- WIP 
          # @note Required: Yes
          # @see  
          property :string_value, 'StringValue'


          def initialize(*args)
            super
            type 'DataPipelinePipelineParameterValues'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::DataPipelinePipelineParameterValues#id id}
      # {Model::Template::Resource::DataPipelinePipelineParameterValues#string_value string_value}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parametervalues.html 
      # @see {Model::Template::Resource::DataPipelinePipelineParameterValues}
      def data_pipeline_pipeline_parametervalues(name, &block)
        r = Model::Template::Resource::DataPipelinePipelineParameterValues.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

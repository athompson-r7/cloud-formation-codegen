require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS Data Pipeline Pipeline
      ParameterObjects
        # AWS_Data_Pipeline_Pipeline_ParameterObjects
        ##
        class DataPipelinePipelineParameterObjects < Resource


          # @!scope class
          # @attribute [w]
          # Attributes
          # Key-value pairs that define the attributes of the parameter object. -- WIP 
          # @note Required: Yes
          # @see  
          property :attributes, 'Attributes'

          # @!scope class
          # @attribute [w]
          # Id
          # The identifier of the parameter object. -- WIP 
          # @note Required: Yes
          # @see  
          property :id, 'Id'


          def initialize(*args)
            super
            type 'DataPipelinePipelineParameterObjects'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::DataPipelinePipelineParameterObjects#attributes attributes}
      # {Model::Template::Resource::DataPipelinePipelineParameterObjects#id id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parameterobjects.html 
      # @see {Model::Template::Resource::DataPipelinePipelineParameterObjects}
      def data_pipeline_pipeline_parameterobjects(name, &block)
        r = Model::Template::Resource::DataPipelinePipelineParameterObjects.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

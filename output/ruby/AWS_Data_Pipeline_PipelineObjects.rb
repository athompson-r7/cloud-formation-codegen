require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS Data Pipeline
      PipelineObjects
        # AWS_Data_Pipeline_PipelineObjects
        ##
        class DataPipelinePipelineObjects < Resource


          # @!scope class
          # @attribute [w]
          # Fields
          # Key-value pairs that define the properties of the object. -- WIP 
          # @note Required: Yes
          # @see  
          property :fields, 'Fields'

          # @!scope class
          # @attribute [w]
          # Id
          # Identifier of the object. -- WIP 
          # @note Required: Yes
          # @see  
          property :id, 'Id'

          # @!scope class
          # @attribute [w]
          # Name
          # Name of the object. -- WIP 
          # @note Required: Yes
          # @see  
          property :name, 'Name'


          def initialize(*args)
            super
            type 'DataPipelinePipelineObjects'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::DataPipelinePipelineObjects#fields fields}
      # {Model::Template::Resource::DataPipelinePipelineObjects#id id}
      # {Model::Template::Resource::DataPipelinePipelineObjects#name name}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects.html 
      # @see {Model::Template::Resource::DataPipelinePipelineObjects}
      def data_pipeline_pipelineobjects(name, &block)
        r = Model::Template::Resource::DataPipelinePipelineObjects.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

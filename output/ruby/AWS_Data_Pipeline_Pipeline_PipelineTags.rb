require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS Data Pipeline Pipeline
      PipelineTags
        # AWS_Data_Pipeline_Pipeline_PipelineTags
        ##
        class DataPipelinePipelinePipelineTags < Resource


          # @!scope class
          # @attribute [w]
          # Key
          # The key name of a tag. -- WIP 
          # @note Required: Yes
          # @see  
          property :key, 'Key'

          # @!scope class
          # @attribute [w]
          # Value
          # The value to associate with the key name. -- WIP 
          # @note Required: Yes
          # @see  
          property :value, 'Value'


          def initialize(*args)
            super
            type 'DataPipelinePipelinePipelineTags'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::DataPipelinePipelinePipelineTags#key key}
      # {Model::Template::Resource::DataPipelinePipelinePipelineTags#value value}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelinetags.html 
      # @see {Model::Template::Resource::DataPipelinePipelinePipelineTags}
      def data_pipeline_pipeline_pipelinetags(name, &block)
        r = Model::Template::Resource::DataPipelinePipelinePipelineTags.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

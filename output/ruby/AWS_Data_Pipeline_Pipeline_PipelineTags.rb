require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_Data_Pipeline_Pipeline_PipelineTags
        ##
        class DataPipelinePipelinePipelineTags < Resource


          property :key, 'Key'
          property :value, 'Value'

          def initialize(*args)
            super
            type 'AWS_Data_Pipeline_Pipeline_PipelineTags'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def data_pipeline_pipeline_pipelinetags(name, &block)
        r = Model::Template::Resource::DataPipelinePipelinePipelineTags.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end
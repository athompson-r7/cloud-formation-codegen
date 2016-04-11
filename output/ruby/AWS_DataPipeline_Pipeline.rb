require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::DataPipeline::Pipeline
        # AWS_DataPipeline_Pipeline
        ##
        class DataPipelinePipeline < Resource


          # @!scope class
          # @attribute [w]
          # Activate
          # Indicates whether to validate and start the pipeline or stop an active pipeline. By             default, the value is set to true. -- WIP 
          # @note Required: No
          # @see  
          property :activate, 'Activate'

          # @!scope class
          # @attribute [w]
          # Description
          # A description for the pipeline. -- WIP 
          # @note Required: No
          # @see  
          property :description, 'Description'

          # @!scope class
          # @attribute [w]
          # Name
          # A name for the pipeline. Because AWS CloudFormation assigns each new pipeline a unique                         identifier, you can use the same name for multiple pipelines that are                         associated with your AWS account. -- WIP 
          # @note Required: Yes
          # @see  
          property :name, 'Name'

          # @!scope class
          # @attribute [w]
          # ParameterObjects
          # Defines the variables that are in the pipeline definition. For more                         information, see Creating                             a Pipeline Using Parameterized Templates in the                             AWS Data Pipeline Developer Guide. -- WIP 
          # @note Required: No
          # @see  
          property :parameter_objects, 'ParameterObjects'

          # @!scope class
          # @attribute [w]
          # ParameterValues
          # Defines the values for the parameters that are defined in the               ParameterObjects property. For more information, see Creating a Pipeline Using Parameterized               Templates in the AWS Data Pipeline Developer Guide. -- WIP 
          # @note Required: No
          # @see  
          property :parameter_values, 'ParameterValues'

          # @!scope class
          # @attribute [w]
          # PipelineTags
          # A list of arbitrary tags (key-value pairs) to associate with the pipeline, which you                         can use to control permissions. For more information, see Controlling Access to                             Pipelines and Resources in the                             AWS Data Pipeline Developer Guide. -- WIP 
          # @note Required: No
          # @see  
          property :pipeline_tags, 'PipelineTags'

          # @!scope class
          # @attribute [w]
          # PipelineObjects
          # A list of pipeline objects that make up the pipeline. For more information about             pipeline objects and a description of each object, see Pipeline Object Reference in the               AWS Data Pipeline Developer Guide. -- WIP
          # @note Required: Yes
          # @see 
          property :pipeline_objects, 'PipelineObjects', :array


          def initialize(*args)
            super
            type 'DataPipelinePipeline'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::DataPipelinePipeline#activate activate}
      # {Model::Template::Resource::DataPipelinePipeline#description description}
      # {Model::Template::Resource::DataPipelinePipeline#name name}
      # {Model::Template::Resource::DataPipelinePipeline#parameter_objects parameter_objects}
      # {Model::Template::Resource::DataPipelinePipeline#parameter_values parameter_values}
      # {Model::Template::Resource::DataPipelinePipeline#pipeline_tags pipeline_tags}
      # {Model::Template::Resource::DataPipelinePipeline#pipeline_objects pipeline_objects}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html 
      # @see {Model::Template::Resource::DataPipelinePipeline}
      def datapipeline_pipeline(name, &block)
        r = Model::Template::Resource::DataPipelinePipeline.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

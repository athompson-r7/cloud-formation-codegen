require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS Data Pipeline
      Data Pipeline Object Fields
        # AWS_Data_Pipeline_Data_Pipeline_Object_Fields
        ##
        class DataPipelineDataPipelineObjectFields < Resource


          # @!scope class
          # @attribute [w]
          # Key
          # Specifies the name of a field for a particular object. To view fields for a                   data pipeline object, see Pipeline Object Reference in the                      AWS Data Pipeline Developer Guide. -- WIP 
          # @note Required: Yes
          # @see  
          property :key, 'Key'

          # @!scope class
          # @attribute [w]
          # RefValue
          # A field value that you specify as an identifier of another object in the same                   pipeline definition. -- WIP 
          # @note Required: Conditional if the key that you are using requires it.
          # @see  
          property :ref_value, 'RefValue'

          # @!scope class
          # @attribute [w]
          # StringValue
          # A field value that you specify as a string. To view valid values for a                   particular field, see Pipeline                      Object Reference in the AWS Data Pipeline Developer Guide. -- WIP 
          # @note Required: Conditional if the key that you are using requires it.
          # @see  
          property :string_value, 'StringValue'


          def initialize(*args)
            super
            type 'DataPipelineDataPipelineObjectFields'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::DataPipelineDataPipelineObjectFields#key key}
      # {Model::Template::Resource::DataPipelineDataPipelineObjectFields#ref_value ref_value}
      # {Model::Template::Resource::DataPipelineDataPipelineObjectFields#string_value string_value}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects-fields.html 
      # @see {Model::Template::Resource::DataPipelineDataPipelineObjectFields}
      def data_pipeline_data_pipeline_object_fields(name, &block)
        r = Model::Template::Resource::DataPipelineDataPipelineObjectFields.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

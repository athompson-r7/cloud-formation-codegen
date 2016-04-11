require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon Redshift Parameter
      Type
        # Amazon_Redshift_Parameter_Type
        ##
        class RedshiftParameterType < Resource


          # @!scope class
          # @attribute [w]
          # ParameterName
          # The name of the parameter. -- WIP 
          # @note Required: Yes
          # @see  
          property :parameter_name, 'ParameterName'

          # @!scope class
          # @attribute [w]
          # ParameterValue
          # The value of the parameter. -- WIP 
          # @note Required: Yes
          # @see  
          property :parameter_value, 'ParameterValue'


          def initialize(*args)
            super
            type 'RedshiftParameterType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::RedshiftParameterType#parameter_name parameter_name}
      # {Model::Template::Resource::RedshiftParameterType#parameter_value parameter_value}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-property-redshift-clusterparametergroup-parameter.html 
      # @see {Model::Template::Resource::RedshiftParameterType}
      def redshift_parameter_type(name, &block)
        r = Model::Template::Resource::RedshiftParameterType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudWatch Metric Dimension Property Type
        # CloudWatch_Metric_Dimension_Property_Type
        ##
        class MetricDimensionPropertyType < Resource


          # @!scope class
          # @attribute [w]
          # Name
          # The name of the dimension, from 1-255 characters in length. -- WIP 
          # @note Required: Yes
          # @see  
          property :name, 'Name'

          # @!scope class
          # @attribute [w]
          # Value
          # The value representing the dimension measurement, from 1-255 characters in length. -- WIP 
          # @note Required: Yes
          # @see  
          property :value, 'Value'


          def initialize(*args)
            super
            type 'MetricDimensionPropertyType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::MetricDimensionPropertyType#name name}
      # {Model::Template::Resource::MetricDimensionPropertyType#value value}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-dimension.html 
      # @see {Model::Template::Resource::MetricDimensionPropertyType}
      def metric_dimension_property_type(name, &block)
        r = Model::Template::Resource::MetricDimensionPropertyType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

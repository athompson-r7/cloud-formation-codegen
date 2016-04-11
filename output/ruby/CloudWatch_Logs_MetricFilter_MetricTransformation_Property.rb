require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudWatch Logs MetricFilter
      MetricTransformation Property
        # CloudWatch_Logs_MetricFilter_MetricTransformation_Property
        ##
        class LogsMetricFilterMetricTransformationProperty < Resource


          # @!scope class
          # @attribute [w]
          # MetricName
          # The name of the CloudWatch metric to which the log information will be                   published. -- WIP 
          # @note Required: Yes
          # @see  
          property :metric_name, 'MetricName'

          # @!scope class
          # @attribute [w]
          # MetricNamespace
          # The destination namespace of the CloudWatch metric. Namespaces are containers for                   metrics. For example, you can add related metrics in the same namespace. -- WIP 
          # @note Required: Yes
          # @see  
          property :metric_namespace, 'MetricNamespace'

          # @!scope class
          # @attribute [w]
          # MetricValue
          # The value that is published to the CloudWatch metric. For example, if you're counting                   the occurrences of a particular term like Error, specify                      1 for the metric value. If you're counting the number of bytes                   transferred, reference the value that is in the log event by using $                   followed by the name of the field that you specified in the filter pattern, such                   as $size. -- WIP 
          # @note Required: Yes
          # @see  
          property :metric_value, 'MetricValue'


          def initialize(*args)
            super
            type 'LogsMetricFilterMetricTransformationProperty'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::LogsMetricFilterMetricTransformationProperty#metric_name metric_name}
      # {Model::Template::Resource::LogsMetricFilterMetricTransformationProperty#metric_namespace metric_namespace}
      # {Model::Template::Resource::LogsMetricFilterMetricTransformationProperty#metric_value metric_value}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html 
      # @see {Model::Template::Resource::LogsMetricFilterMetricTransformationProperty}
      def logs_metricfilter_metrictransformation_property(name, &block)
        r = Model::Template::Resource::LogsMetricFilterMetricTransformationProperty.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

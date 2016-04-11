require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::Logs::MetricFilter
        # AWS_Logs_MetricFilter
        ##
        class LogsMetricFilter < Resource


          # @!scope class
          # @attribute [w]
          # LogGroupName
          # The name of an existing log group that you want to associate with this metric                   filter. -- WIP 
          # @note Required: Yes
          # @see  
          property :log_group_name, 'LogGroupName'

          # @!scope class
          # @attribute [w]
          # FilterPattern
          # Describes the pattern that CloudWatch Logs follows to interpret each entry in a log. For                   example, a log entry might contain fields such as timestamps, IP addresses, error                   codes, bytes transferred, and so on. You use the pattern to specify those fields                   and to specify what to look for in the log file. For example, if you're interested                   in error codes that begin with 1234, your filter pattern might be                      [timestamps, ip_addresses, error_codes = 1234*, size, ...]. -- WIP
          # @note Required: Yes
          # @see 
          property :filter_pattern, 'FilterPattern', :array

          # @!scope class
          # @attribute [w]
          # MetricTransformations
          # Describes how to transform data from a log into a CloudWatch metric. -- WIP
          # @note Required: Yes
          # @see 
          property :metric_transformations, 'MetricTransformations', :array


          def initialize(*args)
            super
            type 'LogsMetricFilter'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::LogsMetricFilter#log_group_name log_group_name}
      # {Model::Template::Resource::LogsMetricFilter#filter_pattern filter_pattern}
      # {Model::Template::Resource::LogsMetricFilter#metric_transformations metric_transformations}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-metricfilter.html 
      # @see {Model::Template::Resource::LogsMetricFilter}
      def logs_metricfilter(name, &block)
        r = Model::Template::Resource::LogsMetricFilter.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

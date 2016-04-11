require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS OpsWorks
      AutoScalingThresholds Type
        # AWS_OpsWorks_AutoScalingThresholds_Type
        ##
        class OpsWorksAutoScalingThresholdsType < Resource


          # @!scope class
          # @attribute [w]
          # CpuThreshold
          # The percentage of CPU utilization that triggers the starting or stopping of                   instances (scaling). -- WIP 
          # @note Required: No
          # @see  
          property :cpu_threshold, 'CpuThreshold'

          # @!scope class
          # @attribute [w]
          # IgnoreMetricsTime
          # The amount of time (in minutes) after a scaling event occurs that AWS OpsWorks should                   ignore metrics and not start any additional scaling events. -- WIP 
          # @note Required: No
          # @see  
          property :ignore_metrics_time, 'IgnoreMetricsTime'

          # @!scope class
          # @attribute [w]
          # InstanceCount
          # The number of instances to add or remove when the load exceeds a                   threshold. -- WIP 
          # @note Required: No
          # @see  
          property :instance_count, 'InstanceCount'

          # @!scope class
          # @attribute [w]
          # LoadThreshold
          # The degree of system load that triggers the starting or stopping of instances                   (scaling). For more information about how load is computed, see Load                      (computing). -- WIP 
          # @note Required: No
          # @see  
          property :load_threshold, 'LoadThreshold'

          # @!scope class
          # @attribute [w]
          # MemoryThreshold
          # The percentage of memory consumption that triggers the starting or stopping of                   instances (scaling). -- WIP 
          # @note Required: No
          # @see  
          property :memory_threshold, 'MemoryThreshold'

          # @!scope class
          # @attribute [w]
          # ThresholdsWaitTime
          # The amount of time, in minutes, that the load must exceed a threshold before                   instances are added or removed. -- WIP 
          # @note Required: No
          # @see  
          property :thresholds_wait_time, 'ThresholdsWaitTime'


          def initialize(*args)
            super
            type 'OpsWorksAutoScalingThresholdsType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::OpsWorksAutoScalingThresholdsType#cpu_threshold cpu_threshold}
      # {Model::Template::Resource::OpsWorksAutoScalingThresholdsType#ignore_metrics_time ignore_metrics_time}
      # {Model::Template::Resource::OpsWorksAutoScalingThresholdsType#instance_count instance_count}
      # {Model::Template::Resource::OpsWorksAutoScalingThresholdsType#load_threshold load_threshold}
      # {Model::Template::Resource::OpsWorksAutoScalingThresholdsType#memory_threshold memory_threshold}
      # {Model::Template::Resource::OpsWorksAutoScalingThresholdsType#thresholds_wait_time thresholds_wait_time}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html 
      # @see {Model::Template::Resource::OpsWorksAutoScalingThresholdsType}
      def opsworks_autoscalingthresholds_type(name, &block)
        r = Model::Template::Resource::OpsWorksAutoScalingThresholdsType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::CloudWatch::Alarm
        # AWS_CloudWatch_Alarm
        ##
        class CloudWatchAlarm < Resource


          # @!scope class
          # @attribute [w]
          # ActionsEnabled
          # Indicates whether or not actions should be executed during any changes to the                   alarm's state. -- WIP 
          # @note Required: No
          # @see  
          property :actions_enabled, 'ActionsEnabled'

          # @!scope class
          # @attribute [w]
          # AlarmDescription
          # The description for the alarm. -- WIP 
          # @note Required: No
          # @see  
          property :alarm_description, 'AlarmDescription'

          # @!scope class
          # @attribute [w]
          # AlarmName
          # A name for the alarm. If you don't specify a name, AWS CloudFormation generates a unique                   physical ID and uses that ID for the alarm name. For more information, see Name Type. -- WIP 
          # @note Required: No
          # @see  
          property :alarm_name, 'AlarmName'

          # @!scope class
          # @attribute [w]
          # ComparisonOperator
          # The arithmetic operation to use when comparing the specified Statistic and                   Threshold. The specified Statistic value is used as the first operand. -- WIP 
          # @note Required: Yes
          # @see  
          property :comparison_operator, 'ComparisonOperator'

          # @!scope class
          # @attribute [w]
          # EvaluationPeriods
          # The number of periods over which data is compared to the specified                   threshold. -- WIP 
          # @note Required: Yes
          # @see  
          property :evaluation_periods, 'EvaluationPeriods'

          # @!scope class
          # @attribute [w]
          # MetricName
          # The name for the alarm's associated metric. For more information about the                   metrics that you can specify, see Amazon CloudWatch Namespaces, Dimensions, and Metrics Reference in the                      Amazon CloudWatch Developer Guide. -- WIP 
          # @note Required: Yes
          # @see  
          property :metric_name, 'MetricName'

          # @!scope class
          # @attribute [w]
          # Namespace
          # The namespace for the alarm's associated metric. -- WIP 
          # @note Required: Yes
          # @see  
          property :namespace, 'Namespace'

          # @!scope class
          # @attribute [w]
          # Period
          # The time over which the specified statistic is applied. You must specify a time                   in seconds that is also a multiple of 60. -- WIP 
          # @note Required: Yes
          # @see  
          property :period, 'Period'

          # @!scope class
          # @attribute [w]
          # Statistic
          # The statistic to apply to the alarm's associated metric. -- WIP 
          # @note Required: Yes
          # @see  
          property :statistic, 'Statistic'

          # @!scope class
          # @attribute [w]
          # Threshold
          # The value against which the specified statistic is compared. -- WIP 
          # @note Required: Yes
          # @see  
          property :threshold, 'Threshold'

          # @!scope class
          # @attribute [w]
          # Unit
          # The unit for the alarm's associated metric. -- WIP 
          # @note Required: No
          # @see  
          property :unit, 'Unit'

          # @!scope class
          # @attribute [w]
          # AlarmActions
          # The list of actions to execute when this alarm transitions into an ALARM state                   from any other state. Each action is specified as an Amazon Resource Number (ARN).                   For more information about creating alarms and the actions you can specify, see                      Creating Amazon CloudWatch                      Alarms in the Amazon CloudWatch Developer Guide. -- WIP
          # @note Required: No
          # @see 
          property :alarm_actions, 'AlarmActions', :array

          # @!scope class
          # @attribute [w]
          # Dimensions
          # The dimensions for the alarm's associated metric. -- WIP
          # @note Required: No
          # @see 
          property :dimensions, 'Dimensions', :array

          # @!scope class
          # @attribute [w]
          # InsufficientDataActions
          # The list of actions to execute when this alarm transitions into an                   INSUFFICIENT_DATA state from any other state. Each action is specified as an                   Amazon Resource Number (ARN). Currently the only action supported is publishing to                   an Amazon SNS topic or an Amazon Auto Scaling policy. -- WIP
          # @note Required: No
          # @see 
          property :insufficient_data_actions, 'InsufficientDataActions', :array

          # @!scope class
          # @attribute [w]
          # OKActions
          # The list of actions to execute when this alarm transitions into an OK state                   from any other state. Each action is specified as an Amazon Resource Number (ARN).                   Currently the only action supported is publishing to an Amazon SNS topic or an                   Amazon Auto Scaling policy. -- WIP
          # @note Required: No
          # @see 
          property :ok_actions, 'OKActions', :array


          def initialize(*args)
            super
            type 'CloudWatchAlarm'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::CloudWatchAlarm#actions_enabled actions_enabled}
      # {Model::Template::Resource::CloudWatchAlarm#alarm_description alarm_description}
      # {Model::Template::Resource::CloudWatchAlarm#alarm_name alarm_name}
      # {Model::Template::Resource::CloudWatchAlarm#comparison_operator comparison_operator}
      # {Model::Template::Resource::CloudWatchAlarm#evaluation_periods evaluation_periods}
      # {Model::Template::Resource::CloudWatchAlarm#metric_name metric_name}
      # {Model::Template::Resource::CloudWatchAlarm#namespace namespace}
      # {Model::Template::Resource::CloudWatchAlarm#period period}
      # {Model::Template::Resource::CloudWatchAlarm#statistic statistic}
      # {Model::Template::Resource::CloudWatchAlarm#threshold threshold}
      # {Model::Template::Resource::CloudWatchAlarm#unit unit}
      # {Model::Template::Resource::CloudWatchAlarm#alarm_actions alarm_actions}
      # {Model::Template::Resource::CloudWatchAlarm#dimensions dimensions}
      # {Model::Template::Resource::CloudWatchAlarm#insufficient_data_actions insufficient_data_actions}
      # {Model::Template::Resource::CloudWatchAlarm#ok_actions ok_actions}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html 
      # @see {Model::Template::Resource::CloudWatchAlarm}
      def cloudwatch_alarm(name, &block)
        r = Model::Template::Resource::CloudWatchAlarm.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::AutoScaling::ScheduledAction
        # AWS_AutoScaling_ScheduledAction
        ##
        class AutoScalingScheduledAction < Resource


          # @!scope class
          # @attribute [w]
          # AutoScalingGroupName
          # The name or ARN of the Auto Scaling group. -- WIP 
          # @note Required: Yes
          # @see  
          property :auto_scaling_group_name, 'AutoScalingGroupName'

          # @!scope class
          # @attribute [w]
          # DesiredCapacity
          # The number of Amazon EC2 instances that should be running in the Auto Scaling group. -- WIP 
          # @note Required: No
          # @see  
          property :desired_capacity, 'DesiredCapacity'

          # @!scope class
          # @attribute [w]
          # EndTime
          # The time in UTC for this schedule to end. For example,                      2010-06-01T00:00:00Z. -- WIP 
          # @note Required: No
          # @see  
          property :end_time, 'EndTime'

          # @!scope class
          # @attribute [w]
          # MaxSize
          # The maximum number of Amazon EC2 instances in the Auto Scaling group. -- WIP 
          # @note Required: No
          # @see  
          property :max_size, 'MaxSize'

          # @!scope class
          # @attribute [w]
          # MinSize
          # The minimum number of Amazon EC2 instances in the Auto Scaling group. -- WIP 
          # @note Required: No
          # @see  
          property :min_size, 'MinSize'

          # @!scope class
          # @attribute [w]
          # Recurrence
          # The time in UTC when recurring future actions will start. You specify the start                   time by following the Unix cron syntax format. For more information about cron                   syntax, go to http://en.wikipedia.org/wiki/Cron. -- WIP 
          # @note Required: No
          # @see  
          property :recurrence, 'Recurrence'

          # @!scope class
          # @attribute [w]
          # StartTime
          # The time in UTC for this schedule to start. For example,                      2010-06-01T00:00:00Z. -- WIP 
          # @note Required: No
          # @see  
          property :start_time, 'StartTime'


          def initialize(*args)
            super
            type 'AutoScalingScheduledAction'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::AutoScalingScheduledAction#auto_scaling_group_name auto_scaling_group_name}
      # {Model::Template::Resource::AutoScalingScheduledAction#desired_capacity desired_capacity}
      # {Model::Template::Resource::AutoScalingScheduledAction#end_time end_time}
      # {Model::Template::Resource::AutoScalingScheduledAction#max_size max_size}
      # {Model::Template::Resource::AutoScalingScheduledAction#min_size min_size}
      # {Model::Template::Resource::AutoScalingScheduledAction#recurrence recurrence}
      # {Model::Template::Resource::AutoScalingScheduledAction#start_time start_time}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-scheduledaction.html 
      # @see {Model::Template::Resource::AutoScalingScheduledAction}
      def autoscaling_scheduledaction(name, &block)
        r = Model::Template::Resource::AutoScalingScheduledAction.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::AutoScaling::LifecycleHook
        # AWS_AutoScaling_LifecycleHook
        ##
        class AutoScalingLifecycleHook < Resource


          # @!scope class
          # @attribute [w]
          # AutoScalingGroupName
          # The name of the Auto Scaling group for the lifecycle hook. -- WIP 
          # @note Required: Yes
          # @see  
          property :auto_scaling_group_name, 'AutoScalingGroupName'

          # @!scope class
          # @attribute [w]
          # DefaultResult
          # The action the Auto Scaling group takes when the lifecycle hook timeout elapses or if                   an unexpected failure occurs. -- WIP 
          # @note Required: No
          # @see  
          property :default_result, 'DefaultResult'

          # @!scope class
          # @attribute [w]
          # HeartbeatTimeout
          # The amount of time that can elapse before the lifecycle hook times out. When                   the lifecycle hook times out, Auto Scaling performs the action that you specified in the                   DefaultResult property. -- WIP 
          # @note Required: No
          # @see  
          property :heartbeat_timeout, 'HeartbeatTimeout'

          # @!scope class
          # @attribute [w]
          # LifecycleTransition
          # The state of the Amazon EC2 instance to which you want to attach the lifecycle                   hook. -- WIP 
          # @note Required: Yes
          # @see  
          property :lifecycle_transition, 'LifecycleTransition'

          # @!scope class
          # @attribute [w]
          # NotificationMetadata
          # Additional information that you want to include when Auto Scaling sends a message to                   the notification target. -- WIP 
          # @note Required: No
          # @see  
          property :notification_metadata, 'NotificationMetadata'

          # @!scope class
          # @attribute [w]
          # NotificationTargetARN
          # The Amazon resource name (ARN) of the notification target that Auto Scaling uses to                   notify you when an instance is in the transition state for the lifecycle hook. You                   can specify an Amazon SQS queue or an Amazon SNS topic. The notification message includes                   the following information: lifecycle action token, user account ID, Auto Scaling group                   name, lifecycle hook name, instance ID, lifecycle transition, and notification                   metadata. -- WIP 
          # @note Required: Yes
          # @see  
          property :notification_target_arn, 'NotificationTargetARN'

          # @!scope class
          # @attribute [w]
          # RoleARN
          # The ARN of the IAM role that allows the Auto Scaling group to publish to the                   specified notification target. The role requires permissions to Amazon SNS and                   Amazon SQS. -- WIP 
          # @note Required: Yes
          # @see  
          property :role_arn, 'RoleARN'


          def initialize(*args)
            super
            type 'AutoScalingLifecycleHook'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::AutoScalingLifecycleHook#auto_scaling_group_name auto_scaling_group_name}
      # {Model::Template::Resource::AutoScalingLifecycleHook#default_result default_result}
      # {Model::Template::Resource::AutoScalingLifecycleHook#heartbeat_timeout heartbeat_timeout}
      # {Model::Template::Resource::AutoScalingLifecycleHook#lifecycle_transition lifecycle_transition}
      # {Model::Template::Resource::AutoScalingLifecycleHook#notification_metadata notification_metadata}
      # {Model::Template::Resource::AutoScalingLifecycleHook#notification_target_arn notification_target_arn}
      # {Model::Template::Resource::AutoScalingLifecycleHook#role_arn role_arn}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html 
      # @see {Model::Template::Resource::AutoScalingLifecycleHook}
      def autoscaling_lifecyclehook(name, &block)
        r = Model::Template::Resource::AutoScalingLifecycleHook.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

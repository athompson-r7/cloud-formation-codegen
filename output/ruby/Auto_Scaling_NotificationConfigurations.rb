require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Auto Scaling
      NotificationConfigurations
        # Auto_Scaling_NotificationConfigurations
        ##
        class ScalingNotificationConfigurations < Resource


          # @!scope class
          # @attribute [w]
          # TopicARN
          # The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS)                   topic. -- WIP 
          # @note Required: Yes
          # @see  
          property :topic_arn, 'TopicARN'

          # @!scope class
          # @attribute [w]
          # NotificationTypes
          # A list of event types that trigger a notification. Event types can include any                   of the following types: autoscaling:EC2_INSTANCE_LAUNCH,                      autoscaling:EC2_INSTANCE_LAUNCH_ERROR,                      autoscaling:EC2_INSTANCE_TERMINATE,                      autoscaling:EC2_INSTANCE_TERMINATE_ERROR, and                      autoscaling:TEST_NOTIFICATION. For more information about event                   types, see DescribeAutoScalingNotificationTypes in the                      Auto Scaling API Reference. -- WIP
          # @note Required: Yes
          # @see 
          property :notification_types, 'NotificationTypes', :array


          def initialize(*args)
            super
            type 'ScalingNotificationConfigurations'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::ScalingNotificationConfigurations#topic_arn topic_arn}
      # {Model::Template::Resource::ScalingNotificationConfigurations#notification_types notification_types}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html 
      # @see {Model::Template::Resource::ScalingNotificationConfigurations}
      def scaling_notificationconfigurations(name, &block)
        r = Model::Template::Resource::ScalingNotificationConfigurations.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

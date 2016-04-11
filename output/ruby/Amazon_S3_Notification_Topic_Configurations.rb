require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon S3 Notification Topic
      Configurations
        # Amazon_S3_Notification_Topic_Configurations
        ##
        class S3NotificationTopicConfigurations < Resource


          # @!scope class
          # @attribute [w]
          # Event
          # The Amazon S3 bucket event about which to send notifications. For more information,                   see Supported Event Types in the                   Amazon Simple Storage Service Developer Guide. -- WIP 
          # @note Required: Yes
          # @see  
          property :event, 'Event'

          # @!scope class
          # @attribute [w]
          # Topic
          # The Amazon SNS topic to which Amazon S3 reports the specified events. -- WIP 
          # @note Required: Yes
          # @see  
          property :topic, 'Topic'


          def initialize(*args)
            super
            type 'S3NotificationTopicConfigurations'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::S3NotificationTopicConfigurations#event event}
      # {Model::Template::Resource::S3NotificationTopicConfigurations#topic topic}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig-topicconfig.html 
      # @see {Model::Template::Resource::S3NotificationTopicConfigurations}
      def s3_notification_topic_configurations(name, &block)
        r = Model::Template::Resource::S3NotificationTopicConfigurations.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon S3 Notification
      Configuration
        # Amazon_S3_Notification_Configuration
        ##
        class S3NotificationConfiguration < Resource


          # @!scope class
          # @attribute [w]
          # TopicConfigurations
          # The topic to which notifications are sent and the events for which notification                   are generated. -- WIP 
          # @note Required: Yes
          # @see  
          property :topic_configurations, 'TopicConfigurations'


          def initialize(*args)
            super
            type 'S3NotificationConfiguration'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::S3NotificationConfiguration#topic_configurations topic_configurations}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig.html 
      # @see {Model::Template::Resource::S3NotificationConfiguration}
      def s3_notification_configuration(name, &block)
        r = Model::Template::Resource::S3NotificationConfiguration.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

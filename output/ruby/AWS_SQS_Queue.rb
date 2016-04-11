require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::SQS::Queue
        # AWS_SQS_Queue
        ##
        class SQSQueue < Resource


          # @!scope class
          # @attribute [w]
          # DelaySeconds
          # The time in seconds that the delivery of all messages in the queue will be delayed.             You can specify an integer value of 0 to 900 (15 minutes). The             default value is 0. -- WIP 
          # @note Required: No
          # @see  
          property :delay_seconds, 'DelaySeconds'

          # @!scope class
          # @attribute [w]
          # MaximumMessageSize
          # The limit of how many bytes a message can contain before Amazon SQS rejects it.  You can             specify an integer value from 1024 bytes (1 KiB) to 262144             bytes (256 KiB). The default value is 262144 (256 KiB). -- WIP 
          # @note Required: No
          # @see  
          property :maximum_message_size, 'MaximumMessageSize'

          # @!scope class
          # @attribute [w]
          # MessageRetentionPeriod
          # The number of seconds Amazon SQS retains a message. You can specify an integer value from               60 seconds (1 minute) to 1209600 seconds (14 days). The             default value is 345600 seconds (4 days). -- WIP 
          # @note Required: No
          # @see  
          property :message_retention_period, 'MessageRetentionPeriod'

          # @!scope class
          # @attribute [w]
          # QueueName
          # A name for the queue. If you don't specify a name, AWS CloudFormation generates a unique physical             ID and uses that ID for the queue name. For more information, see Name Type. -- WIP 
          # @note Required: No
          # @see  
          property :queue_name, 'QueueName'

          # @!scope class
          # @attribute [w]
          # ReceiveMessageWaitTimeSeconds
          # Specifies the duration, in seconds, that the ReceiveMessage action call             waits until a message is in the queue in order to include it in the response, as opposed             to returning an empty response if a message is not yet available. You can specify an             integer from 1 to 20. The short polling is used as the default             or when you specify 0 for this property. For more information, see Amazon SQS Long Poll. -- WIP 
          # @note Required: No
          # @see  
          property :receive_message_wait_time_seconds, 'ReceiveMessageWaitTimeSeconds'

          # @!scope class
          # @attribute [w]
          # RedrivePolicy
          # Specifies an existing dead letter queue to receive messages after the source queue             (this queue) fails to process a message a specified number of times. -- WIP 
          # @note Required: No
          # @see  
          property :redrive_policy, 'RedrivePolicy'

          # @!scope class
          # @attribute [w]
          # VisibilityTimeout
          # The length of time during which the queue will be unavailable once a message is delivered from the                   queue. This blocks other components from receiving the same message and gives the initial component                   time to process and delete the message from the queue. -- WIP 
          # @note Required: No
          # @see  
          property :visibility_timeout, 'VisibilityTimeout'

          # @!scope class
          # @attribute [w]
          # Arn
          # Returns the Amazon Resource Name (ARN) of the queue. For example:                      arn:aws:sqs:us-east-1:123456789012:mystack-myqueue-15PG5C2FC1CW8 -- WIP 
          # @note Required: No
          # @see  
          property :arn, 'Arn'

          # @!scope class
          # @attribute [w]
          # QueueName
          # Returns the queue name. For example: -- WIP 
          # @note Required: No
          # @see  
          property :queue_name, 'QueueName'


          def initialize(*args)
            super
            type 'SQSQueue'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::SQSQueue#delay_seconds delay_seconds}
      # {Model::Template::Resource::SQSQueue#maximum_message_size maximum_message_size}
      # {Model::Template::Resource::SQSQueue#message_retention_period message_retention_period}
      # {Model::Template::Resource::SQSQueue#queue_name queue_name}
      # {Model::Template::Resource::SQSQueue#receive_message_wait_time_seconds receive_message_wait_time_seconds}
      # {Model::Template::Resource::SQSQueue#redrive_policy redrive_policy}
      # {Model::Template::Resource::SQSQueue#visibility_timeout visibility_timeout}
      # {Model::Template::Resource::SQSQueue#arn arn}
      # {Model::Template::Resource::SQSQueue#queue_name queue_name}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html 
      # @see {Model::Template::Resource::SQSQueue}
      def sqs_queue(name, &block)
        r = Model::Template::Resource::SQSQueue.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

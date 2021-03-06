require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_SQS_Queue
        ##
        class SQSQueue < Resource


          property :delay_seconds, 'DelaySeconds'
          property :maximum_message_size, 'MaximumMessageSize'
          property :message_retention_period, 'MessageRetentionPeriod'
          property :queue_name, 'QueueName'
          property :receive_message_wait_time_seconds, 'ReceiveMessageWaitTimeSeconds'
          property :redrive_policy, 'RedrivePolicy'
          property :visibility_timeout, 'VisibilityTimeout'
          property :arn, 'Arn'
          property :queue_name, 'QueueName'

          def initialize(*args)
            super
            type 'AWS_SQS_Queue'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def sqs_queue(name, &block)
        r = Model::Template::Resource::SQSQueue.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end
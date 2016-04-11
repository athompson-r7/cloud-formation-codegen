require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon SQS RedrivePolicy
        # Amazon_SQS_RedrivePolicy
        ##
        class SQSRedrivePolicy < Resource


          # @!scope class
          # @attribute [w]
          # deadLetterTargetArn
          # The Amazon Resource Name (ARN) of the dead letter queue to which the messages are             sent to after the maxReceiveCount value has been exceeded. -- WIP 
          # @note Required: No
          # @see  
          property :dead_letter_target_arn, 'deadLetterTargetArn'

          # @!scope class
          # @attribute [w]
          # maxReceiveCount
          # The number of times a message is delivered to the source queue before being sent to             the dead letter queue. -- WIP 
          # @note Required: No
          # @see  
          property :max_receive_count, 'maxReceiveCount'


          def initialize(*args)
            super
            type 'SQSRedrivePolicy'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::SQSRedrivePolicy#dead_letter_target_arn dead_letter_target_arn}
      # {Model::Template::Resource::SQSRedrivePolicy#max_receive_count max_receive_count}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues-redrivepolicy.html 
      # @see {Model::Template::Resource::SQSRedrivePolicy}
      def sqs_redrivepolicy(name, &block)
        r = Model::Template::Resource::SQSRedrivePolicy.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

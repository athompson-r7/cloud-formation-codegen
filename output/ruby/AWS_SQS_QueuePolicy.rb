require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::SQS::QueuePolicy
        # AWS_SQS_QueuePolicy
        ##
        class SQSQueuePolicy < Resource


          # @!scope class
          # @attribute [w]
          # PolicyDocument
          # A policy document containing permissions to add to the specified SQS queues. -- WIP 
          # @note Required: Yes
          # @see  
          property :policy_document, 'PolicyDocument'

          # @!scope class
          # @attribute [w]
          # Queues
          # The URLs of the queues to which you want to add the policy. You can use the Ref function to specify an AWS::SQS::Queue resource. -- WIP
          # @note Required: Yes
          # @see 
          property :queues, 'Queues', :array


          def initialize(*args)
            super
            type 'SQSQueuePolicy'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::SQSQueuePolicy#policy_document policy_document}
      # {Model::Template::Resource::SQSQueuePolicy#queues queues}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html 
      # @see {Model::Template::Resource::SQSQueuePolicy}
      def sqs_queuepolicy(name, &block)
        r = Model::Template::Resource::SQSQueuePolicy.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

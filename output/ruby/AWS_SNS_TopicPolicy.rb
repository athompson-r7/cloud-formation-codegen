require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::SNS::TopicPolicy
        # AWS_SNS_TopicPolicy
        ##
        class SNSTopicPolicy < Resource


          # @!scope class
          # @attribute [w]
          # PolicyDocument
          # A policy document that contains permissions to add to the specified SNS             topics. -- WIP 
          # @note Required: Yes
          # @see  
          property :policy_document, 'PolicyDocument'

          # @!scope class
          # @attribute [w]
          # Topics
          # The Amazon Resource Names (ARN) of the topics to which you want to add the policy.             You can use the Ref function to             specify an AWS::SNS::Topic             resource. -- WIP
          # @note Required: Yes
          # @see 
          property :topics, 'Topics', :array


          def initialize(*args)
            super
            type 'SNSTopicPolicy'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::SNSTopicPolicy#policy_document policy_document}
      # {Model::Template::Resource::SNSTopicPolicy#topics topics}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html 
      # @see {Model::Template::Resource::SNSTopicPolicy}
      def sns_topicpolicy(name, &block)
        r = Model::Template::Resource::SNSTopicPolicy.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

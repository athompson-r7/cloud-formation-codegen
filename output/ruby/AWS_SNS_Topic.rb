require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::SNS::Topic
        # AWS_SNS_Topic
        ##
        class SNSTopic < Resource


          # @!scope class
          # @attribute [w]
          # DisplayName
          # A developer-defined string that can be used to identify this SNS topic. -- WIP 
          # @note Required: No
          # @see  
          property :display_name, 'DisplayName'

          # @!scope class
          # @attribute [w]
          # TopicName
          # A name for the topic. If you don't specify a name, AWS CloudFormation generates a unique                   physical ID and uses that ID for the topic name. For more information, see Name Type. -- WIP 
          # @note Required: No
          # @see  
          property :topic_name, 'TopicName'

          # @!scope class
          # @attribute [w]
          # TopicName
          # Returns the name for an Amazon SNS topic. -- WIP 
          # @note Required: No
          # @see  
          property :topic_name, 'TopicName'

          # @!scope class
          # @attribute [w]
          # Subscription
          # The SNS subscriptions (endpoints) for this topic. -- WIP
          # @note Required: No
          # @see 
          property :subscription, 'Subscription', :array


          def initialize(*args)
            super
            type 'SNSTopic'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::SNSTopic#display_name display_name}
      # {Model::Template::Resource::SNSTopic#topic_name topic_name}
      # {Model::Template::Resource::SNSTopic#topic_name topic_name}
      # {Model::Template::Resource::SNSTopic#subscription subscription}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html 
      # @see {Model::Template::Resource::SNSTopic}
      def sns_topic(name, &block)
        r = Model::Template::Resource::SNSTopic.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

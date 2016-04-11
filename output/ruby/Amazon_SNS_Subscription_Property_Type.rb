require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon SNS Subscription Property Type
        # Amazon_SNS_Subscription_Property_Type
        ##
        class SNSSubscriptionPropertyType < Resource


          # @!scope class
          # @attribute [w]
          # Endpoint
          # The subscription's endpoint (format depends on the protocol). For more                   information, see the Subscribe                      Endpoint parameter in the                   Amazon Simple Notification Service API Reference. -- WIP 
          # @note Required: Yes
          # @see  
          property :endpoint, 'Endpoint'

          # @!scope class
          # @attribute [w]
          # Protocol
          # The subscription's protocol. For more information, see the Subscribe Protocol parameter in                   the Amazon Simple Notification Service API Reference. -- WIP 
          # @note Required: Yes
          # @see  
          property :protocol, 'Protocol'


          def initialize(*args)
            super
            type 'SNSSubscriptionPropertyType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::SNSSubscriptionPropertyType#endpoint endpoint}
      # {Model::Template::Resource::SNSSubscriptionPropertyType#protocol protocol}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-subscription.html 
      # @see {Model::Template::Resource::SNSSubscriptionPropertyType}
      def sns_subscription_property_type(name, &block)
        r = Model::Template::Resource::SNSSubscriptionPropertyType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

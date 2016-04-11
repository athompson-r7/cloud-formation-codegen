require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # ElasticLoadBalancing LBCookieStickinessPolicy Type
        # ElasticLoadBalancing_LBCookieStickinessPolicy_Type
        ##
        class LBCookieStickinessPolicyType < Resource


          # @!scope class
          # @attribute [w]
          # CookieExpirationPeriod
          # The time period, in seconds, after which the cookie should be considered stale. If this parameter                   isn't specified, the sticky session will last for the duration of the browser session. -- WIP 
          # @note Required: No
          # @see  
          property :cookie_expiration_period, 'CookieExpirationPeriod'

          # @!scope class
          # @attribute [w]
          # PolicyName
          # The name of the policy being created. The name must be unique within the set of                   policies for this load balancer. -- WIP 
          # @note Required: No
          # @see  
          property :policy_name, 'PolicyName'


          def initialize(*args)
            super
            type 'LBCookieStickinessPolicyType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::LBCookieStickinessPolicyType#cookie_expiration_period cookie_expiration_period}
      # {Model::Template::Resource::LBCookieStickinessPolicyType#policy_name policy_name}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-LBCookieStickinessPolicy.html 
      # @see {Model::Template::Resource::LBCookieStickinessPolicyType}
      def lbcookiestickinesspolicy_type(name, &block)
        r = Model::Template::Resource::LBCookieStickinessPolicyType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

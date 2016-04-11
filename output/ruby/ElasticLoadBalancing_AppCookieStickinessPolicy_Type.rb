require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # ElasticLoadBalancing AppCookieStickinessPolicy Type
        # ElasticLoadBalancing_AppCookieStickinessPolicy_Type
        ##
        class AppCookieStickinessPolicyType < Resource


          # @!scope class
          # @attribute [w]
          # CookieName
          # Name of the application cookie used for stickiness. -- WIP 
          # @note Required: Yes
          # @see  
          property :cookie_name, 'CookieName'

          # @!scope class
          # @attribute [w]
          # PolicyName
          # The name of the policy being created. The name must be unique within the set of                   policies for this Load Balancer. -- WIP 
          # @note Required: Yes
          # @see  
          property :policy_name, 'PolicyName'


          def initialize(*args)
            super
            type 'AppCookieStickinessPolicyType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::AppCookieStickinessPolicyType#cookie_name cookie_name}
      # {Model::Template::Resource::AppCookieStickinessPolicyType#policy_name policy_name}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-AppCookieStickinessPolicy.html 
      # @see {Model::Template::Resource::AppCookieStickinessPolicyType}
      def appcookiestickinesspolicy_type(name, &block)
        r = Model::Template::Resource::AppCookieStickinessPolicyType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

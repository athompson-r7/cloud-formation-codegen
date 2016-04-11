require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon S3 Website Configuration
      Routing Rules Property
        # Amazon_S3_Website_Configuration_Routing_Rules_Property
        ##
        class S3WebsiteConfigurationRoutingRulesProperty < Resource


          # @!scope class
          # @attribute [w]
          # RedirectRule
          # Redirect requests to another host, to another page, or with another                   protocol. -- WIP 
          # @note Required: Yes
          # @see  
          property :redirect_rule, 'RedirectRule'

          # @!scope class
          # @attribute [w]
          # RoutingRuleCondition
          # Rules that define when a redirect is applied. -- WIP 
          # @note Required: No
          # @see  
          property :routing_rule_condition, 'RoutingRuleCondition'


          def initialize(*args)
            super
            type 'S3WebsiteConfigurationRoutingRulesProperty'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::S3WebsiteConfigurationRoutingRulesProperty#redirect_rule redirect_rule}
      # {Model::Template::Resource::S3WebsiteConfigurationRoutingRulesProperty#routing_rule_condition routing_rule_condition}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html 
      # @see {Model::Template::Resource::S3WebsiteConfigurationRoutingRulesProperty}
      def s3_website_configuration_routing_rules_property(name, &block)
        r = Model::Template::Resource::S3WebsiteConfigurationRoutingRulesProperty.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon S3
      Website Configuration Routing Rules Routing Rule Condition Property
        # Amazon_S3_Website_Configuration_Routing_Rules_Routing_Rule_Condition_Property
        ##
        class S3WebsiteConfigurationRoutingRulesRoutingRuleConditionProperty < Resource


          # @!scope class
          # @attribute [w]
          # HttpErrorCodeReturnedEquals
          # Applies this redirect if the error code equals this value in the event of an                   error. -- WIP 
          # @note Required: Conditional. You must specify at least one condition                   property.
          # @see  
          property :http_error_code_returned_equals, 'HttpErrorCodeReturnedEquals'

          # @!scope class
          # @attribute [w]
          # KeyPrefixEquals
          # The object key name prefix when the redirect is applied. For example, to                   redirect requests for ExamplePage.html, set the key prefix to                      ExamplePage.html. To redirect request for all pages with the                   prefix docs/, set the key prefix to docs/, which                   identifies all objects in the docs/ folder. -- WIP 
          # @note Required: Conditional. You must at least one condition property.
          # @see  
          property :key_prefix_equals, 'KeyPrefixEquals'


          def initialize(*args)
            super
            type 'S3WebsiteConfigurationRoutingRulesRoutingRuleConditionProperty'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::S3WebsiteConfigurationRoutingRulesRoutingRuleConditionProperty#http_error_code_returned_equals http_error_code_returned_equals}
      # {Model::Template::Resource::S3WebsiteConfigurationRoutingRulesRoutingRuleConditionProperty#key_prefix_equals key_prefix_equals}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-routingrulecondition.html 
      # @see {Model::Template::Resource::S3WebsiteConfigurationRoutingRulesRoutingRuleConditionProperty}
      def s3_website_configuration_routing_rules_routing_rule_condition_property(name, &block)
        r = Model::Template::Resource::S3WebsiteConfigurationRoutingRulesRoutingRuleConditionProperty.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

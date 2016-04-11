require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon S3 Website
      Configuration Routing Rules Redirect Rule Property
        # Amazon_S3_Website_Configuration_Routing_Rules_Redirect_Rule_Property
        ##
        class S3WebsiteConfigurationRoutingRulesRedirectRuleProperty < Resource


          # @!scope class
          # @attribute [w]
          # HostName
          # Name of the host where requests are redirected. -- WIP 
          # @note Required: No
          # @see  
          property :host_name, 'HostName'

          # @!scope class
          # @attribute [w]
          # HttpRedirectCode
          # The HTTP redirect code to use on the response. -- WIP 
          # @note Required: No
          # @see  
          property :http_redirect_code, 'HttpRedirectCode'

          # @!scope class
          # @attribute [w]
          # Protocol
          # The protocol to use in the redirect request. -- WIP 
          # @note Required: No
          # @see  
          property :protocol, 'Protocol'

          # @!scope class
          # @attribute [w]
          # ReplaceKeyPrefixWith
          # The object key prefix to use in the redirect request. For example, to redirect                   requests for all pages with the prefix docs/ (objects in the                      docs/ folder) to the documents/ prefix, you can set                   the KeyPrefixEquals property in routing condition property to                      docs/, and set the ReplaceKeyPrefixWith property to documents/. -- WIP 
          # @note Required: No
          # @see  
          property :replace_key_prefix_with, 'ReplaceKeyPrefixWith'

          # @!scope class
          # @attribute [w]
          # ReplaceKeyWith
          # The specific object key to use in the redirect request. For example, redirect                   request to error.html. -- WIP 
          # @note Required: No
          # @see  
          property :replace_key_with, 'ReplaceKeyWith'


          def initialize(*args)
            super
            type 'S3WebsiteConfigurationRoutingRulesRedirectRuleProperty'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::S3WebsiteConfigurationRoutingRulesRedirectRuleProperty#host_name host_name}
      # {Model::Template::Resource::S3WebsiteConfigurationRoutingRulesRedirectRuleProperty#http_redirect_code http_redirect_code}
      # {Model::Template::Resource::S3WebsiteConfigurationRoutingRulesRedirectRuleProperty#protocol protocol}
      # {Model::Template::Resource::S3WebsiteConfigurationRoutingRulesRedirectRuleProperty#replace_key_prefix_with replace_key_prefix_with}
      # {Model::Template::Resource::S3WebsiteConfigurationRoutingRulesRedirectRuleProperty#replace_key_with replace_key_with}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-redirectrule.html 
      # @see {Model::Template::Resource::S3WebsiteConfigurationRoutingRulesRedirectRuleProperty}
      def s3_website_configuration_routing_rules_redirect_rule_property(name, &block)
        r = Model::Template::Resource::S3WebsiteConfigurationRoutingRulesRedirectRuleProperty.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

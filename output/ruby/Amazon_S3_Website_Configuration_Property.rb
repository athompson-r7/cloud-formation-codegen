require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon S3 Website Configuration
      Property
        # Amazon_S3_Website_Configuration_Property
        ##
        class S3WebsiteConfigurationProperty < Resource


          # @!scope class
          # @attribute [w]
          # ErrorDocument
          # The name of the error document for the website. -- WIP 
          # @note Required: No
          # @see  
          property :error_document, 'ErrorDocument'

          # @!scope class
          # @attribute [w]
          # IndexDocument
          # The name of the index document for the website. -- WIP 
          # @note Required: Yes
          # @see  
          property :index_document, 'IndexDocument'

          # @!scope class
          # @attribute [w]
          # RedirectAllRequestsTo
          # The redirect behavior for every request to this bucket's website endpoint. -- WIP 
          # @note Required: No
          # @see  
          property :redirect_all_requests_to, 'RedirectAllRequestsTo'

          # @!scope class
          # @attribute [w]
          # RoutingRules
          # Rules that define when a redirect is applied and the redirect behavior. -- WIP 
          # @note Required: No
          # @see  
          property :routing_rules, 'RoutingRules'


          def initialize(*args)
            super
            type 'S3WebsiteConfigurationProperty'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::S3WebsiteConfigurationProperty#error_document error_document}
      # {Model::Template::Resource::S3WebsiteConfigurationProperty#index_document index_document}
      # {Model::Template::Resource::S3WebsiteConfigurationProperty#redirect_all_requests_to redirect_all_requests_to}
      # {Model::Template::Resource::S3WebsiteConfigurationProperty#routing_rules routing_rules}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration.html 
      # @see {Model::Template::Resource::S3WebsiteConfigurationProperty}
      def s3_website_configuration_property(name, &block)
        r = Model::Template::Resource::S3WebsiteConfigurationProperty.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

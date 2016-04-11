require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon S3 Website
      Configuration Redirect All Requests To Property
        # Amazon_S3_Website_Configuration_Redirect_All_Requests_To_Property
        ##
        class S3WebsiteConfigurationRedirectAllRequestsToProperty < Resource


          # @!scope class
          # @attribute [w]
          # HostName
          # Name of the host where requests are redirected. -- WIP 
          # @note Required: Yes
          # @see  
          property :host_name, 'HostName'

          # @!scope class
          # @attribute [w]
          # Protocol
          # Protocol to use (http or https) when redirecting                   requests. The default is the protocol that is used in the original request. -- WIP 
          # @note Required: No
          # @see  
          property :protocol, 'Protocol'


          def initialize(*args)
            super
            type 'S3WebsiteConfigurationRedirectAllRequestsToProperty'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::S3WebsiteConfigurationRedirectAllRequestsToProperty#host_name host_name}
      # {Model::Template::Resource::S3WebsiteConfigurationRedirectAllRequestsToProperty#protocol protocol}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-redirectallrequeststo.html 
      # @see {Model::Template::Resource::S3WebsiteConfigurationRedirectAllRequestsToProperty}
      def s3_website_configuration_redirect_all_requests_to_property(name, &block)
        r = Model::Template::Resource::S3WebsiteConfigurationRedirectAllRequestsToProperty.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

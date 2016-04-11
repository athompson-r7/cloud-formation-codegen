require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront
      DistributionConfig CustomErrorResponse
        # CloudFront_DistributionConfig_CustomErrorResponse
        ##
        class DistributionConfigCustomErrorResponse < Resource


          # @!scope class
          # @attribute [w]
          # ErrorCachingMinTTL
          # The minimum amount of time, in seconds, that Amazon CloudFront caches the HTTP status code                   that you specified in the ErrorCode property. The default value is                      300. -- WIP 
          # @note Required: No
          # @see  
          property :error_caching_min_ttl, 'ErrorCachingMinTTL'

          # @!scope class
          # @attribute [w]
          # ErrorCode
          # An HTTP status code for which you want to specify a custom error page. You can                   specify 400, 403, 404, 405,                      414, 500, 501, 502,                      503, or 504. -- WIP 
          # @note Required: Yes
          # @see  
          property :error_code, 'ErrorCode'

          # @!scope class
          # @attribute [w]
          # ResponseCode
          # The HTTP status code that CloudFront returns to viewer along with the custom error                   page. You can specify 200, 400, 403,                      404, 405, 414, 500,                      501, 502, 503, or                   504. -- WIP 
          # @note Required: Conditional. Required if you specified the                      ResponsePagePath property.
          # @see  
          property :response_code, 'ResponseCode'

          # @!scope class
          # @attribute [w]
          # ResponsePagePath
          # The path to the custom error page that CloudFront returns to a viewer when your                   origin returns the HTTP status code that you specified in the                      ErrorCode property. For example, you can specify                      /404-errors/403-forbidden.html. -- WIP 
          # @note Required: Conditional. Required if you specified the ResponseCode                   property.
          # @see  
          property :response_page_path, 'ResponsePagePath'


          def initialize(*args)
            super
            type 'DistributionConfigCustomErrorResponse'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::DistributionConfigCustomErrorResponse#error_caching_min_ttl error_caching_min_ttl}
      # {Model::Template::Resource::DistributionConfigCustomErrorResponse#error_code error_code}
      # {Model::Template::Resource::DistributionConfigCustomErrorResponse#response_code response_code}
      # {Model::Template::Resource::DistributionConfigCustomErrorResponse#response_page_path response_page_path}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-customerrorresponse.html 
      # @see {Model::Template::Resource::DistributionConfigCustomErrorResponse}
      def distributionconfig_customerrorresponse(name, &block)
        r = Model::Template::Resource::DistributionConfigCustomErrorResponse.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

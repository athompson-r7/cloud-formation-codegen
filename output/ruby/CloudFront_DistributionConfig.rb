require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront DistributionConfig
        # CloudFront_DistributionConfig
        ##
        class DistributionConfig < Resource


          # @!scope class
          # @attribute [w]
          # Comment
          # Any comments that you want to include about the distribution. -- WIP 
          # @note Required: No
          # @see  
          property :comment, 'Comment'

          # @!scope class
          # @attribute [w]
          # DefaultCacheBehavior
          # The default cache behavior that is triggered if you do not specify the                      CacheBehavior property or if files don't match any of the values                   of PathPattern in the CacheBehavior property. -- WIP 
          # @note Required: Yes
          # @see  
          property :default_cache_behavior, 'DefaultCacheBehavior'

          # @!scope class
          # @attribute [w]
          # DefaultRootObject
          # The object (such as index.html) that you want CloudFront to request from                   your origin when the root URL for your distribution (such as                      http://example.com/) is requested. -- WIP 
          # @note Required: No
          # @see  
          property :default_root_object, 'DefaultRootObject'

          # @!scope class
          # @attribute [w]
          # Enabled
          # Controls whether the distribution is enabled to accept end user requests for content. -- WIP 
          # @note Required: Yes
          # @see  
          property :enabled, 'Enabled'

          # @!scope class
          # @attribute [w]
          # Logging
          # Controls whether access logs are written for the distribution. To turn on                   access logs, specify this property. -- WIP 
          # @note Required: No
          # @see  
          property :logging, 'Logging'

          # @!scope class
          # @attribute [w]
          # PriceClass
          # The price class that corresponds with the maximum price that you want to pay                   for the CloudFront service. For more information, see Choosing the Price Class in the                      Amazon CloudFront Developer Guide. -- WIP 
          # @note Required: No
          # @see  
          property :price_class, 'PriceClass'

          # @!scope class
          # @attribute [w]
          # Restrictions
          # Specifies restrictions on who or how viewers can access your content. -- WIP 
          # @note Required: No
          # @see  
          property :restrictions, 'Restrictions'

          # @!scope class
          # @attribute [w]
          # ViewerCertificate
          # The certificate to use when viewers use HTTPS to request objects. -- WIP 
          # @note Required: No
          # @see  
          property :viewer_certificate, 'ViewerCertificate'

          # @!scope class
          # @attribute [w]
          # Aliases
          # CNAMEs (alternate domain names), if any, for the distribution. -- WIP
          # @note Required: No
          # @see 
          property :aliases, 'Aliases', :array

          # @!scope class
          # @attribute [w]
          # CacheBehaviors
          # A list of CacheBehavior types for the distribution. -- WIP
          # @note Required: No
          # @see 
          property :cache_behaviors, 'CacheBehaviors', :array

          # @!scope class
          # @attribute [w]
          # CustomErrorResponses
          # Whether CloudFront replaces HTTP status codes in the 4xx and                      5xx range with custom error messages before returning the response                   to the viewer. -- WIP
          # @note Required: No
          # @see 
          property :custom_error_responses, 'CustomErrorResponses', :array

          # @!scope class
          # @attribute [w]
          # Origins
          # A list of origins for this CloudFront distribution. For each origin, you can specify                   whether it is an Amazon S3 or custom origin. -- WIP
          # @note Required: Yes
          # @see 
          property :origins, 'Origins', :array


          def initialize(*args)
            super
            type 'DistributionConfig'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::DistributionConfig#comment comment}
      # {Model::Template::Resource::DistributionConfig#default_cache_behavior default_cache_behavior}
      # {Model::Template::Resource::DistributionConfig#default_root_object default_root_object}
      # {Model::Template::Resource::DistributionConfig#enabled enabled}
      # {Model::Template::Resource::DistributionConfig#logging logging}
      # {Model::Template::Resource::DistributionConfig#price_class price_class}
      # {Model::Template::Resource::DistributionConfig#restrictions restrictions}
      # {Model::Template::Resource::DistributionConfig#viewer_certificate viewer_certificate}
      # {Model::Template::Resource::DistributionConfig#aliases aliases}
      # {Model::Template::Resource::DistributionConfig#cache_behaviors cache_behaviors}
      # {Model::Template::Resource::DistributionConfig#custom_error_responses custom_error_responses}
      # {Model::Template::Resource::DistributionConfig#origins origins}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html 
      # @see {Model::Template::Resource::DistributionConfig}
      def distributionconfig(name, &block)
        r = Model::Template::Resource::DistributionConfig.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

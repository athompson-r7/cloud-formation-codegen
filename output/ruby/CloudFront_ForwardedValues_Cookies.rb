require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront ForwardedValues
      Cookies
        # CloudFront_ForwardedValues_Cookies
        ##
        class ForwardedValuesCookies < Resource


          # @!scope class
          # @attribute [w]
          # Forward
          # The cookies to forward to the origin of the cache behavior. You can specify                      none, all, or whitelist. -- WIP 
          # @note Required: Yes
          # @see  
          property :forward, 'Forward'

          # @!scope class
          # @attribute [w]
          # WhitelistedNames
          # The names of cookies to forward to the origin for the cache behavior. -- WIP
          # @note Required: Conditional. Required if you specified whitelist for                   the Forward property.
          # @see 
          property :whitelisted_names, 'WhitelistedNames', :array


          def initialize(*args)
            super
            type 'ForwardedValuesCookies'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::ForwardedValuesCookies#forward forward}
      # {Model::Template::Resource::ForwardedValuesCookies#whitelisted_names whitelisted_names}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues-cookies.html 
      # @see {Model::Template::Resource::ForwardedValuesCookies}
      def forwardedvalues_cookies(name, &block)
        r = Model::Template::Resource::ForwardedValuesCookies.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

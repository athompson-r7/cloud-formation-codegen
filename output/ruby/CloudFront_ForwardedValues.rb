require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront ForwardedValues
        # CloudFront_ForwardedValues
        ##
        class ForwardedValues < Resource


          # @!scope class
          # @attribute [w]
          # Cookies
          # Forwards specified cookies to the origin of the cache behavior. -- WIP 
          # @note Required: No
          # @see  
          property :cookies, 'Cookies'

          # @!scope class
          # @attribute [w]
          # QueryString
          # Indicates whether you want CloudFront to forward query strings to the origin that is                   associated with this cache behavior. If so, specify true; if not,                   specify false. -- WIP 
          # @note Required: Yes
          # @see  
          property :query_string, 'QueryString'

          # @!scope class
          # @attribute [w]
          # Headers
          # Specifies the headers that you want Amazon CloudFront to forward to the origin for this                   cache behavior (whitelisted headers). For the headers that you specify, Amazon CloudFront                   also caches separate versions of a specified object that is based on the header                   values in viewer requests. -- WIP
          # @note Required: No
          # @see 
          property :headers, 'Headers', :array


          def initialize(*args)
            super
            type 'ForwardedValues'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::ForwardedValues#cookies cookies}
      # {Model::Template::Resource::ForwardedValues#query_string query_string}
      # {Model::Template::Resource::ForwardedValues#headers headers}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues.html 
      # @see {Model::Template::Resource::ForwardedValues}
      def forwardedvalues(name, &block)
        r = Model::Template::Resource::ForwardedValues.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront
      DefaultCacheBehavior
        # CloudFront_DefaultCacheBehavior
        ##
        class DefaultCacheBehavior < Resource


          # @!scope class
          # @attribute [w]
          # ForwardedValues
          # Specifies how CloudFront handles query strings or cookies. -- WIP 
          # @note Required: Yes
          # @see  
          property :forwarded_values, 'ForwardedValues'

          # @!scope class
          # @attribute [w]
          # MinTTL
          # The minimum amount of time that you want objects to stay in the cache before                   CloudFront queries your origin to see whether the object has been updated. -- WIP 
          # @note Required: No
          # @see  
          property :min_ttl, 'MinTTL'

          # @!scope class
          # @attribute [w]
          # SmoothStreaming
          # Indicates whether to use the origin that is associated with this cache behavior                   to distribute media files in the Microsoft Smooth Streaming format. -- WIP 
          # @note Required: No
          # @see  
          property :smooth_streaming, 'SmoothStreaming'

          # @!scope class
          # @attribute [w]
          # TargetOriginId
          # The value of ID for the origin that CloudFront routes requests to when the default                   cache behavior is applied to a request. -- WIP 
          # @note Required: Yes
          # @see  
          property :target_origin_id, 'TargetOriginId'

          # @!scope class
          # @attribute [w]
          # ViewerProtocolPolicy
          # The protocol that users can use to access the files in the origin that you                   specified in the TargetOriginId property when the default cache                   behavior is applied to a request. -- WIP 
          # @note Required: Yes
          # @see  
          property :viewer_protocol_policy, 'ViewerProtocolPolicy'

          # @!scope class
          # @attribute [w]
          # AllowedMethods
          # HTTP methods that CloudFront processes and forwards to your Amazon S3 bucket or your                   custom origin. You can specify [&quot;HEAD&quot;, &quot;GET&quot;], [&quot;GET&quot;, &quot;HEAD&quot;,                      &quot;OPTIONS&quot;], or [&quot;DELETE&quot;, &quot;GET&quot;, &quot;HEAD&quot;, &quot;OPTIONS&quot;, &quot;PATCH&quot;,                      &quot;POST&quot;, &quot;PUT&quot;]. If you don't specify a value, AWS CloudFormation specifies                      [&quot;HEAD&quot;, &quot;GET&quot;]. -- WIP
          # @note Required: No
          # @see 
          property :allowed_methods, 'AllowedMethods', :array

          # @!scope class
          # @attribute [w]
          # CachedMethods
          # HTTP methods for which CloudFront caches responses. You can specify [&quot;HEAD&quot;,                      &quot;GET&quot;] or [&quot;GET&quot;, &quot;HEAD&quot;, &quot;OPTIONS&quot;]. If you don't specify                   a value, AWS CloudFormation specifies [&quot;HEAD&quot;, &quot;GET&quot;]. -- WIP
          # @note Required: No
          # @see 
          property :cached_methods, 'CachedMethods', :array

          # @!scope class
          # @attribute [w]
          # TrustedSigners
          # A list of AWS accounts that can create signed URLs in order to access private                   content. -- WIP
          # @note Required: No
          # @see 
          property :trusted_signers, 'TrustedSigners', :array


          def initialize(*args)
            super
            type 'DefaultCacheBehavior'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::DefaultCacheBehavior#forwarded_values forwarded_values}
      # {Model::Template::Resource::DefaultCacheBehavior#min_ttl min_ttl}
      # {Model::Template::Resource::DefaultCacheBehavior#smooth_streaming smooth_streaming}
      # {Model::Template::Resource::DefaultCacheBehavior#target_origin_id target_origin_id}
      # {Model::Template::Resource::DefaultCacheBehavior#viewer_protocol_policy viewer_protocol_policy}
      # {Model::Template::Resource::DefaultCacheBehavior#allowed_methods allowed_methods}
      # {Model::Template::Resource::DefaultCacheBehavior#cached_methods cached_methods}
      # {Model::Template::Resource::DefaultCacheBehavior#trusted_signers trusted_signers}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html 
      # @see {Model::Template::Resource::DefaultCacheBehavior}
      def defaultcachebehavior(name, &block)
        r = Model::Template::Resource::DefaultCacheBehavior.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

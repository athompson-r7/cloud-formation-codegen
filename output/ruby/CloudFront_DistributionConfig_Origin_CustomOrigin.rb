require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront DistributionConfig Origin
      CustomOrigin
        # CloudFront_DistributionConfig_Origin_CustomOrigin
        ##
        class DistributionConfigOriginCustomOrigin < Resource


          # @!scope class
          # @attribute [w]
          # HTTPPort
          # The HTTP port the custom origin listens on. -- WIP 
          # @note Required: No
          # @see  
          property :http_port, 'HTTPPort'

          # @!scope class
          # @attribute [w]
          # HTTPSPort
          # The HTTPS port the custom origin listens on. -- WIP 
          # @note Required: No
          # @see  
          property :https_port, 'HTTPSPort'

          # @!scope class
          # @attribute [w]
          # OriginProtocolPolicy
          # The origin protocol policy to apply to your origin. -- WIP 
          # @note Required: Yes
          # @see  
          property :origin_protocol_policy, 'OriginProtocolPolicy'


          def initialize(*args)
            super
            type 'DistributionConfigOriginCustomOrigin'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::DistributionConfigOriginCustomOrigin#http_port http_port}
      # {Model::Template::Resource::DistributionConfigOriginCustomOrigin#https_port https_port}
      # {Model::Template::Resource::DistributionConfigOriginCustomOrigin#origin_protocol_policy origin_protocol_policy}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-customorigin.html 
      # @see {Model::Template::Resource::DistributionConfigOriginCustomOrigin}
      def distributionconfig_origin_customorigin(name, &block)
        r = Model::Template::Resource::DistributionConfigOriginCustomOrigin.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront DistributionConfig Origin
        # CloudFront_DistributionConfig_Origin
        ##
        class DistributionConfigOrigin < Resource


          # @!scope class
          # @attribute [w]
          # CustomOriginConfig
          # Origin information to specify a custom origin. -- WIP 
          # @note Required: Conditional. You cannot use CustomOriginConfig and                      S3OriginConfig in the same distribution, but you                      must specify one or the other.
          # @see  
          property :custom_origin_config, 'CustomOriginConfig'

          # @!scope class
          # @attribute [w]
          # DomainName
          # The DNS name of the Amazon Simple Storage Service (S3) bucket or the HTTP server from which you want                   CloudFront to get objects for this origin. -- WIP 
          # @note Required: Yes
          # @see  
          property :domain_name, 'DomainName'

          # @!scope class
          # @attribute [w]
          # Id
          # An identifier for the origin. The value of Id must be unique                   within the distribution. -- WIP 
          # @note Required: Yes
          # @see  
          property :id, 'Id'

          # @!scope class
          # @attribute [w]
          # OriginPath
          # The path that CloudFront uses to request content from an S3 bucket or custom origin.                   The combination of the DomainName and OriginPath                   properties must resolve to a valid path. The value must start with a slash mark                      (/) and cannot end with a slash mark. -- WIP 
          # @note Required: No
          # @see  
          property :origin_path, 'OriginPath'

          # @!scope class
          # @attribute [w]
          # S3OriginConfig
          # Origin information to specify an S3 origin. -- WIP 
          # @note Required: Conditional. You cannot use S3OriginConfig and                      CustomOriginConfig in the same distribution, but you                      must specify one or the other.
          # @see  
          property :s3_origin_config, 'S3OriginConfig'


          def initialize(*args)
            super
            type 'DistributionConfigOrigin'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::DistributionConfigOrigin#custom_origin_config custom_origin_config}
      # {Model::Template::Resource::DistributionConfigOrigin#domain_name domain_name}
      # {Model::Template::Resource::DistributionConfigOrigin#id id}
      # {Model::Template::Resource::DistributionConfigOrigin#origin_path origin_path}
      # {Model::Template::Resource::DistributionConfigOrigin#s3_origin_config s3_origin_config}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-origin.html 
      # @see {Model::Template::Resource::DistributionConfigOrigin}
      def distributionconfig_origin(name, &block)
        r = Model::Template::Resource::DistributionConfigOrigin.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

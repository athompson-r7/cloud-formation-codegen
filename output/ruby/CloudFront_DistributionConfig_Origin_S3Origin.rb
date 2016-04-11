require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront DistributionConfig Origin
      S3Origin
        # CloudFront_DistributionConfig_Origin_S3Origin
        ##
        class DistributionConfigOriginS3Origin < Resource


          # @!scope class
          # @attribute [w]
          # OriginAccessIdentity
          # The CloudFront origin access identity to associate with the origin. This is used to                   configure the origin so that end users can access objects in an Amazon S3 bucket                   through CloudFront only. -- WIP 
          # @note Required: No
          # @see  
          property :origin_access_identity, 'OriginAccessIdentity'


          def initialize(*args)
            super
            type 'DistributionConfigOriginS3Origin'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::DistributionConfigOriginS3Origin#origin_access_identity origin_access_identity}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-s3origin.html 
      # @see {Model::Template::Resource::DistributionConfigOriginS3Origin}
      def distributionconfig_origin_s3origin(name, &block)
        r = Model::Template::Resource::DistributionConfigOriginS3Origin.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront Logging
        # CloudFront_Logging
        ##
        class Logging < Resource


          # @!scope class
          # @attribute [w]
          # Bucket
          # The Amazon S3 bucket address where access logs are stored, for example,                      mybucket.s3.amazonaws.com. -- WIP 
          # @note Required: Yes
          # @see  
          property :bucket, 'Bucket'

          # @!scope class
          # @attribute [w]
          # IncludeCookies
          # Indicates whether CloudFront includes cookies in access logs. -- WIP 
          # @note Required: No
          # @see  
          property :include_cookies, 'IncludeCookies'

          # @!scope class
          # @attribute [w]
          # Prefix
          # A prefix for the access log file names for this distribution. -- WIP 
          # @note Required: No
          # @see  
          property :prefix, 'Prefix'


          def initialize(*args)
            super
            type 'Logging'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::Logging#bucket bucket}
      # {Model::Template::Resource::Logging#include_cookies include_cookies}
      # {Model::Template::Resource::Logging#prefix prefix}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-logging.html 
      # @see {Model::Template::Resource::Logging}
      def logging(name, &block)
        r = Model::Template::Resource::Logging.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

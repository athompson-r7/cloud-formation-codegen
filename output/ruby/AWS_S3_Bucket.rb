require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::S3::Bucket
        # AWS_S3_Bucket
        ##
        class S3Bucket < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # AccessControl
          # A canned access control list (ACL) that grants predefined permissions to the                   bucket. For more information about canned ACLs, see Canned ACLs in the                      Amazon S3 documentation. -- WIP 
          # @note Required: No
          # @see  
          property :access_control, 'AccessControl'

          # @!scope class
          # @attribute [w]
          # BucketName
          # A name for the bucket. If you don't specify a name, AWS CloudFormation generates a unique                   physical ID and uses that ID for the bucket name. For more information, see Name Type. The bucket                   name must contain only lowercase letters, numbers, periods (.), and dashes                   (-). -- WIP 
          # @note Required: No
          # @see  
          property :bucket_name, 'BucketName'

          # @!scope class
          # @attribute [w]
          # CorsConfiguration
          # Rules that define cross-origin resource sharing of objects in this bucket.                         For more information, see Enabling                             Cross-Origin Resource Sharing in the                             Amazon Simple Storage Service Developer Guide. -- WIP 
          # @note Required: No
          # @see  
          property :cors_configuration, 'CorsConfiguration'

          # @!scope class
          # @attribute [w]
          # LifecycleConfiguration
          # Rules that define how Amazon S3 manages objects during their lifetime. For more                         information, see Object                             Lifecycle Management in the                             Amazon Simple Storage Service Developer Guide. -- WIP 
          # @note Required: No
          # @see  
          property :lifecycle_configuration, 'LifecycleConfiguration'

          # @!scope class
          # @attribute [w]
          # LoggingConfiguration
          # Settings that defines where logs are stored. -- WIP 
          # @note Required: No
          # @see  
          property :logging_configuration, 'LoggingConfiguration'

          # @!scope class
          # @attribute [w]
          # NotificationConfiguration
          # Configuration that defines which Amazon SNS topic to send messages to and what                         events to report. -- WIP 
          # @note Required: No
          # @see  
          property :notification_configuration, 'NotificationConfiguration'

          # @!scope class
          # @attribute [w]
          # Tags
          # An arbitrary set of tags (key-value pairs) for this Amazon S3 bucket. -- WIP 
          # @note Required: No
          # @see  
          property :tags, 'Tags'

          # @!scope class
          # @attribute [w]
          # VersioningConfiguration
          # Enables multiple variants of all objects in this bucket. You might enable                         versioning to prevent objects from being deleted or overwritten by mistake                         or to archive objects so that you can retrieve previous versions of                         them. -- WIP 
          # @note Required: No
          # @see  
          property :versioning_configuration, 'VersioningConfiguration'

          # @!scope class
          # @attribute [w]
          # WebsiteConfiguration
          # Information used to configure the bucket as a static website. For more information, see Hosting Websites on Amazon                   S3. -- WIP 
          # @note Required: No
          # @see  
          property :website_configuration, 'WebsiteConfiguration'

          # @!scope class
          # @attribute [w]
          # DomainName
          # Returns the DNS name of the specified bucket. -- WIP 
          # @note Required: No
          # @see  
          property :domain_name, 'DomainName'

          # @!scope class
          # @attribute [w]
          # WebsiteURL
          # Amazon S3 website endpoint for the specified bucket. -- WIP 
          # @note Required: No
          # @see  
          property :website_url, 'WebsiteURL'


          def initialize(*args)
            super
            type 'S3Bucket'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::S3Bucket#access_control access_control}
      # {Model::Template::Resource::S3Bucket#bucket_name bucket_name}
      # {Model::Template::Resource::S3Bucket#cors_configuration cors_configuration}
      # {Model::Template::Resource::S3Bucket#lifecycle_configuration lifecycle_configuration}
      # {Model::Template::Resource::S3Bucket#logging_configuration logging_configuration}
      # {Model::Template::Resource::S3Bucket#notification_configuration notification_configuration}
      # {Model::Template::Resource::S3Bucket#tags tags}
      # {Model::Template::Resource::S3Bucket#versioning_configuration versioning_configuration}
      # {Model::Template::Resource::S3Bucket#website_configuration website_configuration}
      # {Model::Template::Resource::S3Bucket#domain_name domain_name}
      # {Model::Template::Resource::S3Bucket#website_url website_url}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html 
      # @see {Model::Template::Resource::S3Bucket}
      def s3_bucket(name, &block)
        r = Model::Template::Resource::S3Bucket.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

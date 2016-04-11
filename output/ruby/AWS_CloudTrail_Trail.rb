require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::CloudTrail::Trail
        # AWS_CloudTrail_Trail
        ##
        class CloudTrailTrail < Resource


          # @!scope class
          # @attribute [w]
          # IncludeGlobalServiceEvents
          # Indicates whether the trail is publishing events from global services, such as             IAM, to the log files. -- WIP 
          # @note Required: No
          # @see  
          property :include_global_service_events, 'IncludeGlobalServiceEvents'

          # @!scope class
          # @attribute [w]
          # IsLogging
          # Indicates whether the CloudTrail trail is currently logging AWS API calls. -- WIP 
          # @note Required: Yes
          # @see  
          property :is_logging, 'IsLogging'

          # @!scope class
          # @attribute [w]
          # S3BucketName
          # The name of the Amazon S3 bucket where CloudTrail publishes log files. -- WIP 
          # @note Required: Yes
          # @see  
          property :s3_bucket_name, 'S3BucketName'

          # @!scope class
          # @attribute [w]
          # S3KeyPrefix
          # An Amazon S3 object key prefix that precedes the name of all log files. -- WIP 
          # @note Required: No
          # @see  
          property :s3_key_prefix, 'S3KeyPrefix'

          # @!scope class
          # @attribute [w]
          # SnsTopicName
          # The name of an Amazon SNS topic that is notified when new log files are                   published. -- WIP 
          # @note Required: No
          # @see  
          property :sns_topic_name, 'SnsTopicName'


          def initialize(*args)
            super
            type 'CloudTrailTrail'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::CloudTrailTrail#include_global_service_events include_global_service_events}
      # {Model::Template::Resource::CloudTrailTrail#is_logging is_logging}
      # {Model::Template::Resource::CloudTrailTrail#s3_bucket_name s3_bucket_name}
      # {Model::Template::Resource::CloudTrailTrail#s3_key_prefix s3_key_prefix}
      # {Model::Template::Resource::CloudTrailTrail#sns_topic_name sns_topic_name}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html 
      # @see {Model::Template::Resource::CloudTrailTrail}
      def cloudtrail_trail(name, &block)
        r = Model::Template::Resource::CloudTrailTrail.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

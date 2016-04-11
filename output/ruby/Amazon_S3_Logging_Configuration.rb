require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon S3 Logging Configuration
        # Amazon_S3_Logging_Configuration
        ##
        class S3LoggingConfiguration < Resource


          # @!scope class
          # @attribute [w]
          # DestinationBucketName
          # The name of an Amazon S3 bucket where Amazon S3 store server access log files. You can                   store log files in any bucket that you own. By default, logs are stored in the                   bucket where the LoggingConfiguration property is defined. -- WIP 
          # @note Required: No
          # @see  
          property :destination_bucket_name, 'DestinationBucketName'

          # @!scope class
          # @attribute [w]
          # LogFilePrefix
          # A prefix for the all log object keys. If you store log files from multiple Amazon S3                   buckets in a single bucket, you can use a prefix to distinguish which log files                   came from which bucket. -- WIP 
          # @note Required: No
          # @see  
          property :log_file_prefix, 'LogFilePrefix'


          def initialize(*args)
            super
            type 'S3LoggingConfiguration'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::S3LoggingConfiguration#destination_bucket_name destination_bucket_name}
      # {Model::Template::Resource::S3LoggingConfiguration#log_file_prefix log_file_prefix}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-loggingconfig.html 
      # @see {Model::Template::Resource::S3LoggingConfiguration}
      def s3_logging_configuration(name, &block)
        r = Model::Template::Resource::S3LoggingConfiguration.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

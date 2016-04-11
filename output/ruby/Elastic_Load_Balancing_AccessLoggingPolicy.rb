require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Elastic Load Balancing AccessLoggingPolicy
        # Elastic_Load_Balancing_AccessLoggingPolicy
        ##
        class LoadBalancingAccessLoggingPolicy < Resource


          # @!scope class
          # @attribute [w]
          # EmitInterval
          # The interval for publishing access logs in minutes. You can specify an interval                   of either 5 minutes or 60 minutes. -- WIP 
          # @note Required: No
          # @see  
          property :emit_interval, 'EmitInterval'

          # @!scope class
          # @attribute [w]
          # Enabled
          # Whether logging is enabled for the load balancer. -- WIP 
          # @note Required: Yes
          # @see  
          property :enabled, 'Enabled'

          # @!scope class
          # @attribute [w]
          # S3BucketName
          # The name of an Amazon S3 bucket where access log files are stored. -- WIP 
          # @note Required: Yes
          # @see  
          property :s3_bucket_name, 'S3BucketName'

          # @!scope class
          # @attribute [w]
          # S3BucketPrefix
          # A prefix for the all log object keys, such as                      my-load-balancer-logs/prod. If you store log files from multiple                   sources in a single bucket, you can use a prefix to distinguish each log file and                   its source. -- WIP 
          # @note Required: No
          # @see  
          property :s3_bucket_prefix, 'S3BucketPrefix'


          def initialize(*args)
            super
            type 'LoadBalancingAccessLoggingPolicy'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::LoadBalancingAccessLoggingPolicy#emit_interval emit_interval}
      # {Model::Template::Resource::LoadBalancingAccessLoggingPolicy#enabled enabled}
      # {Model::Template::Resource::LoadBalancingAccessLoggingPolicy#s3_bucket_name s3_bucket_name}
      # {Model::Template::Resource::LoadBalancingAccessLoggingPolicy#s3_bucket_prefix s3_bucket_prefix}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html 
      # @see {Model::Template::Resource::LoadBalancingAccessLoggingPolicy}
      def load_balancing_accessloggingpolicy(name, &block)
        r = Model::Template::Resource::LoadBalancingAccessLoggingPolicy.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

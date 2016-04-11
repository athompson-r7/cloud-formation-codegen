require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon S3 Lifecycle Rule
        # Amazon_S3_Lifecycle_Rule
        ##
        class S3LifecycleRule < Resource


          # @!scope class
          # @attribute [w]
          # ExpirationDate
          # Indicates when objects are deleted from Amazon S3 and Amazon Glacier. The date value must be                   in ISO 8601 format. The time is always midnight UTC. If you specify an expiration                   and transition time, you must use the same time unit for both properties (either                   in days or by date). The expiration time must also be later than the transition                   time. -- WIP 
          # @note Required: Conditional. You must specify at least one of the following                   properties: ExpirationDate, ExpirationInDays,                      NoncurrentVersionExpirationInDays,                      NoncurrentVersionTransition, or Transition.
          # @see  
          property :expiration_date, 'ExpirationDate'

          # @!scope class
          # @attribute [w]
          # ExpirationInDays
          # Indicates the number of days after creation when objects are deleted from Amazon S3                   and Amazon Glacier. If you specify an expiration and transition time, you must use the same                   time unit for both properties (either in days or by date). The expiration time                   must also be later than the transition time. -- WIP 
          # @note Required: Conditional. You must specify at least one of the following                   properties: ExpirationDate, ExpirationInDays,                      NoncurrentVersionExpirationInDays,                      NoncurrentVersionTransition, or Transition.
          # @see  
          property :expiration_in_days, 'ExpirationInDays'

          # @!scope class
          # @attribute [w]
          # Id
          # A unique identifier for this rule. The value cannot be more than 255                   characters. -- WIP 
          # @note Required: No
          # @see  
          property :id, 'Id'

          # @!scope class
          # @attribute [w]
          # NoncurrentVersionExpirationInDays
          # For buckets with versioning enabled (or suspended), specifies the time, in                   days, between when a new version of the object is uploaded to the bucket and when                   old versions of the object expire. When object versions expire, Amazon S3 permanently                   deletes them. If you specify a transition and expiration time, the expiration time                   must be later than the transition time. -- WIP 
          # @note Required: Conditional. You must specify at least one of the following                   properties: ExpirationDate, ExpirationInDays,                      NoncurrentVersionExpirationInDays,                      NoncurrentVersionTransition, or Transition.
          # @see  
          property :noncurrent_version_expiration_in_days, 'NoncurrentVersionExpirationInDays'

          # @!scope class
          # @attribute [w]
          # NoncurrentVersionTransition
          # For buckets with versioning enabled (or suspended), specifies when non-current                   objects transition to a specified storage class. If you specify a transition and                   expiration time, the expiration time must be later than the transition                   time. -- WIP 
          # @note Required: Conditional. You must specify at least one of the following                   properties: ExpirationDate, ExpirationInDays,                      NoncurrentVersionExpirationInDays,                      NoncurrentVersionTransition, or Transition.
          # @see  
          property :noncurrent_version_transition, 'NoncurrentVersionTransition'

          # @!scope class
          # @attribute [w]
          # Prefix
          # Object key prefix that identifies one or more objects to which this rule                   applies. -- WIP 
          # @note Required: No
          # @see  
          property :prefix, 'Prefix'

          # @!scope class
          # @attribute [w]
          # Status
          # Specify either Enabled or Disabled. If you specify                      Enabled, Amazon S3 executes this rule as scheduled. If you specify                      Disabled, Amazon S3 ignores this rule. -- WIP 
          # @note Required: Yes
          # @see  
          property :status, 'Status'

          # @!scope class
          # @attribute [w]
          # Transition
          # Specifies when an object transitions to a specified storage class. If you                   specify an expiration and transition time, you must use the same time unit for                   both properties (either in days or by date). The expiration time must also be                   later than the transition time. -- WIP 
          # @note Required: Conditional. You must specify at least one of the following                   properties: ExpirationDate, ExpirationInDays,                      NoncurrentVersionExpirationInDays,                      NoncurrentVersionTransition, or Transition.
          # @see  
          property :transition, 'Transition'


          def initialize(*args)
            super
            type 'S3LifecycleRule'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::S3LifecycleRule#expiration_date expiration_date}
      # {Model::Template::Resource::S3LifecycleRule#expiration_in_days expiration_in_days}
      # {Model::Template::Resource::S3LifecycleRule#id id}
      # {Model::Template::Resource::S3LifecycleRule#noncurrent_version_expiration_in_days noncurrent_version_expiration_in_days}
      # {Model::Template::Resource::S3LifecycleRule#noncurrent_version_transition noncurrent_version_transition}
      # {Model::Template::Resource::S3LifecycleRule#prefix prefix}
      # {Model::Template::Resource::S3LifecycleRule#status status}
      # {Model::Template::Resource::S3LifecycleRule#transition transition}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html 
      # @see {Model::Template::Resource::S3LifecycleRule}
      def s3_lifecycle_rule(name, &block)
        r = Model::Template::Resource::S3LifecycleRule.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

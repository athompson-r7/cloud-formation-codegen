require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon S3
      Lifecycle Rule NoncurrentVersionTransition
        # Amazon_S3_Lifecycle_Rule_NoncurrentVersionTransition
        ##
        class S3LifecycleRuleNoncurrentVersionTransition < Resource


          # @!scope class
          # @attribute [w]
          # StorageClass
          # The storage class to which you want the noncurrent objects to transition.                   Currently, you can specify only Glacier. -- WIP 
          # @note Required: Yes
          # @see  
          property :storage_class, 'StorageClass'

          # @!scope class
          # @attribute [w]
          # TransitionInDays
          # The number of days between the time that a new version of the object is                   uploaded to the bucket and when old versions of the object are transitioned to the                   specified storage class. -- WIP 
          # @note Required: Yes
          # @see  
          property :transition_in_days, 'TransitionInDays'


          def initialize(*args)
            super
            type 'S3LifecycleRuleNoncurrentVersionTransition'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::S3LifecycleRuleNoncurrentVersionTransition#storage_class storage_class}
      # {Model::Template::Resource::S3LifecycleRuleNoncurrentVersionTransition#transition_in_days transition_in_days}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition.html 
      # @see {Model::Template::Resource::S3LifecycleRuleNoncurrentVersionTransition}
      def s3_lifecycle_rule_noncurrentversiontransition(name, &block)
        r = Model::Template::Resource::S3LifecycleRuleNoncurrentVersionTransition.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

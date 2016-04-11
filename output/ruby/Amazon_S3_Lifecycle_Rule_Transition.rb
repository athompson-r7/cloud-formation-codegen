require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon S3 Lifecycle Rule
      Transition
        # Amazon_S3_Lifecycle_Rule_Transition
        ##
        class S3LifecycleRuleTransition < Resource


          # @!scope class
          # @attribute [w]
          # StorageClass
          # The storage class to which you want the object to transition. Currently, you                   can specify only Glacier. -- WIP 
          # @note Required: Yes
          # @see  
          property :storage_class, 'StorageClass'

          # @!scope class
          # @attribute [w]
          # TransitionDate
          # Indicates when objects are transitioned to the specified storage class. The                   date value must be in ISO 8601 format. The time is always midnight UTC. -- WIP 
          # @note Required: Conditional
          # @see  
          property :transition_date, 'TransitionDate'

          # @!scope class
          # @attribute [w]
          # TransitionInDays
          # Indicates the number of days after creation when objects are transitioned to                   the specified storage class. -- WIP 
          # @note Required: Conditional
          # @see  
          property :transition_in_days, 'TransitionInDays'


          def initialize(*args)
            super
            type 'S3LifecycleRuleTransition'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::S3LifecycleRuleTransition#storage_class storage_class}
      # {Model::Template::Resource::S3LifecycleRuleTransition#transition_date transition_date}
      # {Model::Template::Resource::S3LifecycleRuleTransition#transition_in_days transition_in_days}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-transition.html 
      # @see {Model::Template::Resource::S3LifecycleRuleTransition}
      def s3_lifecycle_rule_transition(name, &block)
        r = Model::Template::Resource::S3LifecycleRuleTransition.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

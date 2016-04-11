require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::AutoScaling::ScalingPolicy
        # AWS_AutoScaling_ScalingPolicy
        ##
        class AutoScalingScalingPolicy < Resource


          # @!scope class
          # @attribute [w]
          # AdjustmentType
          # Specifies whether the ScalingAdjustment is an                   absolute number or a percentage of the current capacity. Valid values are                      ChangeInCapacity, ExactCapacity,                   and PercentChangeInCapacity. -- WIP 
          # @note Required: Yes
          # @see  
          property :adjustment_type, 'AdjustmentType'

          # @!scope class
          # @attribute [w]
          # AutoScalingGroupName
          # The name or Amazon Resource Name (ARN) of the Auto Scaling Group that you                   want to attach the policy to. -- WIP 
          # @note Required: Yes
          # @see  
          property :auto_scaling_group_name, 'AutoScalingGroupName'

          # @!scope class
          # @attribute [w]
          # Cooldown
          # The amount of time, in seconds, after a scaling activity completes before                   any further trigger-related scaling activities can start. -- WIP 
          # @note Required: No
          # @see  
          property :cooldown, 'Cooldown'

          # @!scope class
          # @attribute [w]
          # MinAdjustmentStep
          # The minmum number of instances that are added or removed when the Auto Scaling group                   scales up or down. You can use this property only when you specify                      PercentChangeInCapacity for the AdjustmentType property. -- WIP 
          # @note Required: No
          # @see  
          property :min_adjustment_step, 'MinAdjustmentStep'

          # @!scope class
          # @attribute [w]
          # ScalingAdjustment
          # The number of instances by which to scale. AdjustmentType determines the                   interpretation of this number, such as an absolute number or as a percentage of                   the existing Auto Scaling group size. A positive increment adds to the current capacity                   and a negative value removes from the current capacity. -- WIP 
          # @note Required: Yes
          # @see  
          property :scaling_adjustment, 'ScalingAdjustment'


          def initialize(*args)
            super
            type 'AutoScalingScalingPolicy'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::AutoScalingScalingPolicy#adjustment_type adjustment_type}
      # {Model::Template::Resource::AutoScalingScalingPolicy#auto_scaling_group_name auto_scaling_group_name}
      # {Model::Template::Resource::AutoScalingScalingPolicy#cooldown cooldown}
      # {Model::Template::Resource::AutoScalingScalingPolicy#min_adjustment_step min_adjustment_step}
      # {Model::Template::Resource::AutoScalingScalingPolicy#scaling_adjustment scaling_adjustment}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html 
      # @see {Model::Template::Resource::AutoScalingScalingPolicy}
      def autoscaling_scalingpolicy(name, &block)
        r = Model::Template::Resource::AutoScalingScalingPolicy.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

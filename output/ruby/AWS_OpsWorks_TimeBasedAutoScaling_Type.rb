require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS OpsWorks
      TimeBasedAutoScaling Type
        # AWS_OpsWorks_TimeBasedAutoScaling_Type
        ##
        class OpsWorksTimeBasedAutoScalingType < Resource


          # @!scope class
          # @attribute [w]
          # Friday
          # The schedule for Friday. -- WIP 
          # @note Required: No
          # @see  
          property :friday, 'Friday'

          # @!scope class
          # @attribute [w]
          # Monday
          # The schedule for Monday. -- WIP 
          # @note Required: No
          # @see  
          property :monday, 'Monday'

          # @!scope class
          # @attribute [w]
          # Saturday
          # The schedule for Saturday. -- WIP 
          # @note Required: No
          # @see  
          property :saturday, 'Saturday'

          # @!scope class
          # @attribute [w]
          # Sunday
          # The schedule for Sunday. -- WIP 
          # @note Required: No
          # @see  
          property :sunday, 'Sunday'

          # @!scope class
          # @attribute [w]
          # Thursday
          # The schedule for Thursday. -- WIP 
          # @note Required: No
          # @see  
          property :thursday, 'Thursday'

          # @!scope class
          # @attribute [w]
          # Tuesday
          # The schedule for Tuesday. -- WIP 
          # @note Required: No
          # @see  
          property :tuesday, 'Tuesday'

          # @!scope class
          # @attribute [w]
          # Wednesday
          # The schedule for Wednesday. -- WIP 
          # @note Required: No
          # @see  
          property :wednesday, 'Wednesday'


          def initialize(*args)
            super
            type 'OpsWorksTimeBasedAutoScalingType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::OpsWorksTimeBasedAutoScalingType#friday friday}
      # {Model::Template::Resource::OpsWorksTimeBasedAutoScalingType#monday monday}
      # {Model::Template::Resource::OpsWorksTimeBasedAutoScalingType#saturday saturday}
      # {Model::Template::Resource::OpsWorksTimeBasedAutoScalingType#sunday sunday}
      # {Model::Template::Resource::OpsWorksTimeBasedAutoScalingType#thursday thursday}
      # {Model::Template::Resource::OpsWorksTimeBasedAutoScalingType#tuesday tuesday}
      # {Model::Template::Resource::OpsWorksTimeBasedAutoScalingType#wednesday wednesday}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html 
      # @see {Model::Template::Resource::OpsWorksTimeBasedAutoScalingType}
      def opsworks_timebasedautoscaling_type(name, &block)
        r = Model::Template::Resource::OpsWorksTimeBasedAutoScalingType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

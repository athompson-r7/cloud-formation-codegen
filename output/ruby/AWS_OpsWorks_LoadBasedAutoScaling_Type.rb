require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS OpsWorks LoadBasedAutoScaling
      Type
        # AWS_OpsWorks_LoadBasedAutoScaling_Type
        ##
        class OpsWorksLoadBasedAutoScalingType < Resource


          # @!scope class
          # @attribute [w]
          # DownScaling
          # The threshold below which the instances are scaled down (stopped). If the load                   falls below this threshold for a specified amount of time, AWS OpsWorks stops a specified                   number of instances. -- WIP 
          # @note Required: No
          # @see  
          property :down_scaling, 'DownScaling'

          # @!scope class
          # @attribute [w]
          # Enable
          # Whether to enable automatic load-based scaling for the layer. -- WIP 
          # @note Required: No
          # @see  
          property :enable, 'Enable'

          # @!scope class
          # @attribute [w]
          # UpScaling
          # The threshold above which the instances are scaled up (added). If the load                   exceeds this thresholds for a specified amount of time, AWS OpsWorks starts a specified                   number of instances. -- WIP 
          # @note Required: No
          # @see  
          property :up_scaling, 'UpScaling'


          def initialize(*args)
            super
            type 'OpsWorksLoadBasedAutoScalingType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::OpsWorksLoadBasedAutoScalingType#down_scaling down_scaling}
      # {Model::Template::Resource::OpsWorksLoadBasedAutoScalingType#enable enable}
      # {Model::Template::Resource::OpsWorksLoadBasedAutoScalingType#up_scaling up_scaling}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html 
      # @see {Model::Template::Resource::OpsWorksLoadBasedAutoScalingType}
      def opsworks_loadbasedautoscaling_type(name, &block)
        r = Model::Template::Resource::OpsWorksLoadBasedAutoScalingType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

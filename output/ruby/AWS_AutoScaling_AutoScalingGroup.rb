require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::AutoScaling::AutoScalingGroup
        # AWS_AutoScaling_AutoScalingGroup
        ##
        class AutoScalingAutoScalingGroup < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # Cooldown
          # The number of seconds after a scaling activity is completed before any further                   scaling activities can start. -- WIP 
          # @note Required: No
          # @see  
          property :cooldown, 'Cooldown'

          # @!scope class
          # @attribute [w]
          # DesiredCapacity
          # Specifies the desired capacity for the Auto Scaling group. -- WIP 
          # @note Required: No
          # @see  
          property :desired_capacity, 'DesiredCapacity'

          # @!scope class
          # @attribute [w]
          # HealthCheckGracePeriod
          # The length of time in seconds after a new EC2 instance comes into service that                   Auto Scaling starts checking its health. -- WIP 
          # @note Required: No
          # @see  
          property :health_check_grace_period, 'HealthCheckGracePeriod'

          # @!scope class
          # @attribute [w]
          # HealthCheckType
          # The service you want the health status from, Amazon EC2 or Elastic Load                   Balancer. Valid values are EC2 or ELB. -- WIP 
          # @note Required: No
          # @see  
          property :health_check_type, 'HealthCheckType'

          # @!scope class
          # @attribute [w]
          # InstanceId
          # The ID of the Amazon EC2 instance you want to use to create the Auto Scaling group. Use this                   property if you want to create an Auto Scaling group that uses an existing Amazon EC2 instance                   instead of a launch configuration. -- WIP 
          # @note Required: Conditional. You must specify this property if you don't specify the                      LaunchConfigurationName property.
          # @see  
          property :instance_id, 'InstanceId'

          # @!scope class
          # @attribute [w]
          # LaunchConfigurationName
          # Specifies the name of the associated AWS::AutoScaling::LaunchConfiguration. -- WIP 
          # @note Required: Conditional; you must specify this property if                   you don't specify the InstanceId property.
          # @see  
          property :launch_configuration_name, 'LaunchConfigurationName'

          # @!scope class
          # @attribute [w]
          # MaxSize
          # The maximum size of the Auto Scaling group. -- WIP 
          # @note Required: Yes
          # @see  
          property :max_size, 'MaxSize'

          # @!scope class
          # @attribute [w]
          # MinSize
          # The minimum size of the Auto Scaling group. -- WIP 
          # @note Required: Yes
          # @see  
          property :min_size, 'MinSize'

          # @!scope class
          # @attribute [w]
          # PlacementGroup
          # The name of an existing cluster placement group into which you want to launch                   your instances. A placement group is a logical grouping of instances within a                   single Availability Zone. You cannot specify multiple Availability Zones and a                   placement group. -- WIP 
          # @note Required: No
          # @see  
          property :placement_group, 'PlacementGroup'

          # @!scope class
          # @attribute [w]
          # AvailabilityZones
          # Contains a list of availability zones for the group. -- WIP
          # @note Required: Conditional. If you don't specify the VPCZoneIdentifier                   property, you must specify this property.
          # @see 
          property :availability_zones, 'AvailabilityZones', :array

          # @!scope class
          # @attribute [w]
          # LoadBalancerNames
          # A list of load balancers associated with this Auto Scaling group. -- WIP
          # @note Required: No
          # @see 
          property :load_balancer_names, 'LoadBalancerNames', :array

          # @!scope class
          # @attribute [w]
          # MetricsCollection
          # Enables the monitoring of group metrics of an Auto Scaling group. -- WIP
          # @note Required: No
          # @see 
          property :metrics_collection, 'MetricsCollection', :array

          # @!scope class
          # @attribute [w]
          # NotificationConfigurations
          # An embedded property that configures an Auto Scaling group to send notifications when                   specified events take place. -- WIP
          # @note Required: No
          # @see 
          property :notification_configurations, 'NotificationConfigurations', :array

          # @!scope class
          # @attribute [w]
          # Tags
          # The tags you want to attach to this resource. -- WIP
          # @note Required: No
          # @see 
          property :tags, 'Tags', :array

          # @!scope class
          # @attribute [w]
          # TerminationPolicies
          # A policy or a list of policies that are used to select the instances to                   terminate. The policies are executed in the order that you list them. -- WIP
          # @note Required: No
          # @see 
          property :termination_policies, 'TerminationPolicies', :array

          # @!scope class
          # @attribute [w]
          # VPCZoneIdentifier
          # A list of subnet identifiers of Amazon Virtual Private Cloud (Amazon VPCs). -- WIP
          # @note Required: Conditional. If you don't specify the                      AvailabilityZones property, you must specify this                   property.
          # @see 
          property :vpc_zone_identifier, 'VPCZoneIdentifier', :array


          def initialize(*args)
            super
            type 'AutoScalingAutoScalingGroup'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::AutoScalingAutoScalingGroup#cooldown cooldown}
      # {Model::Template::Resource::AutoScalingAutoScalingGroup#desired_capacity desired_capacity}
      # {Model::Template::Resource::AutoScalingAutoScalingGroup#health_check_grace_period health_check_grace_period}
      # {Model::Template::Resource::AutoScalingAutoScalingGroup#health_check_type health_check_type}
      # {Model::Template::Resource::AutoScalingAutoScalingGroup#instance_id instance_id}
      # {Model::Template::Resource::AutoScalingAutoScalingGroup#launch_configuration_name launch_configuration_name}
      # {Model::Template::Resource::AutoScalingAutoScalingGroup#max_size max_size}
      # {Model::Template::Resource::AutoScalingAutoScalingGroup#min_size min_size}
      # {Model::Template::Resource::AutoScalingAutoScalingGroup#placement_group placement_group}
      # {Model::Template::Resource::AutoScalingAutoScalingGroup#availability_zones availability_zones}
      # {Model::Template::Resource::AutoScalingAutoScalingGroup#load_balancer_names load_balancer_names}
      # {Model::Template::Resource::AutoScalingAutoScalingGroup#metrics_collection metrics_collection}
      # {Model::Template::Resource::AutoScalingAutoScalingGroup#notification_configurations notification_configurations}
      # {Model::Template::Resource::AutoScalingAutoScalingGroup#tags tags}
      # {Model::Template::Resource::AutoScalingAutoScalingGroup#termination_policies termination_policies}
      # {Model::Template::Resource::AutoScalingAutoScalingGroup#vpc_zone_identifier vpc_zone_identifier}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html 
      # @see {Model::Template::Resource::AutoScalingAutoScalingGroup}
      def autoscaling_autoscalinggroup(name, &block)
        r = Model::Template::Resource::AutoScalingAutoScalingGroup.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

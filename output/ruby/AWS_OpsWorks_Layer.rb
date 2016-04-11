require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::OpsWorks::Layer
        # AWS_OpsWorks_Layer
        ##
        class OpsWorksLayer < Resource


          # @!scope class
          # @attribute [w]
          # AutoAssignElasticIps
          # Whether to automatically assign an Elastic IP address to Amazon EC2 instances in                   this layer. -- WIP 
          # @note Required: Yes
          # @see  
          property :auto_assign_elastic_ips, 'AutoAssignElasticIps'

          # @!scope class
          # @attribute [w]
          # AutoAssignPublicIps
          # For AWS OpsWorks stacks that are running in a VPC, whether to automatically assign a                   public IP address to Amazon EC2 instances in this layer. -- WIP 
          # @note Required: Yes
          # @see  
          property :auto_assign_public_ips, 'AutoAssignPublicIps'

          # @!scope class
          # @attribute [w]
          # CustomInstanceProfileArn
          # The Amazon Resource Name (ARN) of an IAM instance profile that is to be used                   for the Amazon EC2 instances in this layer. -- WIP 
          # @note Required: No
          # @see  
          property :custom_instance_profile_arn, 'CustomInstanceProfileArn'

          # @!scope class
          # @attribute [w]
          # CustomRecipes
          # Custom event recipes for this layer. -- WIP 
          # @note Required: No
          # @see  
          property :custom_recipes, 'CustomRecipes'

          # @!scope class
          # @attribute [w]
          # EnableAutoHealing
          # Whether to automatically heal Amazon EC2 instances that have become disconnected or                   timed out. -- WIP 
          # @note Required: Yes
          # @see  
          property :enable_auto_healing, 'EnableAutoHealing'

          # @!scope class
          # @attribute [w]
          # InstallUpdatesOnBoot
          # Whether to install operating system and package updates when the instance                   boots. -- WIP 
          # @note Required: No
          # @see  
          property :install_updates_on_boot, 'InstallUpdatesOnBoot'

          # @!scope class
          # @attribute [w]
          # LifecycleEventConfiguration
          # The lifecycle events for the AWS OpsWorks layer. -- WIP 
          # @note Required: No
          # @see  
          property :lifecycle_event_configuration, 'LifecycleEventConfiguration'

          # @!scope class
          # @attribute [w]
          # LoadBasedAutoScaling
          # The load-based scaling configuration for the AWS OpsWorks layer. -- WIP 
          # @note Required: No
          # @see  
          property :load_based_auto_scaling, 'LoadBasedAutoScaling'

          # @!scope class
          # @attribute [w]
          # Name
          # The AWS OpsWorks layer name. -- WIP 
          # @note Required: Yes
          # @see  
          property :name, 'Name'

          # @!scope class
          # @attribute [w]
          # Shortname
          # The layer short name, which is used internally by AWS OpsWorks and by Chef recipes.                   The short name is also used as the name for the directory where your app files are                   installed. -- WIP 
          # @note Required: Yes
          # @see  
          property :shortname, 'Shortname'

          # @!scope class
          # @attribute [w]
          # StackId
          # The ID of the AWS OpsWorks stack that this layer will be associated with. -- WIP 
          # @note Required: Yes
          # @see  
          property :stack_id, 'StackId'

          # @!scope class
          # @attribute [w]
          # Type
          # The layer type. A stack cannot have more than one layer of the same type,                   except for the custom type. You can have any number of                      custom types. For more information, see CreateLayer in the                      AWS OpsWorks API Reference. -- WIP 
          # @note Required: Yes
          # @see  
          property :type, 'Type'

          # @!scope class
          # @attribute [w]
          # Attributes
          # One or more user-defined key-value pairs to be added to the stack attributes                   bag. -- WIP
          # @note Required: No
          # @see 
          property :attributes, 'Attributes', :array

          # @!scope class
          # @attribute [w]
          # CustomSecurityGroupIds
          # Custom security group IDs for this layer. -- WIP
          # @note Required: No
          # @see 
          property :custom_security_group_ids, 'CustomSecurityGroupIds', :array

          # @!scope class
          # @attribute [w]
          # Packages
          # The packages for this layer. -- WIP
          # @note Required: No
          # @see 
          property :packages, 'Packages', :array

          # @!scope class
          # @attribute [w]
          # VolumeConfigurations
          # Describes the Amazon EBS volumes for this layer. -- WIP
          # @note Required: No
          # @see 
          property :volume_configurations, 'VolumeConfigurations', :array


          def initialize(*args)
            super
            type 'OpsWorksLayer'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::OpsWorksLayer#auto_assign_elastic_ips auto_assign_elastic_ips}
      # {Model::Template::Resource::OpsWorksLayer#auto_assign_public_ips auto_assign_public_ips}
      # {Model::Template::Resource::OpsWorksLayer#custom_instance_profile_arn custom_instance_profile_arn}
      # {Model::Template::Resource::OpsWorksLayer#custom_recipes custom_recipes}
      # {Model::Template::Resource::OpsWorksLayer#enable_auto_healing enable_auto_healing}
      # {Model::Template::Resource::OpsWorksLayer#install_updates_on_boot install_updates_on_boot}
      # {Model::Template::Resource::OpsWorksLayer#lifecycle_event_configuration lifecycle_event_configuration}
      # {Model::Template::Resource::OpsWorksLayer#load_based_auto_scaling load_based_auto_scaling}
      # {Model::Template::Resource::OpsWorksLayer#name name}
      # {Model::Template::Resource::OpsWorksLayer#shortname shortname}
      # {Model::Template::Resource::OpsWorksLayer#stack_id stack_id}
      # {Model::Template::Resource::OpsWorksLayer#type type}
      # {Model::Template::Resource::OpsWorksLayer#attributes attributes}
      # {Model::Template::Resource::OpsWorksLayer#custom_security_group_ids custom_security_group_ids}
      # {Model::Template::Resource::OpsWorksLayer#packages packages}
      # {Model::Template::Resource::OpsWorksLayer#volume_configurations volume_configurations}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html 
      # @see {Model::Template::Resource::OpsWorksLayer}
      def opsworks_layer(name, &block)
        r = Model::Template::Resource::OpsWorksLayer.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

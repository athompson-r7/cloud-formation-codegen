require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::OpsWorks::Stack
        # AWS_OpsWorks_Stack
        ##
        class OpsWorksStack < Resource


          # @!scope class
          # @attribute [w]
          # ChefConfiguration
          # Describes the Chef configuration. For more information, see the CreateStack ChefConfiguration parameter in the                      AWS OpsWorks API Reference. -- WIP 
          # @note Required: No
          # @see  
          property :chef_configuration, 'ChefConfiguration'

          # @!scope class
          # @attribute [w]
          # ConfigurationManager
          # Describes the configuration manager. When you create a stack, you use the                   configuration manager to specify the Chef version. For supported Chef versions,                   see the CreateStack ConfigurationManager parameter in the                      AWS OpsWorks API Reference. -- WIP 
          # @note Required: No
          # @see  
          property :configuration_manager, 'ConfigurationManager'

          # @!scope class
          # @attribute [w]
          # CustomCookbooksSource
          # Contains the information required to retrieve a cookbook from a                   repository. -- WIP 
          # @note Required: No
          # @see  
          property :custom_cookbooks_source, 'CustomCookbooksSource'

          # @!scope class
          # @attribute [w]
          # CustomJson
          # A user-defined custom JSON object. The custom JSON is used to override the                   corresponding default stack configuration JSON values. For more information, see                      CreateStack in the                      AWS OpsWorks API Reference. -- WIP 
          # @note Required: No
          # @see  
          property :custom_json, 'CustomJson'

          # @!scope class
          # @attribute [w]
          # DefaultAvailabilityZone
          # The stack's default Availability Zone, which must be in the specified                   region. -- WIP 
          # @note Required: No
          # @see  
          property :default_availability_zone, 'DefaultAvailabilityZone'

          # @!scope class
          # @attribute [w]
          # DefaultInstanceProfileArn
          # The Amazon Resource Name (ARN) of an IAM instance profile that is the default                   profile for all of the stack's Amazon EC2 instances. -- WIP 
          # @note Required: Yes
          # @see  
          property :default_instance_profile_arn, 'DefaultInstanceProfileArn'

          # @!scope class
          # @attribute [w]
          # DefaultOs
          # The stack's default operating system. For more information, see CreateStack in the                      AWS OpsWorks API Reference. -- WIP 
          # @note Required: No
          # @see  
          property :default_os, 'DefaultOs'

          # @!scope class
          # @attribute [w]
          # DefaultRootDeviceType
          # The default root device type. This value is used by default for all instances                   in the stack, but you can override it when you create an instance. For more                   information, see CreateStack in the AWS OpsWorks API Reference. -- WIP 
          # @note Required: No
          # @see  
          property :default_root_device_type, 'DefaultRootDeviceType'

          # @!scope class
          # @attribute [w]
          # DefaultSshKeyName
          # A default SSH key for the stack instances. You can override this value when you                   create or update an instance. -- WIP 
          # @note Required: No
          # @see  
          property :default_ssh_key_name, 'DefaultSshKeyName'

          # @!scope class
          # @attribute [w]
          # DefaultSubnetId
          # The stack's default subnet ID. All instances are launched into this subnet                   unless you specify another subnet ID when you create the instance. -- WIP 
          # @note Required: Conditional. If you specify the VpcId property, you                   must specify this property.
          # @see  
          property :default_subnet_id, 'DefaultSubnetId'

          # @!scope class
          # @attribute [w]
          # HostnameTheme
          # The stack's host name theme, with spaces replaced by underscores. The theme is                   used to generate host names for the stack's instances. For more information, see                      CreateStack in the                      AWS OpsWorks API Reference. -- WIP 
          # @note Required: No
          # @see  
          property :hostname_theme, 'HostnameTheme'

          # @!scope class
          # @attribute [w]
          # Name
          # The name of the AWS OpsWorks stack. -- WIP 
          # @note Required: Yes
          # @see  
          property :name, 'Name'

          # @!scope class
          # @attribute [w]
          # ServiceRoleArn
          # The AWS Identity and Access Management (IAM) role that AWS OpsWorks uses to work with AWS resources on your                   behalf. You must specify an Amazon Resource Name (ARN) for an existing IAM                   role. -- WIP 
          # @note Required: Yes
          # @see  
          property :service_role_arn, 'ServiceRoleArn'

          # @!scope class
          # @attribute [w]
          # UseCustomCookbooks
          # Whether the stack uses custom cookbooks. -- WIP 
          # @note Required: No
          # @see  
          property :use_custom_cookbooks, 'UseCustomCookbooks'

          # @!scope class
          # @attribute [w]
          # UseOpsworksSecurityGroups
          # Whether to associate the AWS OpsWorks built-in security groups with the stack's                   layers. -- WIP 
          # @note Required: No
          # @see  
          property :use_opsworks_security_groups, 'UseOpsworksSecurityGroups'

          # @!scope class
          # @attribute [w]
          # VpcId
          # The ID of the VPC that the stack is to be launched into, which must be in the                   specified region. All instances are launched into this VPC. If you specify this                   property, you must specify the DefaultSubnetId property. -- WIP 
          # @note Required: No
          # @see  
          property :vpc_id, 'VpcId'

          # @!scope class
          # @attribute [w]
          # Attributes
          # One or more user-defined key-value pairs to be added to the stack attributes                   bag. -- WIP
          # @note Required: No
          # @see 
          property :attributes, 'Attributes', :array


          def initialize(*args)
            super
            type 'OpsWorksStack'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::OpsWorksStack#chef_configuration chef_configuration}
      # {Model::Template::Resource::OpsWorksStack#configuration_manager configuration_manager}
      # {Model::Template::Resource::OpsWorksStack#custom_cookbooks_source custom_cookbooks_source}
      # {Model::Template::Resource::OpsWorksStack#custom_json custom_json}
      # {Model::Template::Resource::OpsWorksStack#default_availability_zone default_availability_zone}
      # {Model::Template::Resource::OpsWorksStack#default_instance_profile_arn default_instance_profile_arn}
      # {Model::Template::Resource::OpsWorksStack#default_os default_os}
      # {Model::Template::Resource::OpsWorksStack#default_root_device_type default_root_device_type}
      # {Model::Template::Resource::OpsWorksStack#default_ssh_key_name default_ssh_key_name}
      # {Model::Template::Resource::OpsWorksStack#default_subnet_id default_subnet_id}
      # {Model::Template::Resource::OpsWorksStack#hostname_theme hostname_theme}
      # {Model::Template::Resource::OpsWorksStack#name name}
      # {Model::Template::Resource::OpsWorksStack#service_role_arn service_role_arn}
      # {Model::Template::Resource::OpsWorksStack#use_custom_cookbooks use_custom_cookbooks}
      # {Model::Template::Resource::OpsWorksStack#use_opsworks_security_groups use_opsworks_security_groups}
      # {Model::Template::Resource::OpsWorksStack#vpc_id vpc_id}
      # {Model::Template::Resource::OpsWorksStack#attributes attributes}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html 
      # @see {Model::Template::Resource::OpsWorksStack}
      def opsworks_stack(name, &block)
        r = Model::Template::Resource::OpsWorksStack.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

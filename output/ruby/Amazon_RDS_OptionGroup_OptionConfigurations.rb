require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon RDS OptionGroup
    OptionConfigurations
        # Amazon_RDS_OptionGroup_OptionConfigurations
        ##
        class RDSOptionGroupOptionConfigurations < Resource


          # @!scope class
          # @attribute [w]
          # OptionName
          # The name of the option. For more information about options, see Working with Option               Groups in the Amazon Relational Database Service User               Guide. -- WIP 
          # @note Required: Yes
          # @see  
          property :option_name, 'OptionName'

          # @!scope class
          # @attribute [w]
          # OptionSettings
          # The settings for this option. -- WIP 
          # @note Required: No
          # @see  
          property :option_settings, 'OptionSettings'

          # @!scope class
          # @attribute [w]
          # Port
          # The port number that this option uses. -- WIP 
          # @note Required: No
          # @see  
          property :port, 'Port'

          # @!scope class
          # @attribute [w]
          # DBSecurityGroupMemberships
          # A list of database security group names for this option. If the option requires             access to a port, the security groups must allow access to that port. If you specify             this property, don't specify the VPCSecurityGroupMemberships             property. -- WIP
          # @note Required: No
          # @see 
          property :db_security_group_memberships, 'DBSecurityGroupMemberships', :array

          # @!scope class
          # @attribute [w]
          # VpcSecurityGroupMemberships
          # A list of VPC security group IDs for this option. If the option requires access to a             port, the security groups must allow access to that port. If you specify this property,             don't specify the DBSecurityGroupMemberships property. -- WIP
          # @note Required: No
          # @see 
          property :vpc_security_group_memberships, 'VpcSecurityGroupMemberships', :array


          def initialize(*args)
            super
            type 'RDSOptionGroupOptionConfigurations'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::RDSOptionGroupOptionConfigurations#option_name option_name}
      # {Model::Template::Resource::RDSOptionGroupOptionConfigurations#option_settings option_settings}
      # {Model::Template::Resource::RDSOptionGroupOptionConfigurations#port port}
      # {Model::Template::Resource::RDSOptionGroupOptionConfigurations#db_security_group_memberships db_security_group_memberships}
      # {Model::Template::Resource::RDSOptionGroupOptionConfigurations#vpc_security_group_memberships vpc_security_group_memberships}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations.html 
      # @see {Model::Template::Resource::RDSOptionGroupOptionConfigurations}
      def rds_optiongroup_optionconfigurations(name, &block)
        r = Model::Template::Resource::RDSOptionGroupOptionConfigurations.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

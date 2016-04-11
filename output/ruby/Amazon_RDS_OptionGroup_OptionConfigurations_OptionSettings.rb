require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon RDS
    OptionGroup OptionConfigurations OptionSettings
        # Amazon_RDS_OptionGroup_OptionConfigurations_OptionSettings
        ##
        class RDSOptionGroupOptionConfigurationsOptionSettings < Resource


          # @!scope class
          # @attribute [w]
          # Name
          # The name of the option setting that you want to specify. -- WIP 
          # @note Required: No
          # @see  
          property :name, 'Name'

          # @!scope class
          # @attribute [w]
          # Value
          # The value of the option setting. -- WIP 
          # @note Required: No
          # @see  
          property :value, 'Value'


          def initialize(*args)
            super
            type 'RDSOptionGroupOptionConfigurationsOptionSettings'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::RDSOptionGroupOptionConfigurationsOptionSettings#name name}
      # {Model::Template::Resource::RDSOptionGroupOptionConfigurationsOptionSettings#value value}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-optiongroup-optionconfigurations-optionsettings.html 
      # @see {Model::Template::Resource::RDSOptionGroupOptionConfigurationsOptionSettings}
      def rds_optiongroup_optionconfigurations_optionsettings(name, &block)
        r = Model::Template::Resource::RDSOptionGroupOptionConfigurationsOptionSettings.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

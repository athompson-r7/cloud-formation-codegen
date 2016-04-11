require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS OpsWorks
      StackConfigurationManager Type
        # AWS_OpsWorks_StackConfigurationManager_Type
        ##
        class OpsWorksStackConfigurationManagerType < Resource


          # @!scope class
          # @attribute [w]
          # Name
          # The name of the configuration manager. -- WIP 
          # @note Required: No
          # @see  
          property :name, 'Name'

          # @!scope class
          # @attribute [w]
          # Version
          # The Chef version. -- WIP 
          # @note Required: No
          # @see  
          property :version, 'Version'


          def initialize(*args)
            super
            type 'OpsWorksStackConfigurationManagerType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::OpsWorksStackConfigurationManagerType#name name}
      # {Model::Template::Resource::OpsWorksStackConfigurationManagerType#version version}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-stackconfigmanager.html 
      # @see {Model::Template::Resource::OpsWorksStackConfigurationManagerType}
      def opsworks_stackconfigurationmanager_type(name, &block)
        r = Model::Template::Resource::OpsWorksStackConfigurationManagerType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

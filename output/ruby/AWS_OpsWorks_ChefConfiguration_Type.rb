require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS OpsWorks ChefConfiguration
      Type
        # AWS_OpsWorks_ChefConfiguration_Type
        ##
        class OpsWorksChefConfigurationType < Resource


          # @!scope class
          # @attribute [w]
          # BerkshelfVersion
          # The Berkshelf version. -- WIP 
          # @note Required: No
          # @see  
          property :berkshelf_version, 'BerkshelfVersion'

          # @!scope class
          # @attribute [w]
          # ManageBerkshelf
          # Whether to enable Berkshelf. -- WIP 
          # @note Required: No
          # @see  
          property :manage_berkshelf, 'ManageBerkshelf'


          def initialize(*args)
            super
            type 'OpsWorksChefConfigurationType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::OpsWorksChefConfigurationType#berkshelf_version berkshelf_version}
      # {Model::Template::Resource::OpsWorksChefConfigurationType#manage_berkshelf manage_berkshelf}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-chefconfiguration.html 
      # @see {Model::Template::Resource::OpsWorksChefConfigurationType}
      def opsworks_chefconfiguration_type(name, &block)
        r = Model::Template::Resource::OpsWorksChefConfigurationType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

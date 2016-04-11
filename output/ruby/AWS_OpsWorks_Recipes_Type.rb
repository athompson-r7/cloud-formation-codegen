require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS OpsWorks Recipes Type
        # AWS_OpsWorks_Recipes_Type
        ##
        class OpsWorksRecipesType < Resource


          # @!scope class
          # @attribute [w]
          # Configure
          # Custom recipe names to be run following a Configure event. The event occurs on                   all of the stack's instances when an instance enters or leaves the online                   state. -- WIP
          # @note Required: No
          # @see 
          property :configure, 'Configure', :array

          # @!scope class
          # @attribute [w]
          # Deploy
          # Custom recipe names to be run following a Deploy event. The event occurs when                   you run a deploy command, typically to deploy an application to a set                   of application server instances. -- WIP
          # @note Required: No
          # @see 
          property :deploy, 'Deploy', :array

          # @!scope class
          # @attribute [w]
          # Setup
          # Custom recipe names to be run following a Setup event. This event                   occurs on a new instance after it successfully boots. -- WIP
          # @note Required: No
          # @see 
          property :setup, 'Setup', :array

          # @!scope class
          # @attribute [w]
          # Shutdown
          # Custom recipe names to be run following a Shutdown event. This                   event occurs after you direct AWS OpsWorks to shut an instance down before the associated                   Amazon EC2 instance is actually terminated. -- WIP
          # @note Required: No
          # @see 
          property :shutdown, 'Shutdown', :array

          # @!scope class
          # @attribute [w]
          # Undeploy
          # Custom recipe names to be run following a Undeploy event. This                   event occurs when you delete an app or run an undeploy command to                   remove an app from a set of application server instances. -- WIP
          # @note Required: No
          # @see 
          property :undeploy, 'Undeploy', :array


          def initialize(*args)
            super
            type 'OpsWorksRecipesType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::OpsWorksRecipesType#configure configure}
      # {Model::Template::Resource::OpsWorksRecipesType#deploy deploy}
      # {Model::Template::Resource::OpsWorksRecipesType#setup setup}
      # {Model::Template::Resource::OpsWorksRecipesType#shutdown shutdown}
      # {Model::Template::Resource::OpsWorksRecipesType#undeploy undeploy}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html 
      # @see {Model::Template::Resource::OpsWorksRecipesType}
      def opsworks_recipes_type(name, &block)
        r = Model::Template::Resource::OpsWorksRecipesType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

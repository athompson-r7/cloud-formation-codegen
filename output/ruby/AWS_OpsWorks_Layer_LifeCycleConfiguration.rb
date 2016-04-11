require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS OpsWorks Layer
      LifeCycleConfiguration
        # AWS_OpsWorks_Layer_LifeCycleConfiguration
        ##
        class OpsWorksLayerLifeCycleConfiguration < Resource


          # @!scope class
          # @attribute [w]
          # ShutdownEventConfiguration
          # Specifies the shutdown event configuration for a layer. -- WIP 
          # @note Required: No
          # @see  
          property :shutdown_event_configuration, 'ShutdownEventConfiguration'


          def initialize(*args)
            super
            type 'OpsWorksLayerLifeCycleConfiguration'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::OpsWorksLayerLifeCycleConfiguration#shutdown_event_configuration shutdown_event_configuration}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-lifecycleeventconfiguration.html 
      # @see {Model::Template::Resource::OpsWorksLayerLifeCycleConfiguration}
      def opsworks_layer_lifecycleconfiguration(name, &block)
        r = Model::Template::Resource::OpsWorksLayerLifeCycleConfiguration.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

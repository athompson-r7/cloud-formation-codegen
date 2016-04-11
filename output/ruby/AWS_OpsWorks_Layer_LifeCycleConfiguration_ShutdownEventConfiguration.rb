require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS OpsWorks Layer LifeCycleConfiguration ShutdownEventConfiguration
        # AWS_OpsWorks_Layer_LifeCycleConfiguration_ShutdownEventConfiguration
        ##
        class OpsWorksLayerLifeCycleConfigurationShutdownEventConfiguration < Resource


          # @!scope class
          # @attribute [w]
          # DelayUntilElbConnectionsDrained
          # Indicates whether to wait for connections to drain from the Elastic Load Balancing load                   balancers. -- WIP 
          # @note Required: No
          # @see  
          property :delay_until_elb_connections_drained, 'DelayUntilElbConnectionsDrained'

          # @!scope class
          # @attribute [w]
          # ExecutionTimeout
          # The time, in seconds, that AWS OpsWorks waits after a shutdown event has been                   triggered before shutting down an instance. -- WIP 
          # @note Required: No
          # @see  
          property :execution_timeout, 'ExecutionTimeout'


          def initialize(*args)
            super
            type 'OpsWorksLayerLifeCycleConfigurationShutdownEventConfiguration'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::OpsWorksLayerLifeCycleConfigurationShutdownEventConfiguration#delay_until_elb_connections_drained delay_until_elb_connections_drained}
      # {Model::Template::Resource::OpsWorksLayerLifeCycleConfigurationShutdownEventConfiguration#execution_timeout execution_timeout}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-lifecycleeventconfiguration-shutdowneventconfiguration.html 
      # @see {Model::Template::Resource::OpsWorksLayerLifeCycleConfigurationShutdownEventConfiguration}
      def opsworks_layer_lifecycleconfiguration_shutdowneventconfiguration(name, &block)
        r = Model::Template::Resource::OpsWorksLayerLifeCycleConfigurationShutdownEventConfiguration.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

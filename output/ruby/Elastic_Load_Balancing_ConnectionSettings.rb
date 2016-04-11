require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Elastic Load Balancing ConnectionSettings
        # Elastic_Load_Balancing_ConnectionSettings
        ##
        class LoadBalancingConnectionSettings < Resource


          # @!scope class
          # @attribute [w]
          # IdleTimeout
          # The time (in seconds) that a connection to the load balancer can remain idle,                   which means no data is sent over the connection. After the specified time, the                   load balancer closes the connection. -- WIP 
          # @note Required: Yes
          # @see  
          property :idle_timeout, 'IdleTimeout'


          def initialize(*args)
            super
            type 'LoadBalancingConnectionSettings'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::LoadBalancingConnectionSettings#idle_timeout idle_timeout}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectionsettings.html 
      # @see {Model::Template::Resource::LoadBalancingConnectionSettings}
      def load_balancing_connectionsettings(name, &block)
        r = Model::Template::Resource::LoadBalancingConnectionSettings.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

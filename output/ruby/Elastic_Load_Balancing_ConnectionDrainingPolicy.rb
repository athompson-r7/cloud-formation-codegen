require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Elastic Load Balancing
      ConnectionDrainingPolicy
        # Elastic_Load_Balancing_ConnectionDrainingPolicy
        ##
        class LoadBalancingConnectionDrainingPolicy < Resource


          # @!scope class
          # @attribute [w]
          # Enabled
          # Whether or not connection draining is enabled for the load balancer. -- WIP 
          # @note Required: Yes
          # @see  
          property :enabled, 'Enabled'

          # @!scope class
          # @attribute [w]
          # Timeout
          # The time in seconds after the load balancer closes all connections to a                   deregistered or unhealthy instance. -- WIP 
          # @note Required: No
          # @see  
          property :timeout, 'Timeout'


          def initialize(*args)
            super
            type 'LoadBalancingConnectionDrainingPolicy'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::LoadBalancingConnectionDrainingPolicy#enabled enabled}
      # {Model::Template::Resource::LoadBalancingConnectionDrainingPolicy#timeout timeout}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html 
      # @see {Model::Template::Resource::LoadBalancingConnectionDrainingPolicy}
      def load_balancing_connectiondrainingpolicy(name, &block)
        r = Model::Template::Resource::LoadBalancingConnectionDrainingPolicy.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

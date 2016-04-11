require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon EC2 Container Service Service
      LoadBalancers
        # Amazon_EC2_Container_Service_Service_LoadBalancers
        ##
        class EC2ContainerServiceServiceLoadBalancers < Resource


          # @!scope class
          # @attribute [w]
          # ContainerName
          # The name of a container to use with the load balancer. -- WIP 
          # @note Required: No
          # @see  
          property :container_name, 'ContainerName'

          # @!scope class
          # @attribute [w]
          # ContainerPort
          # The port number on the container to direct load balancer traffic to. Your                   container instances must allow ingress traffic on this port. -- WIP 
          # @note Required: No
          # @see  
          property :container_port, 'ContainerPort'

          # @!scope class
          # @attribute [w]
          # LoadBalancerName
          # The name of the load balancer to associated with the Amazon ECS service. -- WIP 
          # @note Required: No
          # @see  
          property :load_balancer_name, 'LoadBalancerName'


          def initialize(*args)
            super
            type 'EC2ContainerServiceServiceLoadBalancers'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2ContainerServiceServiceLoadBalancers#container_name container_name}
      # {Model::Template::Resource::EC2ContainerServiceServiceLoadBalancers#container_port container_port}
      # {Model::Template::Resource::EC2ContainerServiceServiceLoadBalancers#load_balancer_name load_balancer_name}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html 
      # @see {Model::Template::Resource::EC2ContainerServiceServiceLoadBalancers}
      def ec2_container_service_service_loadbalancers(name, &block)
        r = Model::Template::Resource::EC2ContainerServiceServiceLoadBalancers.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

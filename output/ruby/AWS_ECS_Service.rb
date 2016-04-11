require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::ECS::Service
        # AWS_ECS_Service
        ##
        class ECSService < Resource


          # @!scope class
          # @attribute [w]
          # Cluster
          # The name or Amazon Resource Name (ARN) of the cluster that you want to run your                   service on. If you do not specify a cluster, Amazon ECS uses the default                   cluster. -- WIP 
          # @note Required: No
          # @see  
          property :cluster, 'Cluster'

          # @!scope class
          # @attribute [w]
          # DesiredCount
          # The number of simultaneous tasks, which you specify by using the                      TaskDefinition property, that you want to run on the                   cluster. -- WIP 
          # @note Required: Yes
          # @see  
          property :desired_count, 'DesiredCount'

          # @!scope class
          # @attribute [w]
          # Role
          # The name or ARN of an AWS Identity and Access Management (IAM) role that allows your Amazon ECS container                   agent to make calls to your load balancer. -- WIP 
          # @note Required: Conditional. This parameter is required only if you specify the                      LoadBalancers property.
          # @see  
          property :role, 'Role'

          # @!scope class
          # @attribute [w]
          # TaskDefinition
          # The family, family and revision                      (family:revision), or ARN                   of the task definition that you want to run on the cluster. -- WIP 
          # @note Required: Yes
          # @see  
          property :task_definition, 'TaskDefinition'

          # @!scope class
          # @attribute [w]
          # LoadBalancers
          # A list of load balancer objects to associate with the cluster. -- WIP
          # @note Required: No
          # @see 
          property :load_balancers, 'LoadBalancers', :array


          def initialize(*args)
            super
            type 'ECSService'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::ECSService#cluster cluster}
      # {Model::Template::Resource::ECSService#desired_count desired_count}
      # {Model::Template::Resource::ECSService#role role}
      # {Model::Template::Resource::ECSService#task_definition task_definition}
      # {Model::Template::Resource::ECSService#load_balancers load_balancers}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html 
      # @see {Model::Template::Resource::ECSService}
      def ecs_service(name, &block)
        r = Model::Template::Resource::ECSService.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

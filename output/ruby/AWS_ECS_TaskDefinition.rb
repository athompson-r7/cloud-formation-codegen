require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::ECS::TaskDefinition
        # AWS_ECS_TaskDefinition
        ##
        class ECSTaskDefinition < Resource


          # @!scope class
          # @attribute [w]
          # ContainerDefinitions
          # A list of container definitions in JSON format that describe the containers             that make up your task. -- WIP
          # @note Required: Yes
          # @see 
          property :container_definitions, 'ContainerDefinitions', :array

          # @!scope class
          # @attribute [w]
          # Volumes
          # A list of volume definitions in JSON format for volumes that you can use in             your container definitions. -- WIP
          # @note Required: Yes
          # @see 
          property :volumes, 'Volumes', :array


          def initialize(*args)
            super
            type 'ECSTaskDefinition'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::ECSTaskDefinition#container_definitions container_definitions}
      # {Model::Template::Resource::ECSTaskDefinition#volumes volumes}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html 
      # @see {Model::Template::Resource::ECSTaskDefinition}
      def ecs_taskdefinition(name, &block)
        r = Model::Template::Resource::ECSTaskDefinition.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

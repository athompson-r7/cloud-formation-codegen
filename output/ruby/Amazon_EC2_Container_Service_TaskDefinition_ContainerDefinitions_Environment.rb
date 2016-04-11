require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon EC2 Container Service
      TaskDefinition ContainerDefinitions Environment
        # Amazon_EC2_Container_Service_TaskDefinition_ContainerDefinitions_Environment
        ##
        class EC2ContainerServiceTaskDefinitionContainerDefinitionsEnvironment < Resource


          # @!scope class
          # @attribute [w]
          # Name
          # The name of the environment variable. -- WIP 
          # @note Required: Yes
          # @see  
          property :name, 'Name'

          # @!scope class
          # @attribute [w]
          # Value
          # The value of the environment variable. -- WIP 
          # @note Required: Yes
          # @see  
          property :value, 'Value'


          def initialize(*args)
            super
            type 'EC2ContainerServiceTaskDefinitionContainerDefinitionsEnvironment'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitionsEnvironment#name name}
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitionsEnvironment#value value}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-environment.html 
      # @see {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitionsEnvironment}
      def ec2_container_service_taskdefinition_containerdefinitions_environment(name, &block)
        r = Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitionsEnvironment.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

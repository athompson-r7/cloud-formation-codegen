require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon EC2 Container Service
      TaskDefinition ContainerDefinitions PortMappings
        # Amazon_EC2_Container_Service_TaskDefinition_ContainerDefinitions_PortMappings
        ##
        class EC2ContainerServiceTaskDefinitionContainerDefinitionsPortMappings < Resource


          # @!scope class
          # @attribute [w]
          # ContainerPort
          # The port number on the container that is bound to the host port. -- WIP 
          # @note Required: Yes
          # @see  
          property :container_port, 'ContainerPort'

          # @!scope class
          # @attribute [w]
          # HostPort
          # The host port number on the container instance that you want to reserve for                   your container. You can specify a non-reserved host port for your container port                   mapping, or you can omit the host port (or set it to 0). If you                   specify a container port but no host port, your container port is automatically                   assigned a host port in the 49153 to 65535 port                   range. -- WIP 
          # @note Required: No
          # @see  
          property :host_port, 'HostPort'


          def initialize(*args)
            super
            type 'EC2ContainerServiceTaskDefinitionContainerDefinitionsPortMappings'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitionsPortMappings#container_port container_port}
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitionsPortMappings#host_port host_port}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-portmappings.html 
      # @see {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitionsPortMappings}
      def ec2_container_service_taskdefinition_containerdefinitions_portmappings(name, &block)
        r = Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitionsPortMappings.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

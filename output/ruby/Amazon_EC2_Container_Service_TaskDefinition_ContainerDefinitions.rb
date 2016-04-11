require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon EC2 Container Service TaskDefinition
      ContainerDefinitions
        # Amazon_EC2_Container_Service_TaskDefinition_ContainerDefinitions
        ##
        class EC2ContainerServiceTaskDefinitionContainerDefinitions < Resource


          # @!scope class
          # @attribute [w]
          # Cpu
          # The minimum number of CPU units to reserve for the container. Containers                         share unallocated CPU units with other containers on the instance by using                         the same ratio as their allocated CPU units. -- WIP 
          # @note Required: No
          # @see  
          property :cpu, 'Cpu'

          # @!scope class
          # @attribute [w]
          # Essential
          # Indicates whether the task stops if this container fails. If you specify                             true and the container fails, all other                         containers in the task stop. If you specify false and                         the container fails, none of the other containers in the task are affected.                         This value is true by default. -- WIP 
          # @note Required: No
          # @see  
          property :essential, 'Essential'

          # @!scope class
          # @attribute [w]
          # Image
          # The image to use for a container, which is passed directly to the Docker                         daemon. You can use images in the Docker Hub registry or specify other                         repositories                             (repository-url/image:tag). -- WIP 
          # @note Required: Yes
          # @see  
          property :image, 'Image'

          # @!scope class
          # @attribute [w]
          # Memory
          # The number of MiB of memory to reserve for the container. If your                         container attempts to exceed the allocated memory, the container is                         killed. -- WIP 
          # @note Required: Yes
          # @see  
          property :memory, 'Memory'

          # @!scope class
          # @attribute [w]
          # Name
          # A name for the container. -- WIP 
          # @note Required: Yes
          # @see  
          property :name, 'Name'

          # @!scope class
          # @attribute [w]
          # Command
          # The CMD value to pass to the container. For more information                         about the Docker CMD parameter, see https://docs.docker.com/reference/builder/#cmd. -- WIP
          # @note Required: No
          # @see 
          property :command, 'Command', :array

          # @!scope class
          # @attribute [w]
          # EntryPoint
          # The ENTRYPOINT value to pass to the container. For more                         information about the Docker ENTRYPOINT parameter, see https://docs.docker.com/reference/builder/#entrypoint. -- WIP
          # @note Required: No
          # @see 
          property :entry_point, 'EntryPoint', :array

          # @!scope class
          # @attribute [w]
          # Environment
          # The environment variables to pass to the container. -- WIP
          # @note Required: No
          # @see 
          property :environment, 'Environment', :array

          # @!scope class
          # @attribute [w]
          # Links
          # The name of another container to connect to. With links, containers can                         communicate with each other without using port mappings. -- WIP
          # @note Required: No
          # @see 
          property :links, 'Links', :array

          # @!scope class
          # @attribute [w]
          # MountPoints
          # The mount points for data volumes in the container. -- WIP
          # @note Required: No
          # @see 
          property :mount_points, 'MountPoints', :array

          # @!scope class
          # @attribute [w]
          # PortMappings
          # A mapping of the container port to a host port. Port mappings enable                         containers to access ports on the host container instance to send or receive                         traffic. -- WIP
          # @note Required: No
          # @see 
          property :port_mappings, 'PortMappings', :array

          # @!scope class
          # @attribute [w]
          # VolumesFrom
          # Data volumes to mount from another container. -- WIP
          # @note Required: No
          # @see 
          property :volumes_from, 'VolumesFrom', :array


          def initialize(*args)
            super
            type 'EC2ContainerServiceTaskDefinitionContainerDefinitions'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitions#cpu cpu}
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitions#essential essential}
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitions#image image}
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitions#memory memory}
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitions#name name}
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitions#command command}
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitions#entry_point entry_point}
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitions#environment environment}
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitions#links links}
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitions#mount_points mount_points}
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitions#port_mappings port_mappings}
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitions#volumes_from volumes_from}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html 
      # @see {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitions}
      def ec2_container_service_taskdefinition_containerdefinitions(name, &block)
        r = Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitions.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

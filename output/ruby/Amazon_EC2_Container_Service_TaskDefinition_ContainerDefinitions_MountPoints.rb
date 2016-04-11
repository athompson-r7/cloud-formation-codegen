require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon EC2 Container Service
      TaskDefinition ContainerDefinitions MountPoints
        # Amazon_EC2_Container_Service_TaskDefinition_ContainerDefinitions_MountPoints
        ##
        class EC2ContainerServiceTaskDefinitionContainerDefinitionsMountPoints < Resource


          # @!scope class
          # @attribute [w]
          # ContainerPath
          # The path on the container that indicates where you want to mount the                   volume. -- WIP 
          # @note Required: Yes
          # @see  
          property :container_path, 'ContainerPath'

          # @!scope class
          # @attribute [w]
          # SourceVolume
          # The name of the volume to mount. -- WIP 
          # @note Required: Yes
          # @see  
          property :source_volume, 'SourceVolume'

          # @!scope class
          # @attribute [w]
          # ReadOnly
          # Indicates whether the container can write to the volume. If you specify                      true, the container has read-only access to the volume.                   If you specify false, the container can write to the                   volume. By default, the value is false. -- WIP 
          # @note Required: No
          # @see  
          property :read_only, 'ReadOnly'


          def initialize(*args)
            super
            type 'EC2ContainerServiceTaskDefinitionContainerDefinitionsMountPoints'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitionsMountPoints#container_path container_path}
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitionsMountPoints#source_volume source_volume}
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitionsMountPoints#read_only read_only}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-mountpoints.html 
      # @see {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitionsMountPoints}
      def ec2_container_service_taskdefinition_containerdefinitions_mountpoints(name, &block)
        r = Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitionsMountPoints.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

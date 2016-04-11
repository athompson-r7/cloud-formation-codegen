require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon EC2 Container Service
      TaskDefinition ContainerDefinitions VolumesFrom
        # Amazon_EC2_Container_Service_TaskDefinition_ContainerDefinitions_VolumesFrom
        ##
        class EC2ContainerServiceTaskDefinitionContainerDefinitionsVolumesFrom < Resource


          # @!scope class
          # @attribute [w]
          # SourceContainer
          # The name of the container that has the volumes to mount. -- WIP 
          # @note Required: Yes
          # @see  
          property :source_container, 'SourceContainer'

          # @!scope class
          # @attribute [w]
          # ReadOnly
          # Indicates whether the container can write to the volume. If you specify                      true, the container has read-only access to the volume.                   If you specify false, the container can write to the                   volume. By default, the value is false. -- WIP 
          # @note Required: No
          # @see  
          property :read_only, 'ReadOnly'


          def initialize(*args)
            super
            type 'EC2ContainerServiceTaskDefinitionContainerDefinitionsVolumesFrom'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitionsVolumesFrom#source_container source_container}
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitionsVolumesFrom#read_only read_only}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-volumesfrom.html 
      # @see {Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitionsVolumesFrom}
      def ec2_container_service_taskdefinition_containerdefinitions_volumesfrom(name, &block)
        r = Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitionsVolumesFrom.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

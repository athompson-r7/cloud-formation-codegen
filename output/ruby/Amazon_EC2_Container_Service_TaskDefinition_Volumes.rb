require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon EC2 Container Service TaskDefinition
      Volumes
        # Amazon_EC2_Container_Service_TaskDefinition_Volumes
        ##
        class EC2ContainerServiceTaskDefinitionVolumes < Resource


          # @!scope class
          # @attribute [w]
          # Name
          # The name of the volume. To specify mount points in your container definitions,                   use the value of this property. -- WIP 
          # @note Required: Yes
          # @see  
          property :name, 'Name'

          # @!scope class
          # @attribute [w]
          # Host
          # Determines whether your data volume persists on the host container instance and                   at the location where it is stored. -- WIP 
          # @note Required: No
          # @see  
          property :host, 'Host'


          def initialize(*args)
            super
            type 'EC2ContainerServiceTaskDefinitionVolumes'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionVolumes#name name}
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionVolumes#host host}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes.html 
      # @see {Model::Template::Resource::EC2ContainerServiceTaskDefinitionVolumes}
      def ec2_container_service_taskdefinition_volumes(name, &block)
        r = Model::Template::Resource::EC2ContainerServiceTaskDefinitionVolumes.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon EC2 Container Service TaskDefinition Volumes
      Host
        # Amazon_EC2_Container_Service_TaskDefinition_Volumes_Host
        ##
        class EC2ContainerServiceTaskDefinitionVolumesHost < Resource


          # @!scope class
          # @attribute [w]
          # SourcePath
          # The data volume path on the host container instance. -- WIP 
          # @note Required: No
          # @see  
          property :source_path, 'SourcePath'


          def initialize(*args)
            super
            type 'EC2ContainerServiceTaskDefinitionVolumesHost'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2ContainerServiceTaskDefinitionVolumesHost#source_path source_path}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes-host.html 
      # @see {Model::Template::Resource::EC2ContainerServiceTaskDefinitionVolumesHost}
      def ec2_container_service_taskdefinition_volumes_host(name, &block)
        r = Model::Template::Resource::EC2ContainerServiceTaskDefinitionVolumesHost.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::ECS::Cluster
        # AWS_ECS_Cluster
        ##
        class ECSCluster < Resource



          def initialize(*args)
            super
            type 'ECSCluster'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html 
      # @see {Model::Template::Resource::ECSCluster}
      def ecs_cluster(name, &block)
        r = Model::Template::Resource::ECSCluster.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

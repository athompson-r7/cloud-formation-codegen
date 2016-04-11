require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::Redshift::ClusterSubnetGroup
        # AWS_Redshift_ClusterSubnetGroup
        ##
        class RedshiftClusterSubnetGroup < Resource


          # @!scope class
          # @attribute [w]
          # Description
          # A description of the subnet group. -- WIP 
          # @note Required: Yes
          # @see  
          property :description, 'Description'

          # @!scope class
          # @attribute [w]
          # SubnetIds
          # A list of VPC subnet IDs. You can modify a maximum of 20 subnets. -- WIP
          # @note Required: Yes
          # @see 
          property :subnet_ids, 'SubnetIds', :array


          def initialize(*args)
            super
            type 'RedshiftClusterSubnetGroup'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::RedshiftClusterSubnetGroup#description description}
      # {Model::Template::Resource::RedshiftClusterSubnetGroup#subnet_ids subnet_ids}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersubnetgroup.html 
      # @see {Model::Template::Resource::RedshiftClusterSubnetGroup}
      def redshift_clustersubnetgroup(name, &block)
        r = Model::Template::Resource::RedshiftClusterSubnetGroup.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::RDS::DBSubnetGroup
        # AWS_RDS_DBSubnetGroup
        ##
        class RDSDBSubnetGroup < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # DBSubnetGroupDescription
          # The description for the DB Subnet Group. -- WIP 
          # @note Required: Yes
          # @see  
          property :db_subnet_group_description, 'DBSubnetGroupDescription'

          # @!scope class
          # @attribute [w]
          # SubnetIds
          # The EC2 Subnet IDs for the DB Subnet Group. -- WIP
          # @note Required: Yes
          # @see 
          property :subnet_ids, 'SubnetIds', :array

          # @!scope class
          # @attribute [w]
          # Tags
          # The tags that you want to attach to the RDS database subnet group. -- WIP
          # @note Required: No
          # @see 
          property :tags, 'Tags', :array


          def initialize(*args)
            super
            type 'RDSDBSubnetGroup'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::RDSDBSubnetGroup#db_subnet_group_description db_subnet_group_description}
      # {Model::Template::Resource::RDSDBSubnetGroup#subnet_ids subnet_ids}
      # {Model::Template::Resource::RDSDBSubnetGroup#tags tags}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbsubnet-group.html 
      # @see {Model::Template::Resource::RDSDBSubnetGroup}
      def rds_dbsubnetgroup(name, &block)
        r = Model::Template::Resource::RDSDBSubnetGroup.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::RDS::DBSecurityGroup
        # AWS_RDS_DBSecurityGroup
        ##
        class RDSDBSecurityGroup < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # EC2VpcId
          # The Id of VPC. Indicates which VPC this DB Security Group should belong to. -- WIP 
          # @note Required: Conditional. Must be specified to create a DB Security Group for                   a VPC; may not be specified otherwise.
          # @see  
          property :ec2_vpc_id, 'EC2VpcId'

          # @!scope class
          # @attribute [w]
          # GroupDescription
          # of the security group. -- WIP 
          # @note Required: Yes
          # @see  
          property :group_description, 'GroupDescription'

          # @!scope class
          # @attribute [w]
          # DBSecurityGroupIngress
          # Network ingress authorization for an Amazon EC2 security group or an IP address range. -- WIP
          # @note Required: Yes
          # @see 
          property :db_security_group_ingress, 'DBSecurityGroupIngress', :array

          # @!scope class
          # @attribute [w]
          # Tags
          # The tags that you want to attach to the Amazon RDS DB security group. -- WIP
          # @note Required: No
          # @see 
          property :tags, 'Tags', :array


          def initialize(*args)
            super
            type 'RDSDBSecurityGroup'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::RDSDBSecurityGroup#ec2_vpc_id ec2_vpc_id}
      # {Model::Template::Resource::RDSDBSecurityGroup#group_description group_description}
      # {Model::Template::Resource::RDSDBSecurityGroup#db_security_group_ingress db_security_group_ingress}
      # {Model::Template::Resource::RDSDBSecurityGroup#tags tags}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html 
      # @see {Model::Template::Resource::RDSDBSecurityGroup}
      def rds_dbsecuritygroup(name, &block)
        r = Model::Template::Resource::RDSDBSecurityGroup.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

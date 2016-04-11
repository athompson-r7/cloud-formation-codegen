require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::RDS::DBSecurityGroupIngress
        # AWS_RDS_DBSecurityGroupIngress
        ##
        class RDSDBSecurityGroupIngress < Resource


          # @!scope class
          # @attribute [w]
          # CIDRIP
          # The IP range to authorize. -- WIP 
          # @note Required: No
          # @see  
          property :cidrip, 'CIDRIP'

          # @!scope class
          # @attribute [w]
          # DBSecurityGroupName
          # The name (ARN) of the AWS::RDS::DBSecurityGroup to which this ingress                   will be added. -- WIP 
          # @note Required: Yes
          # @see  
          property :db_security_group_name, 'DBSecurityGroupName'

          # @!scope class
          # @attribute [w]
          # EC2SecurityGroupId
          # The ID of the VPC or EC2 security group to authorize. -- WIP 
          # @note Required: No
          # @see  
          property :ec2_security_group_id, 'EC2SecurityGroupId'

          # @!scope class
          # @attribute [w]
          # EC2SecurityGroupName
          # The name of the EC2 security group to authorize. -- WIP 
          # @note Required: No
          # @see  
          property :ec2_security_group_name, 'EC2SecurityGroupName'

          # @!scope class
          # @attribute [w]
          # EC2SecurityGroupOwnerId
          # The AWS Account Number of the owner of the EC2 security group specified in the EC2SecurityGroupName                   parameter. The AWS Access Key ID is not an acceptable value. -- WIP 
          # @note Required: No
          # @see  
          property :ec2_security_group_owner_id, 'EC2SecurityGroupOwnerId'


          def initialize(*args)
            super
            type 'RDSDBSecurityGroupIngress'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::RDSDBSecurityGroupIngress#cidrip cidrip}
      # {Model::Template::Resource::RDSDBSecurityGroupIngress#db_security_group_name db_security_group_name}
      # {Model::Template::Resource::RDSDBSecurityGroupIngress#ec2_security_group_id ec2_security_group_id}
      # {Model::Template::Resource::RDSDBSecurityGroupIngress#ec2_security_group_name ec2_security_group_name}
      # {Model::Template::Resource::RDSDBSecurityGroupIngress#ec2_security_group_owner_id ec2_security_group_owner_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-security-group-ingress.html 
      # @see {Model::Template::Resource::RDSDBSecurityGroupIngress}
      def rds_dbsecuritygroupingress(name, &block)
        r = Model::Template::Resource::RDSDBSecurityGroupIngress.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon RDS Security Group Rule
        # Amazon_RDS_Security_Group_Rule
        ##
        class RDSSecurityGroupRule < Resource


          # @!scope class
          # @attribute [w]
          # CIDRIP
          # The IP range to authorize. -- WIP 
          # @note Required: No
          # @see  
          property :cidrip, 'CIDRIP'

          # @!scope class
          # @attribute [w]
          # EC2SecurityGroupId
          # Id of the VPC or EC2 Security Group to authorize. -- WIP 
          # @note Required: No
          # @see  
          property :ec2_security_group_id, 'EC2SecurityGroupId'

          # @!scope class
          # @attribute [w]
          # EC2SecurityGroupName
          # Name of the EC2 Security Group to authorize. -- WIP 
          # @note Required: No
          # @see  
          property :ec2_security_group_name, 'EC2SecurityGroupName'

          # @!scope class
          # @attribute [w]
          # EC2SecurityGroupOwnerId
          # AWS Account Number of the owner of the EC2 Security Group specified in the EC2SecurityGroupName                   parameter. The AWS Access Key ID is not an acceptable value. -- WIP 
          # @note Required: No
          # @see  
          property :ec2_security_group_owner_id, 'EC2SecurityGroupOwnerId'


          def initialize(*args)
            super
            type 'RDSSecurityGroupRule'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::RDSSecurityGroupRule#cidrip cidrip}
      # {Model::Template::Resource::RDSSecurityGroupRule#ec2_security_group_id ec2_security_group_id}
      # {Model::Template::Resource::RDSSecurityGroupRule#ec2_security_group_name ec2_security_group_name}
      # {Model::Template::Resource::RDSSecurityGroupRule#ec2_security_group_owner_id ec2_security_group_owner_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html 
      # @see {Model::Template::Resource::RDSSecurityGroupRule}
      def rds_security_group_rule(name, &block)
        r = Model::Template::Resource::RDSSecurityGroupRule.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

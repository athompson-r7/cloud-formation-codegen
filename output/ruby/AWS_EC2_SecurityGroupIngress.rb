require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::SecurityGroupIngress
        # AWS_EC2_SecurityGroupIngress
        ##
        class EC2SecurityGroupIngress < Resource


          # @!scope class
          # @attribute [w]
          # CidrIp
          # Specifies a CIDR range. -- WIP 
          # @note Required: Conditional. If you specify                      SourceSecurityGroupName, do not specify                      CidrIp.
          # @see  
          property :cidr_ip, 'CidrIp'

          # @!scope class
          # @attribute [w]
          # FromPort
          # Start of port range for the TCP and UDP protocols, or an ICMP type number.                   If you specify icmp for the IpProtocol property, you can                   specify -1 as a wildcard (i.e., any ICMP type number). -- WIP 
          # @note Required: Yes, for ICMP and any protocol that uses ports.
          # @see  
          property :from_port, 'FromPort'

          # @!scope class
          # @attribute [w]
          # GroupId
          # ID of the Amazon EC2 or VPC security group to modify. The group must belong to your                   account. -- WIP 
          # @note Required: Conditional. You must specify the GroupName                   property or the GroupId property. For security groups that                   are in a VPC, you must use the GroupId property. For example,                      EC2-VPC                   accounts must use the GroupId property.
          # @see  
          property :group_id, 'GroupId'

          # @!scope class
          # @attribute [w]
          # GroupName
          # Name of the Amazon EC2 security group (non-VPC security group) to modify. This value                   can be a reference to an AWS::EC2::SecurityGroup resource or the name of an existing Amazon EC2                   security group. -- WIP 
          # @note Required: Conditional. You must specify the GroupName                   property or the GroupId property. For security groups that                   are in a VPC, you must use the GroupId property. For example,                      EC2-VPC                   accounts must use the GroupId property.
          # @see  
          property :group_name, 'GroupName'

          # @!scope class
          # @attribute [w]
          # IpProtocol
          # IP protocol name or number. For valid values, see the IpProtocol parameter                   in AuthorizeSecurityGroupIngress -- WIP 
          # @note Required: Yes
          # @see  
          property :ip_protocol, 'IpProtocol'

          # @!scope class
          # @attribute [w]
          # SourceSecurityGroupId
          # Specifies the ID of the source security group or uses the Ref                   intrinsic function to refer to the logical ID of a security group defined in the                   same template. -- WIP 
          # @note Required: Conditional. If you specify CidrIp, do not                   specify SourceSecurityGroupId.
          # @see  
          property :source_security_group_id, 'SourceSecurityGroupId'

          # @!scope class
          # @attribute [w]
          # SourceSecurityGroupName
          # Specifies the name of the Amazon EC2 security group (non-VPC security group) to                   allow access or uses the Ref intrinsic function to refer to the                   logical name of a security group defined in the same template. For instances in a                   VPC, specify the SourceSecurityGroupId property. -- WIP 
          # @note Required: Conditional. If you specify CidrIp, do not                   specify SourceSecurityGroupName.
          # @see  
          property :source_security_group_name, 'SourceSecurityGroupName'

          # @!scope class
          # @attribute [w]
          # SourceSecurityGroupOwnerId
          # Specifies the AWS Account ID of the owner of the Amazon EC2 security group                   specified in the SourceSecurityGroupName property. -- WIP 
          # @note Required: Conditional. If you specify                      SourceSecurityGroupName and that security group is owned                   by a different account than the account creating the stack, you must specify the                      SourceSecurityGroupOwnerId; otherwise, this property is                   optional.
          # @see  
          property :source_security_group_owner_id, 'SourceSecurityGroupOwnerId'

          # @!scope class
          # @attribute [w]
          # ToPort
          # End of port range for the TCP and UDP protocols, or an ICMP code. If you                   specify icmp for the IpProtocol property, you can                   specify -1 as a wildcard (i.e., any ICMP code). -- WIP 
          # @note Required: Yes, for ICMP and any protocol that uses ports.
          # @see  
          property :to_port, 'ToPort'


          def initialize(*args)
            super
            type 'EC2SecurityGroupIngress'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2SecurityGroupIngress#cidr_ip cidr_ip}
      # {Model::Template::Resource::EC2SecurityGroupIngress#from_port from_port}
      # {Model::Template::Resource::EC2SecurityGroupIngress#group_id group_id}
      # {Model::Template::Resource::EC2SecurityGroupIngress#group_name group_name}
      # {Model::Template::Resource::EC2SecurityGroupIngress#ip_protocol ip_protocol}
      # {Model::Template::Resource::EC2SecurityGroupIngress#source_security_group_id source_security_group_id}
      # {Model::Template::Resource::EC2SecurityGroupIngress#source_security_group_name source_security_group_name}
      # {Model::Template::Resource::EC2SecurityGroupIngress#source_security_group_owner_id source_security_group_owner_id}
      # {Model::Template::Resource::EC2SecurityGroupIngress#to_port to_port}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-ingress.html 
      # @see {Model::Template::Resource::EC2SecurityGroupIngress}
      def ec2_securitygroupingress(name, &block)
        r = Model::Template::Resource::EC2SecurityGroupIngress.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

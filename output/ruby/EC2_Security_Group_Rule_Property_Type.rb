require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # EC2 Security Group Rule Property Type
        # EC2_Security_Group_Rule_Property_Type
        ##
        class SecurityGroupRulePropertyType < Resource


          # @!scope class
          # @attribute [w]
          # CidrIp
          # Specifies a CIDR range. -- WIP 
          # @note Required: Conditional If you specify                      SourceSecurityGroupName or                      SourceSecurityGroupId, do not specify                      CidrIp.
          # @see  
          property :cidr_ip, 'CidrIp'

          # @!scope class
          # @attribute [w]
          # DestinationSecurityGroupId (SecurityGroupEgress only)
          # Specifies the GroupId of the destination Amazon VPC security group. -- WIP 
          # @note Required: Conditional Cannot be used when specifying a CIDR IP address.
          # @see  
          property :destination_security_group_id (security_group_egress only), 'DestinationSecurityGroupId (SecurityGroupEgress only)'

          # @!scope class
          # @attribute [w]
          # FromPort
          # The start of port range for the TCP and UDP protocols, or an ICMP type number.                   An ICMP type number of -1 indicates a wildcard (i.e., any ICMP type                   number). -- WIP 
          # @note Required: Yes
          # @see  
          property :from_port, 'FromPort'

          # @!scope class
          # @attribute [w]
          # IpProtocol
          # An IP protocol name or number. For valid values, go to the IpProtocol parameter                   in AuthorizeSecurityGroupIngress -- WIP 
          # @note Required: Yes
          # @see  
          property :ip_protocol, 'IpProtocol'

          # @!scope class
          # @attribute [w]
          # SourceSecurityGroupId (SecurityGroupIngress only)
          # For VPC security groups only. Specifies the ID of the                   Amazon EC2 Security Group to allow access. You can use the                      Ref intrinsic function to refer to the logical ID of a                   security group defined in the same template. -- WIP 
          # @note Required: Conditional. If you specify CidrIp, do not specify                      SourceSecurityGroupId.
          # @see  
          property :source_security_group_id (security_group_ingress only), 'SourceSecurityGroupId (SecurityGroupIngress only)'

          # @!scope class
          # @attribute [w]
          # SourceSecurityGroupName (SecurityGroupIngress only)
          # For non-VPC security groups only. Specifies the name of                   the Amazon EC2 Security Group to use for access. You can use the                      Ref intrinsic function to refer to the logical name of a                   security group that is defined in the same template. -- WIP 
          # @note Required: Conditional. If you specify CidrIp, do not                   specify SourceSecurityGroupName.
          # @see  
          property :source_security_group_name (security_group_ingress only), 'SourceSecurityGroupName (SecurityGroupIngress only)'

          # @!scope class
          # @attribute [w]
          # SourceSecurityGroupOwnerId (SecurityGroupIngress only)
          # Specifies the AWS Account ID of the owner of the Amazon EC2 Security Group that                   is specified in the SourceSecurityGroupName property. -- WIP 
          # @note Required: Conditional. If you specify                      SourceSecurityGroupName and that security group is owned                   by a different account than the account creating the stack, you must specify the                      SourceSecurityGroupOwnerId; otherwise, this property is                   optional.
          # @see  
          property :source_security_group_owner_id (security_group_ingress only), 'SourceSecurityGroupOwnerId (SecurityGroupIngress only)'

          # @!scope class
          # @attribute [w]
          # ToPort
          # The end of port range for the TCP and UDP protocols, or an ICMP code. An ICMP                   code of -1 indicates a wildcard (i.e., any ICMP code). -- WIP 
          # @note Required: Yes
          # @see  
          property :to_port, 'ToPort'


          def initialize(*args)
            super
            type 'SecurityGroupRulePropertyType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::SecurityGroupRulePropertyType#cidr_ip cidr_ip}
      # {Model::Template::Resource::SecurityGroupRulePropertyType#destination_security_group_id (security_group_egress only) destination_security_group_id (security_group_egress only)}
      # {Model::Template::Resource::SecurityGroupRulePropertyType#from_port from_port}
      # {Model::Template::Resource::SecurityGroupRulePropertyType#ip_protocol ip_protocol}
      # {Model::Template::Resource::SecurityGroupRulePropertyType#source_security_group_id (security_group_ingress only) source_security_group_id (security_group_ingress only)}
      # {Model::Template::Resource::SecurityGroupRulePropertyType#source_security_group_name (security_group_ingress only) source_security_group_name (security_group_ingress only)}
      # {Model::Template::Resource::SecurityGroupRulePropertyType#source_security_group_owner_id (security_group_ingress only) source_security_group_owner_id (security_group_ingress only)}
      # {Model::Template::Resource::SecurityGroupRulePropertyType#to_port to_port}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html 
      # @see {Model::Template::Resource::SecurityGroupRulePropertyType}
      def security_group_rule_property_type(name, &block)
        r = Model::Template::Resource::SecurityGroupRulePropertyType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

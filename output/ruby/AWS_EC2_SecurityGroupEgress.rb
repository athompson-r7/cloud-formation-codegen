require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::SecurityGroupEgress
        # AWS_EC2_SecurityGroupEgress
        ##
        class EC2SecurityGroupEgress < Resource


          # @!scope class
          # @attribute [w]
          # CidrIp
          # CIDR range. -- WIP 
          # @note Required: Conditional. Cannot be used when specifying a destination security             group.
          # @see  
          property :cidr_ip, 'CidrIp'

          # @!scope class
          # @attribute [w]
          # DestinationSecurityGroupId
          # Specifies the group ID of the destination Amazon VPC security group. -- WIP 
          # @note Required: Conditional. Cannot be used when specifying a CIDR IP             address.
          # @see  
          property :destination_security_group_id, 'DestinationSecurityGroupId'

          # @!scope class
          # @attribute [w]
          # FromPort
          # Start of port range for the TCP and UDP protocols, or an ICMP type number. If                   you specify icmp for the IpProtocol property, you can                   specify -1 as a wildcard (i.e., any ICMP type number). -- WIP 
          # @note Required: Yes
          # @see  
          property :from_port, 'FromPort'

          # @!scope class
          # @attribute [w]
          # GroupId
          # ID of the Amazon VPC security group to modify. This value can be a reference to an AWS::EC2::SecurityGroup resource that has a                   valid VpcId property or the ID of an existing Amazon VPC security group. -- WIP 
          # @note Required: Yes
          # @see  
          property :group_id, 'GroupId'

          # @!scope class
          # @attribute [w]
          # IpProtocol
          # IP protocol name or number. For valid values, see the IpProtocol parameter in AuthorizeSecurityGroupIngress -- WIP 
          # @note Required: Yes
          # @see  
          property :ip_protocol, 'IpProtocol'

          # @!scope class
          # @attribute [w]
          # ToPort
          # End of port range for the TCP and UDP protocols, or an ICMP code. If you                   specify icmp for the IpProtocol property, you can                   specify -1 as a wildcard (i.e., any ICMP code). -- WIP 
          # @note Required: Yes
          # @see  
          property :to_port, 'ToPort'


          def initialize(*args)
            super
            type 'EC2SecurityGroupEgress'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2SecurityGroupEgress#cidr_ip cidr_ip}
      # {Model::Template::Resource::EC2SecurityGroupEgress#destination_security_group_id destination_security_group_id}
      # {Model::Template::Resource::EC2SecurityGroupEgress#from_port from_port}
      # {Model::Template::Resource::EC2SecurityGroupEgress#group_id group_id}
      # {Model::Template::Resource::EC2SecurityGroupEgress#ip_protocol ip_protocol}
      # {Model::Template::Resource::EC2SecurityGroupEgress#to_port to_port}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-security-group-egress.html 
      # @see {Model::Template::Resource::EC2SecurityGroupEgress}
      def ec2_securitygroupegress(name, &block)
        r = Model::Template::Resource::EC2SecurityGroupEgress.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

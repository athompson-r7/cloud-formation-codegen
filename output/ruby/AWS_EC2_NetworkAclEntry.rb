require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::NetworkAclEntry
        # AWS_EC2_NetworkAclEntry
        ##
        class EC2NetworkAclEntry < Resource


          # @!scope class
          # @attribute [w]
          # CidrBlock
          # The CIDR range to allow or deny, in CIDR notation (e.g., 172.16.0.0/24). -- WIP 
          # @note Required: Yes
          # @see  
          property :cidr_block, 'CidrBlock'

          # @!scope class
          # @attribute [w]
          # Egress
          # Whether this rule applies to egress traffic from the subnet (&quot;true&quot;) or ingress traffic to the                   subnet (&quot;false&quot;). -- WIP 
          # @note Required: Yes
          # @see  
          property :egress, 'Egress'

          # @!scope class
          # @attribute [w]
          # Icmp
          # The Internet Control Message Protocol (ICMP) code and type. -- WIP 
          # @note Required: Conditional required if specifying 1 (ICMP) for the protocol                   parameter.
          # @see  
          property :icmp, 'Icmp'

          # @!scope class
          # @attribute [w]
          # NetworkAclId
          # ID of the ACL where the entry will be created. -- WIP 
          # @note Required: Yes
          # @see  
          property :network_acl_id, 'NetworkAclId'

          # @!scope class
          # @attribute [w]
          # PortRange
          # The range of port numbers for the UDP/TCP protocol. -- WIP 
          # @note Required: Conditional Required if specifying 6 (TCP) or 17 (UDP) for the protocol                parameter.
          # @see  
          property :port_range, 'PortRange'

          # @!scope class
          # @attribute [w]
          # Protocol
          # The IP protocol that the rule applies to. You must specify -1 or a                   protocol number (go to Protocol Numbers at iana.org). You can specify -1 for all                   protocols. -- WIP 
          # @note Required: Yes
          # @see  
          property :protocol, 'Protocol'

          # @!scope class
          # @attribute [w]
          # RuleAction
          # Whether to allow or deny traffic that matches the rule; valid values are &quot;allow&quot; or &quot;deny&quot;. -- WIP 
          # @note Required: Yes
          # @see  
          property :rule_action, 'RuleAction'

          # @!scope class
          # @attribute [w]
          # RuleNumber
          # Rule number to assign to the entry (e.g., 100). This must be a positive integer                   from 1 to 32766. -- WIP 
          # @note Required: Yes
          # @see  
          property :rule_number, 'RuleNumber'


          def initialize(*args)
            super
            type 'EC2NetworkAclEntry'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2NetworkAclEntry#cidr_block cidr_block}
      # {Model::Template::Resource::EC2NetworkAclEntry#egress egress}
      # {Model::Template::Resource::EC2NetworkAclEntry#icmp icmp}
      # {Model::Template::Resource::EC2NetworkAclEntry#network_acl_id network_acl_id}
      # {Model::Template::Resource::EC2NetworkAclEntry#port_range port_range}
      # {Model::Template::Resource::EC2NetworkAclEntry#protocol protocol}
      # {Model::Template::Resource::EC2NetworkAclEntry#rule_action rule_action}
      # {Model::Template::Resource::EC2NetworkAclEntry#rule_number rule_number}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html 
      # @see {Model::Template::Resource::EC2NetworkAclEntry}
      def ec2_networkaclentry(name, &block)
        r = Model::Template::Resource::EC2NetworkAclEntry.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EC2_NetworkAclEntry
        ##
        class EC2NetworkAclEntry < Resource


          property :cidr_block, 'CidrBlock'
          property :egress, 'Egress'
          property :icmp, 'Icmp'
          property :network_acl_id, 'NetworkAclId'
          property :port_range, 'PortRange'
          property :protocol, 'Protocol'
          property :rule_action, 'RuleAction'
          property :rule_number, 'RuleNumber'

          def initialize(*args)
            super
            type 'AWS_EC2_NetworkAclEntry'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_networkaclentry(name, &block)
        r = Model::Template::Resource::EC2NetworkAclEntry.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end
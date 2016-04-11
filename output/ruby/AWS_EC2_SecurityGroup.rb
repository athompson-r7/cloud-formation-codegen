require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::SecurityGroup
        # AWS_EC2_SecurityGroup
        ##
        class EC2SecurityGroup < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # GroupDescription
          # of the security group. -- WIP 
          # @note Required: Yes
          # @see  
          property :group_description, 'GroupDescription'

          # @!scope class
          # @attribute [w]
          # SecurityGroupEgress
          # A list of Amazon EC2 security group egress rules. -- WIP 
          # @note Required: No
          # @see  
          property :security_group_egress, 'SecurityGroupEgress'

          # @!scope class
          # @attribute [w]
          # SecurityGroupIngress
          # A list of Amazon EC2 security group ingress rules. -- WIP 
          # @note Required: No
          # @see  
          property :security_group_ingress, 'SecurityGroupIngress'

          # @!scope class
          # @attribute [w]
          # Tags
          # The tags that you want to attach to the resource. -- WIP 
          # @note Required: No
          # @see  
          property :tags, 'Tags'

          # @!scope class
          # @attribute [w]
          # VpcId
          # The physical ID of the VPC. Can be obtained by using a reference to an AWS::EC2::VPC, such as: { &quot;Ref&quot; : &quot;myVPC&quot; }. -- WIP 
          # @note Required: Yes, for VPC security groups
          # @see  
          property :vpc_id, 'VpcId'

          # @!scope class
          # @attribute [w]
          # GroupId
          # The group ID of the specified security group, such as                         sg-94b3a1f6. -- WIP 
          # @note Required: No
          # @see  
          property :group_id, 'GroupId'


          def initialize(*args)
            super
            type 'EC2SecurityGroup'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2SecurityGroup#group_description group_description}
      # {Model::Template::Resource::EC2SecurityGroup#security_group_egress security_group_egress}
      # {Model::Template::Resource::EC2SecurityGroup#security_group_ingress security_group_ingress}
      # {Model::Template::Resource::EC2SecurityGroup#tags tags}
      # {Model::Template::Resource::EC2SecurityGroup#vpc_id vpc_id}
      # {Model::Template::Resource::EC2SecurityGroup#group_id group_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html 
      # @see {Model::Template::Resource::EC2SecurityGroup}
      def ec2_securitygroup(name, &block)
        r = Model::Template::Resource::EC2SecurityGroup.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

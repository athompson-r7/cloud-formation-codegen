require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::SubnetNetworkAclAssociation
        # AWS_EC2_SubnetNetworkAclAssociation
        ##
        class EC2SubnetNetworkAclAssociation < Resource


          # @!scope class
          # @attribute [w]
          # SubnetId
          # The ID representing the current association between the original network ACL and the subnet. -- WIP 
          # @note Required: Yes
          # @see  
          property :subnet_id, 'SubnetId'

          # @!scope class
          # @attribute [w]
          # NetworkAclId
          # The ID of the new ACL to associate with the subnet. -- WIP 
          # @note Required: Yes
          # @see  
          property :network_acl_id, 'NetworkAclId'

          # @!scope class
          # @attribute [w]
          # AssociationId
          # Returns the value of this object's SubnetId property. -- WIP 
          # @note Required: No
          # @see  
          property :association_id, 'AssociationId'


          def initialize(*args)
            super
            type 'EC2SubnetNetworkAclAssociation'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2SubnetNetworkAclAssociation#subnet_id subnet_id}
      # {Model::Template::Resource::EC2SubnetNetworkAclAssociation#network_acl_id network_acl_id}
      # {Model::Template::Resource::EC2SubnetNetworkAclAssociation#association_id association_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-network-acl-assoc.html 
      # @see {Model::Template::Resource::EC2SubnetNetworkAclAssociation}
      def ec2_subnetnetworkaclassociation(name, &block)
        r = Model::Template::Resource::EC2SubnetNetworkAclAssociation.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::Redshift::ClusterSecurityGroupIngress
        # AWS_Redshift_ClusterSecurityGroupIngress
        ##
        class RedshiftClusterSecurityGroupIngress < Resource


          # @!scope class
          # @attribute [w]
          # ClusterSecurityGroupName
          # The name of the Amazon Redshift security group that will be associated with the ingress                   rule. -- WIP 
          # @note Required: Yes
          # @see  
          property :cluster_security_group_name, 'ClusterSecurityGroupName'

          # @!scope class
          # @attribute [w]
          # CIDRIP
          # The IP address range that has inbound access to the Amazon Redshift security group. -- WIP 
          # @note Required: No
          # @see  
          property :cidrip, 'CIDRIP'

          # @!scope class
          # @attribute [w]
          # EC2SecurityGroupName
          # The Amazon EC2 security group that will be added the Amazon Redshift security group. -- WIP 
          # @note Required: No
          # @see  
          property :ec2_security_group_name, 'EC2SecurityGroupName'

          # @!scope class
          # @attribute [w]
          # EC2SecurityGroupOwnerId
          # The 12-digit AWS account number of the owner of the Amazon EC2 security group that                   is specified by the EC2SecurityGroupName parameter. -- WIP 
          # @note Required: Conditional. If you specify the EC2SecurityGroupName                   property, you must specify this property.
          # @see  
          property :ec2_security_group_owner_id, 'EC2SecurityGroupOwnerId'


          def initialize(*args)
            super
            type 'RedshiftClusterSecurityGroupIngress'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::RedshiftClusterSecurityGroupIngress#cluster_security_group_name cluster_security_group_name}
      # {Model::Template::Resource::RedshiftClusterSecurityGroupIngress#cidrip cidrip}
      # {Model::Template::Resource::RedshiftClusterSecurityGroupIngress#ec2_security_group_name ec2_security_group_name}
      # {Model::Template::Resource::RedshiftClusterSecurityGroupIngress#ec2_security_group_owner_id ec2_security_group_owner_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroupingress.html 
      # @see {Model::Template::Resource::RedshiftClusterSecurityGroupIngress}
      def redshift_clustersecuritygroupingress(name, &block)
        r = Model::Template::Resource::RedshiftClusterSecurityGroupIngress.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

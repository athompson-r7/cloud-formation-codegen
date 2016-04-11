require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::Redshift::ClusterSecurityGroup
        # AWS_Redshift_ClusterSecurityGroup
        ##
        class RedshiftClusterSecurityGroup < Resource


          # @!scope class
          # @attribute [w]
          # Description
          # A description of the security group. -- WIP 
          # @note Required: Yes
          # @see  
          property :description, 'Description'


          def initialize(*args)
            super
            type 'RedshiftClusterSecurityGroup'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::RedshiftClusterSecurityGroup#description description}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clustersecuritygroup.html 
      # @see {Model::Template::Resource::RedshiftClusterSecurityGroup}
      def redshift_clustersecuritygroup(name, &block)
        r = Model::Template::Resource::RedshiftClusterSecurityGroup.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

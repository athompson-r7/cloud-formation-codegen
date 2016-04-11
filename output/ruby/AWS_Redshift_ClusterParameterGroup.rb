require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::Redshift::ClusterParameterGroup
        # AWS_Redshift_ClusterParameterGroup
        ##
        class RedshiftClusterParameterGroup < Resource


          # @!scope class
          # @attribute [w]
          # Description
          # A description of the parameter group. -- WIP 
          # @note Required: Yes
          # @see  
          property :description, 'Description'

          # @!scope class
          # @attribute [w]
          # ParameterGroupFamily
          # The Amazon Redshift engine version that applies to this cluster parameter group. The                   cluster engine version determines the set of parameters that you can specify in                   the Parameters property. -- WIP 
          # @note Required: Yes
          # @see  
          property :parameter_group_family, 'ParameterGroupFamily'

          # @!scope class
          # @attribute [w]
          # Parameters
          # A list of parameter names and values that are allowed by the Amazon Redshift engine                   version that you specified in the ParameterGroupFamily property. For                   more information, see Amazon Redshift Parameter Groups in the                   Amazon Redshift Cluster Management Guide. -- WIP 
          # @note Required: No
          # @see  
          property :parameters, 'Parameters'


          def initialize(*args)
            super
            type 'RedshiftClusterParameterGroup'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::RedshiftClusterParameterGroup#description description}
      # {Model::Template::Resource::RedshiftClusterParameterGroup#parameter_group_family parameter_group_family}
      # {Model::Template::Resource::RedshiftClusterParameterGroup#parameters parameters}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clusterparametergroup.html 
      # @see {Model::Template::Resource::RedshiftClusterParameterGroup}
      def redshift_clusterparametergroup(name, &block)
        r = Model::Template::Resource::RedshiftClusterParameterGroup.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

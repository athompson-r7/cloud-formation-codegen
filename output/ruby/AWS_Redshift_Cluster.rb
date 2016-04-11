require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::Redshift::Cluster
        # AWS_Redshift_Cluster
        ##
        class RedshiftCluster < Resource


          # @!scope class
          # @attribute [w]
          # AllowVersionUpgrade
          # When a new version of the Amazon Redshift is released, indicates whether upgrades can be                   applied to the engine that is running on the cluster. The upgrades are applied                   during the maintenance window. -- WIP 
          # @note Required: No
          # @see  
          property :allow_version_upgrade, 'AllowVersionUpgrade'

          # @!scope class
          # @attribute [w]
          # AutomatedSnapshotRetentionPeriod
          # The number of days that automated snapshots are retained. If you set the value                   to 0, automated snapshots are disabled. -- WIP 
          # @note Required: No
          # @see  
          property :automated_snapshot_retention_period, 'AutomatedSnapshotRetentionPeriod'

          # @!scope class
          # @attribute [w]
          # AvailabilityZone
          # The Amazon EC2 Availability Zone in which you want to provision your Amazon Redshift cluster.                   For example, if you have several Amazon EC2 instances running in a specific                   Availability Zone, you might want the cluster to be provisioned in the same zone                   in order to decrease network latency. -- WIP 
          # @note Required: No
          # @see  
          property :availability_zone, 'AvailabilityZone'

          # @!scope class
          # @attribute [w]
          # ClusterParameterGroupName
          # The name of the parameter group that you want to associate with this                   cluster. -- WIP 
          # @note Required: No
          # @see  
          property :cluster_parameter_group_name, 'ClusterParameterGroupName'

          # @!scope class
          # @attribute [w]
          # ClusterSubnetGroupName
          # The name of a cluster subnet group that you want to associate with this                   cluster. -- WIP 
          # @note Required: No
          # @see  
          property :cluster_subnet_group_name, 'ClusterSubnetGroupName'

          # @!scope class
          # @attribute [w]
          # ClusterType
          # The type of cluster. You can specify single-node or                      multi-node. -- WIP 
          # @note Required: Yes
          # @see  
          property :cluster_type, 'ClusterType'

          # @!scope class
          # @attribute [w]
          # ClusterVersion
          # The Amazon Redshift engine version that you want to deploy on the cluster. -- WIP 
          # @note Required: No
          # @see  
          property :cluster_version, 'ClusterVersion'

          # @!scope class
          # @attribute [w]
          # DBName
          # The name of the first database that is created when the cluster is                   created. -- WIP 
          # @note Required: Yes
          # @see  
          property :db_name, 'DBName'

          # @!scope class
          # @attribute [w]
          # ElasticIp
          # The Elastic IP (EIP) address for the cluster. -- WIP 
          # @note Required: No
          # @see  
          property :elastic_ip, 'ElasticIp'

          # @!scope class
          # @attribute [w]
          # Encrypted
          # Indicates whether the data in the cluster is encrypted at rest. -- WIP 
          # @note Required: No
          # @see  
          property :encrypted, 'Encrypted'

          # @!scope class
          # @attribute [w]
          # HsmClientCertificateIdentifier
          # Specifies the name of the HSM client certificate that the Amazon Redshift cluster uses to                   retrieve the data encryption keys stored in an HSM. -- WIP 
          # @note Required: No
          # @see  
          property :hsm_client_certificate_identifier, 'HsmClientCertificateIdentifier'

          # @!scope class
          # @attribute [w]
          # HsmConfigurationIdentifier
          # Specifies the name of the HSM configuration that contains the information that                   the Amazon Redshift cluster can use to retrieve and store keys in an HSM. -- WIP 
          # @note Required: No
          # @see  
          property :hsm_configuration_identifier, 'HsmConfigurationIdentifier'

          # @!scope class
          # @attribute [w]
          # MasterUsername
          # The user name that is associated with the master user account for this                   cluster. -- WIP 
          # @note Required: Yes
          # @see  
          property :master_username, 'MasterUsername'

          # @!scope class
          # @attribute [w]
          # MasterUserPassword
          # The  password associated with the master user account for this cluster. -- WIP 
          # @note Required: Yes
          # @see  
          property :master_user_password, 'MasterUserPassword'

          # @!scope class
          # @attribute [w]
          # NodeType
          # The node type that is provisioned for this cluster. -- WIP 
          # @note Required: Yes
          # @see  
          property :node_type, 'NodeType'

          # @!scope class
          # @attribute [w]
          # NumberOfNodes
          # The number of compute nodes in the cluster. If you specify                      multi-node for the ClusterType parameter, you must                   specify a number greater than 1. -- WIP 
          # @note Required: Conditional
          # @see  
          property :number_of_nodes, 'NumberOfNodes'

          # @!scope class
          # @attribute [w]
          # OwnerAccount
          # When you restore from a snapshot from another AWS account, the 12-digit AWS                   account ID that contains that snapshot. -- WIP 
          # @note Required: No
          # @see  
          property :owner_account, 'OwnerAccount'

          # @!scope class
          # @attribute [w]
          # Port
          # The port number on which the cluster accepts incoming connections. -- WIP 
          # @note Required: No
          # @see  
          property :port, 'Port'

          # @!scope class
          # @attribute [w]
          # PreferredMaintenanceWindow
          # The weekly time range (in UTC) during which automated cluster maintenance can                   occur.  The format of the time range is                   ddd:hh24:mi-ddd:hh24:mi. -- WIP 
          # @note Required: No
          # @see  
          property :preferred_maintenance_window, 'PreferredMaintenanceWindow'

          # @!scope class
          # @attribute [w]
          # PubliclyAccessible
          # Indicates whether the cluster can be accessed from a public network. -- WIP 
          # @note Required: No
          # @see  
          property :publicly_accessible, 'PubliclyAccessible'

          # @!scope class
          # @attribute [w]
          # SnapshotClusterIdentifier
          # The name of the cluster the source snapshot was created from. -- WIP 
          # @note Required: Conditional. This property is required if your IAM policy includes                   a restriction on the cluster name, where the resource element specifies anything                   other than the wildcard character (*) for the cluster name.
          # @see  
          property :snapshot_cluster_identifier, 'SnapshotClusterIdentifier'

          # @!scope class
          # @attribute [w]
          # SnapshotIdentifier
          # The name of the snapshot from which to create a new cluster. -- WIP 
          # @note Required: Conditional. If you specified the                      SnapshotClusterIdentifier property, you must specify this                   property.
          # @see  
          property :snapshot_identifier, 'SnapshotIdentifier'

          # @!scope class
          # @attribute [w]
          # Endpoint.Address
          # The connection endpoint for the Amazon Redshift cluster. For example:                      examplecluster.cg034hpkmmjt.us-east-1.redshift.amazonaws.com                   . -- WIP 
          # @note Required: No
          # @see  
          property :endpoint.address, 'Endpoint.Address'

          # @!scope class
          # @attribute [w]
          # Endpoint.Port
          # The port number on which the Amazon Redshift cluster accepts connections. For example:                      5439. -- WIP 
          # @note Required: No
          # @see  
          property :endpoint.port, 'Endpoint.Port'

          # @!scope class
          # @attribute [w]
          # ClusterSecurityGroups
          # A list of security groups that you want to associate with this cluster. -- WIP
          # @note Required: No
          # @see 
          property :cluster_security_groups, 'ClusterSecurityGroups', :array

          # @!scope class
          # @attribute [w]
          # VpcSecurityGroupIds
          # A list of VPC security groups that are associated with this cluster. -- WIP
          # @note Required: No
          # @see 
          property :vpc_security_group_ids, 'VpcSecurityGroupIds', :array


          def initialize(*args)
            super
            type 'RedshiftCluster'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::RedshiftCluster#allow_version_upgrade allow_version_upgrade}
      # {Model::Template::Resource::RedshiftCluster#automated_snapshot_retention_period automated_snapshot_retention_period}
      # {Model::Template::Resource::RedshiftCluster#availability_zone availability_zone}
      # {Model::Template::Resource::RedshiftCluster#cluster_parameter_group_name cluster_parameter_group_name}
      # {Model::Template::Resource::RedshiftCluster#cluster_subnet_group_name cluster_subnet_group_name}
      # {Model::Template::Resource::RedshiftCluster#cluster_type cluster_type}
      # {Model::Template::Resource::RedshiftCluster#cluster_version cluster_version}
      # {Model::Template::Resource::RedshiftCluster#db_name db_name}
      # {Model::Template::Resource::RedshiftCluster#elastic_ip elastic_ip}
      # {Model::Template::Resource::RedshiftCluster#encrypted encrypted}
      # {Model::Template::Resource::RedshiftCluster#hsm_client_certificate_identifier hsm_client_certificate_identifier}
      # {Model::Template::Resource::RedshiftCluster#hsm_configuration_identifier hsm_configuration_identifier}
      # {Model::Template::Resource::RedshiftCluster#master_username master_username}
      # {Model::Template::Resource::RedshiftCluster#master_user_password master_user_password}
      # {Model::Template::Resource::RedshiftCluster#node_type node_type}
      # {Model::Template::Resource::RedshiftCluster#number_of_nodes number_of_nodes}
      # {Model::Template::Resource::RedshiftCluster#owner_account owner_account}
      # {Model::Template::Resource::RedshiftCluster#port port}
      # {Model::Template::Resource::RedshiftCluster#preferred_maintenance_window preferred_maintenance_window}
      # {Model::Template::Resource::RedshiftCluster#publicly_accessible publicly_accessible}
      # {Model::Template::Resource::RedshiftCluster#snapshot_cluster_identifier snapshot_cluster_identifier}
      # {Model::Template::Resource::RedshiftCluster#snapshot_identifier snapshot_identifier}
      # {Model::Template::Resource::RedshiftCluster#endpoint.address endpoint.address}
      # {Model::Template::Resource::RedshiftCluster#endpoint.port endpoint.port}
      # {Model::Template::Resource::RedshiftCluster#cluster_security_groups cluster_security_groups}
      # {Model::Template::Resource::RedshiftCluster#vpc_security_group_ids vpc_security_group_ids}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html 
      # @see {Model::Template::Resource::RedshiftCluster}
      def redshift_cluster(name, &block)
        r = Model::Template::Resource::RedshiftCluster.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

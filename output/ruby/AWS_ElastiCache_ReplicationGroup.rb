require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::ElastiCache::ReplicationGroup
        # AWS_ElastiCache_ReplicationGroup
        ##
        class ElastiCacheReplicationGroup < Resource


          # @!scope class
          # @attribute [w]
          # AutomaticFailoverEnabled
          # Indicates whether Multi-AZ is enabled. When Multi-AZ is enabled, a read-only                   replica is automatically promoted to a read-write primary cluster if the existing                   primary cluster fails. If you specify true, you must specify a value                   greater than 1 for the NumCacheNodes property. By                   default, AWS CloudFormation sets the value to true. -- WIP 
          # @note Required: No
          # @see  
          property :automatic_failover_enabled, 'AutomaticFailoverEnabled'

          # @!scope class
          # @attribute [w]
          # AutoMinorVersionUpgrade
          # Currently, this property isn't used by ElastiCache. -- WIP 
          # @note Required: No
          # @see  
          property :auto_minor_version_upgrade, 'AutoMinorVersionUpgrade'

          # @!scope class
          # @attribute [w]
          # CacheNodeType
          # The compute and memory capacity of nodes in the node group. To see valid                   values, see CreateReplicationGroup in the Amazon ElastiCache API                      Reference Guide. -- WIP 
          # @note Required: Yes
          # @see  
          property :cache_node_type, 'CacheNodeType'

          # @!scope class
          # @attribute [w]
          # CacheParameterGroupName
          # The name of the parameter group to associate with this replication                   group. -- WIP 
          # @note Required: No
          # @see  
          property :cache_parameter_group_name, 'CacheParameterGroupName'

          # @!scope class
          # @attribute [w]
          # CacheSubnetGroupName
          # The name of a cache subnet group to use for this replication group. -- WIP 
          # @note Required: No
          # @see  
          property :cache_subnet_group_name, 'CacheSubnetGroupName'

          # @!scope class
          # @attribute [w]
          # Engine
          # The name of the cache engine to use for the cache clusters in this replication                   group. Currently, you can specify only redis. -- WIP 
          # @note Required: Yes
          # @see  
          property :engine, 'Engine'

          # @!scope class
          # @attribute [w]
          # EngineVersion
          # The version number of the cache engine to use for the cache clusters in this                   replication group. -- WIP 
          # @note Required: No
          # @see  
          property :engine_version, 'EngineVersion'

          # @!scope class
          # @attribute [w]
          # NotificationTopicArn
          # The Amazon Resource Name (ARN) of the Amazon Simple Notification Service topic to which notifications are                   sent. -- WIP 
          # @note Required: No
          # @see  
          property :notification_topic_arn, 'NotificationTopicArn'

          # @!scope class
          # @attribute [w]
          # NumCacheClusters
          # The number of cache clusters for this replication group. If automatic failover                   is enabled, you must specify a value greater than 1. -- WIP 
          # @note Required: Yes
          # @see  
          property :num_cache_clusters, 'NumCacheClusters'

          # @!scope class
          # @attribute [w]
          # Port
          # The port number on which each member of the replication group accepts                   connections. -- WIP 
          # @note Required: No
          # @see  
          property :port, 'Port'

          # @!scope class
          # @attribute [w]
          # PreferredMaintenanceWindow
          # The weekly time range during which system maintenance can occur. Use the                   following format to specify a time range: ddd:hh24:mi-ddd:hh24:mi                   (24H Clock UTC). For example, you can specify sun:22:00-sun:23:30 for                   Sunday from 10 PM to 11:30 PM. -- WIP 
          # @note Required: No
          # @see  
          property :preferred_maintenance_window, 'PreferredMaintenanceWindow'

          # @!scope class
          # @attribute [w]
          # ReplicationGroupDescription
          # The description of the replication group. -- WIP 
          # @note Required: Yes
          # @see  
          property :replication_group_description, 'ReplicationGroupDescription'

          # @!scope class
          # @attribute [w]
          # SnapshotRetentionLimit
          # The number of days that ElastiCache retains automatic snapshots before deleting                   them. -- WIP 
          # @note Required: No
          # @see  
          property :snapshot_retention_limit, 'SnapshotRetentionLimit'

          # @!scope class
          # @attribute [w]
          # SnapshotWindow
          # The time range (in UTC) when ElastiCache takes a daily snapshot of your node group.                   For example, you can specify 05:00-09:00. -- WIP 
          # @note Required: No
          # @see  
          property :snapshot_window, 'SnapshotWindow'

          # @!scope class
          # @attribute [w]
          # PrimaryEndPoint.Address
          # The DNS address of the primary read-write cache node. -- WIP 
          # @note Required: No
          # @see  
          property :primary_end_point.address, 'PrimaryEndPoint.Address'

          # @!scope class
          # @attribute [w]
          # PrimaryEndPoint.Port
          # The number of the port that the primary read-write cache engine is listening                      on. -- WIP 
          # @note Required: No
          # @see  
          property :primary_end_point.port, 'PrimaryEndPoint.Port'

          # @!scope class
          # @attribute [w]
          # ReadEndPoint.Addresses
          # A string with a list of endpoints for the read-only replicas. The order of                      the addresses map to the order of the ports from the                         ReadEndPoint.Ports attribute. -- WIP 
          # @note Required: No
          # @see  
          property :read_end_point.addresses, 'ReadEndPoint.Addresses'

          # @!scope class
          # @attribute [w]
          # ReadEndPoint.Ports
          # A string with a list of ports for the read-only replicas. The order of the                      ports map to the order of the addresses from the                         ReadEndPoint.Addresses attribute. -- WIP 
          # @note Required: No
          # @see  
          property :read_end_point.ports, 'ReadEndPoint.Ports'

          # @!scope class
          # @attribute [w]
          # CacheSecurityGroupNames
          # A list of cache security group names to associate with this replication group.                   If you specify the SecurityGroupIds property, do not specify this                   property; you can specify only one. -- WIP
          # @note Required: No
          # @see 
          property :cache_security_group_names, 'CacheSecurityGroupNames', :array

          # @!scope class
          # @attribute [w]
          # PreferredCacheClusterAZs
          # A list of Availability Zones (AZs) in which the cache clusters in this                   replication group are created. -- WIP
          # @note Required: No
          # @see 
          property :preferred_cache_cluster_a_zs, 'PreferredCacheClusterAZs', :array

          # @!scope class
          # @attribute [w]
          # SecurityGroupIds
          # A list of Amazon Virtual Private Cloud (Amazon VPC) security groups to associate with this replication                   group. Use this property only when you are creating a replication group in a VPC.                   If you specify the CacheSecurityGroupNames property, do not specify                   this property; you can specify only one. -- WIP
          # @note Required: No
          # @see 
          property :security_group_ids, 'SecurityGroupIds', :array

          # @!scope class
          # @attribute [w]
          # SnapshotArns
          # A single-element string list that specifies an ARN of a Redis                      .rdb snapshot file that is stored in Amazon Simple Storage Service (Amazon S3). The                   snapshot file populates the node group. The Amazon S3 object name in the ARN cannot                   contain commas. For example, you can specify                      arn:aws:s3:::my_bucket/snapshot1.rdb. -- WIP
          # @note Required: No
          # @see 
          property :snapshot_arns, 'SnapshotArns', :array


          def initialize(*args)
            super
            type 'ElastiCacheReplicationGroup'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::ElastiCacheReplicationGroup#automatic_failover_enabled automatic_failover_enabled}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#auto_minor_version_upgrade auto_minor_version_upgrade}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#cache_node_type cache_node_type}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#cache_parameter_group_name cache_parameter_group_name}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#cache_subnet_group_name cache_subnet_group_name}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#engine engine}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#engine_version engine_version}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#notification_topic_arn notification_topic_arn}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#num_cache_clusters num_cache_clusters}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#port port}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#preferred_maintenance_window preferred_maintenance_window}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#replication_group_description replication_group_description}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#snapshot_retention_limit snapshot_retention_limit}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#snapshot_window snapshot_window}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#primary_end_point.address primary_end_point.address}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#primary_end_point.port primary_end_point.port}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#read_end_point.addresses read_end_point.addresses}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#read_end_point.ports read_end_point.ports}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#cache_security_group_names cache_security_group_names}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#preferred_cache_cluster_a_zs preferred_cache_cluster_a_zs}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#security_group_ids security_group_ids}
      # {Model::Template::Resource::ElastiCacheReplicationGroup#snapshot_arns snapshot_arns}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html 
      # @see {Model::Template::Resource::ElastiCacheReplicationGroup}
      def elasticache_replicationgroup(name, &block)
        r = Model::Template::Resource::ElastiCacheReplicationGroup.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

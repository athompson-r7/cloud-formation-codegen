require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::ElastiCache::CacheCluster
        # AWS_ElastiCache_CacheCluster
        ##
        class ElastiCacheCacheCluster < Resource


          # @!scope class
          # @attribute [w]
          # AutoMinorVersionUpgrade
          # Indicates that minor engine upgrades will be applied automatically to the cache                   cluster during the maintenance window. -- WIP 
          # @note Required: No
          # @see  
          property :auto_minor_version_upgrade, 'AutoMinorVersionUpgrade'

          # @!scope class
          # @attribute [w]
          # AZMode
          # For Memcached cache clusters, indicates whether the nodes are created in a                   single Availability Zone or across multiple Availability Zones in the cluster's                   region. For valid values, see CreateCacheCluster in                   the Amazon ElastiCache API Reference. -- WIP 
          # @note Required: Conditional. If you specify multiple Availability Zones in the                      PreferredAvailabilityZones property, you must specify cross                   Availability Zones for this property.
          # @see  
          property :az_mode, 'AZMode'

          # @!scope class
          # @attribute [w]
          # CacheNodeType
          # The compute and memory capacity of nodes in a cache cluster. -- WIP 
          # @note Required: Yes
          # @see  
          property :cache_node_type, 'CacheNodeType'

          # @!scope class
          # @attribute [w]
          # CacheParameterGroupName
          # The name of the cache parameter group that is associated with this cache                   cluster. -- WIP 
          # @note Required: No
          # @see  
          property :cache_parameter_group_name, 'CacheParameterGroupName'

          # @!scope class
          # @attribute [w]
          # CacheSubnetGroupName
          # The cache subnet group that you associate with a cache cluster. -- WIP 
          # @note Required: No
          # @see  
          property :cache_subnet_group_name, 'CacheSubnetGroupName'

          # @!scope class
          # @attribute [w]
          # ClusterName
          # A name for the cache cluster. If you don't specify a name, AWS CloudFormation generates a                   unique physical ID and uses that ID for the cache cluster. For more information,                   see Name Type. -- WIP 
          # @note Required: No
          # @see  
          property :cluster_name, 'ClusterName'

          # @!scope class
          # @attribute [w]
          # Engine
          # The name of the cache engine to be used for this cache cluster, such as                      memcached or redis. -- WIP 
          # @note Required: Yes
          # @see  
          property :engine, 'Engine'

          # @!scope class
          # @attribute [w]
          # EngineVersion
          # The version of the cache engine to be used for this cluster. -- WIP 
          # @note Required: No
          # @see  
          property :engine_version, 'EngineVersion'

          # @!scope class
          # @attribute [w]
          # NotificationTopicArn
          # The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS)                   topic to which notifications will be sent. -- WIP 
          # @note Required: No
          # @see  
          property :notification_topic_arn, 'NotificationTopicArn'

          # @!scope class
          # @attribute [w]
          # NumCacheNodes
          # The number of cache nodes that the cache cluster should have. -- WIP 
          # @note Required: Yes
          # @see  
          property :num_cache_nodes, 'NumCacheNodes'

          # @!scope class
          # @attribute [w]
          # Port
          # The port number on which each of the cache nodes will accept                   connections. -- WIP 
          # @note Required: No
          # @see  
          property :port, 'Port'

          # @!scope class
          # @attribute [w]
          # PreferredAvailabilityZone
          # The Amazon EC2 Availability Zone in which the cache cluster is created. -- WIP 
          # @note Required: No
          # @see  
          property :preferred_availability_zone, 'PreferredAvailabilityZone'

          # @!scope class
          # @attribute [w]
          # PreferredMaintenanceWindow
          # The weekly time range (in UTC) during which system maintenance can                   occur. -- WIP 
          # @note Required: No
          # @see  
          property :preferred_maintenance_window, 'PreferredMaintenanceWindow'

          # @!scope class
          # @attribute [w]
          # SnapshotName
          # The name of a snapshot from which to restore data into a new Redis cache                   cluster. -- WIP 
          # @note Required: No
          # @see  
          property :snapshot_name, 'SnapshotName'

          # @!scope class
          # @attribute [w]
          # SnapshotRetentionLimit
          # For Redis cache clusters, the number of days for which ElastiCache retains automatic                   snapshots before deleting them. For example, if you set the value to                      5, a snapshot that was taken today will be retained for 5 days                   before being deleted. -- WIP 
          # @note Required: No
          # @see  
          property :snapshot_retention_limit, 'SnapshotRetentionLimit'

          # @!scope class
          # @attribute [w]
          # SnapshotWindow
          # For Redis cache clusters, the daily time range (in UTC) during which ElastiCache will                   begin taking a daily snapshot of your node group. For example, you can specify                      05:00-09:00. -- WIP 
          # @note Required: No
          # @see  
          property :snapshot_window, 'SnapshotWindow'

          # @!scope class
          # @attribute [w]
          # ConfigurationEndpoint.Address
          # The DNS address of the configuration endpoint for the Memcached cache                      cluster. -- WIP 
          # @note Required: No
          # @see  
          property :configuration_endpoint.address, 'ConfigurationEndpoint.Address'

          # @!scope class
          # @attribute [w]
          # ConfigurationEndpoint.Port
          # The port number of the configuration endpoint for the Memcached cache                      cluster. -- WIP 
          # @note Required: No
          # @see  
          property :configuration_endpoint.port, 'ConfigurationEndpoint.Port'

          # @!scope class
          # @attribute [w]
          # CacheSecurityGroupNames
          # A list of cache security group names that are associated with this cache                   cluster. If your cache cluster is in a VPC, specify the                      VpcSecurityGroupIds property instead. -- WIP
          # @note Required: Conditional: If your cache cluster isn't in a VPC, you must specify                   this property.
          # @see 
          property :cache_security_group_names, 'CacheSecurityGroupNames', :array

          # @!scope class
          # @attribute [w]
          # PreferredAvailabilityZones
          # For Memcached cache clusters, the list of Availability Zones in which cache                   nodes are created. The number of Availability Zones listed must equal the number                   of cache nodes. For example, if you want to create three nodes in two different                   Availability Zones, you can specify [&quot;us-east-1a&quot;, &quot;us-east-1a&quot;,                      &quot;us-east-1b&quot;], which would create two nodes in us-east-1a and one node                   in us-east-1b. -- WIP
          # @note Required: No
          # @see 
          property :preferred_availability_zones, 'PreferredAvailabilityZones', :array

          # @!scope class
          # @attribute [w]
          # SnapshotArns
          # The ARN of the snapshot file that you want to use to seed a new Redis cache                   cluster. If you manage a Redis instance outside of Amazon ElastiCache, you can create a new                   cache cluster in ElastiCache by using a snapshot file that is stored in an Amazon S3                   bucket. -- WIP
          # @note Required: No
          # @see 
          property :snapshot_arns, 'SnapshotArns', :array

          # @!scope class
          # @attribute [w]
          #  VpcSecurityGroupIds 
          # A list of VPC security group IDs. If your cache cluster isn't in a VPC, specify                   the CacheSecurityGroupNames property instead. -- WIP
          # @note Required: Conditional: If your cache cluster is in a VPC, you must specify                   this property.
          # @see 
          property : vpc_security_group_ids , ' VpcSecurityGroupIds ', :array


          def initialize(*args)
            super
            type 'ElastiCacheCacheCluster'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::ElastiCacheCacheCluster#auto_minor_version_upgrade auto_minor_version_upgrade}
      # {Model::Template::Resource::ElastiCacheCacheCluster#az_mode az_mode}
      # {Model::Template::Resource::ElastiCacheCacheCluster#cache_node_type cache_node_type}
      # {Model::Template::Resource::ElastiCacheCacheCluster#cache_parameter_group_name cache_parameter_group_name}
      # {Model::Template::Resource::ElastiCacheCacheCluster#cache_subnet_group_name cache_subnet_group_name}
      # {Model::Template::Resource::ElastiCacheCacheCluster#cluster_name cluster_name}
      # {Model::Template::Resource::ElastiCacheCacheCluster#engine engine}
      # {Model::Template::Resource::ElastiCacheCacheCluster#engine_version engine_version}
      # {Model::Template::Resource::ElastiCacheCacheCluster#notification_topic_arn notification_topic_arn}
      # {Model::Template::Resource::ElastiCacheCacheCluster#num_cache_nodes num_cache_nodes}
      # {Model::Template::Resource::ElastiCacheCacheCluster#port port}
      # {Model::Template::Resource::ElastiCacheCacheCluster#preferred_availability_zone preferred_availability_zone}
      # {Model::Template::Resource::ElastiCacheCacheCluster#preferred_maintenance_window preferred_maintenance_window}
      # {Model::Template::Resource::ElastiCacheCacheCluster#snapshot_name snapshot_name}
      # {Model::Template::Resource::ElastiCacheCacheCluster#snapshot_retention_limit snapshot_retention_limit}
      # {Model::Template::Resource::ElastiCacheCacheCluster#snapshot_window snapshot_window}
      # {Model::Template::Resource::ElastiCacheCacheCluster#configuration_endpoint.address configuration_endpoint.address}
      # {Model::Template::Resource::ElastiCacheCacheCluster#configuration_endpoint.port configuration_endpoint.port}
      # {Model::Template::Resource::ElastiCacheCacheCluster#cache_security_group_names cache_security_group_names}
      # {Model::Template::Resource::ElastiCacheCacheCluster#preferred_availability_zones preferred_availability_zones}
      # {Model::Template::Resource::ElastiCacheCacheCluster#snapshot_arns snapshot_arns}
      # {Model::Template::Resource::ElastiCacheCacheCluster# vpc_security_group_ids   vpc_security_group_ids }
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html 
      # @see {Model::Template::Resource::ElastiCacheCacheCluster}
      def elasticache_cachecluster(name, &block)
        r = Model::Template::Resource::ElastiCacheCacheCluster.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

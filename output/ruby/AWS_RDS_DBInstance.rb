require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::RDS::DBInstance
        # AWS_RDS_DBInstance
        ##
        class RDSDBInstance < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # AllocatedStorage
          # The allocated storage size specified in gigabytes (GB). -- WIP 
          # @note Required: Yes
          # @see  
          property :allocated_storage, 'AllocatedStorage'

          # @!scope class
          # @attribute [w]
          # AllowMajorVersionUpgrade
          # Indicates whether major version upgrades are allowed. Changing this parameter                   does not result in an outage, and the change is applied asynchronously as soon as                   possible. -- WIP 
          # @note Required: No
          # @see  
          property :allow_major_version_upgrade, 'AllowMajorVersionUpgrade'

          # @!scope class
          # @attribute [w]
          # AutoMinorVersionUpgrade
          # Indicates that minor engine upgrades will be applied automatically to the DB                   instance during the maintenance window. The default value is                   true. -- WIP 
          # @note Required: No
          # @see  
          property :auto_minor_version_upgrade, 'AutoMinorVersionUpgrade'

          # @!scope class
          # @attribute [w]
          # AvailabilityZone
          # The name of the Availability Zone where the DB instance is located. You cannot                   set the AvailabilityZone parameter if the                      MultiAZ parameter is set to true. -- WIP 
          # @note Required: No
          # @see  
          property :availability_zone, 'AvailabilityZone'

          # @!scope class
          # @attribute [w]
          # BackupRetentionPeriod
          # The number of days for which automatic DB snapshots are retained. -- WIP 
          # @note Required: No
          # @see  
          property :backup_retention_period, 'BackupRetentionPeriod'

          # @!scope class
          # @attribute [w]
          # CharacterSetName
          # For supported engines, specifies the character set to associate with the                   database instance. For more information, see Appendix: Oracle                      Character Sets Supported in Amazon RDS in the                      Amazon Relational Database Service User Guide. -- WIP 
          # @note Required: No
          # @see  
          property :character_set_name, 'CharacterSetName'

          # @!scope class
          # @attribute [w]
          # DBInstanceClass
          # The name of the compute and memory capacity class of the DB instance. -- WIP 
          # @note Required: Yes
          # @see  
          property :db_instance_class, 'DBInstanceClass'

          # @!scope class
          # @attribute [w]
          # DBInstanceIdentifier
          # A name for the DB instance. If you don't specify a name, AWS CloudFormation generates a                   unique physical ID and uses that ID for the DB instance. For more information, see                      Name Type. -- WIP 
          # @note Required: No
          # @see  
          property :db_instance_identifier, 'DBInstanceIdentifier'

          # @!scope class
          # @attribute [w]
          # DBName
          # The name of the initial database of this instance that was provided at create                   time, if one was specified. This same name is returned for the life of the DB                   instance. -- WIP 
          # @note Required: No
          # @see  
          property :db_name, 'DBName'

          # @!scope class
          # @attribute [w]
          # DBParameterGroupName
          # The name of an existing DB parameter group or a reference to an AWS::RDS::DBParameterGroup                   resource created in the template. -- WIP 
          # @note Required: No
          # @see  
          property :db_parameter_group_name, 'DBParameterGroupName'

          # @!scope class
          # @attribute [w]
          # DBSnapshotIdentifier
          # The identifier for the DB snapshot to restore from. -- WIP 
          # @note Required: No
          # @see  
          property :db_snapshot_identifier, 'DBSnapshotIdentifier'

          # @!scope class
          # @attribute [w]
          # DBSubnetGroupName
          # A DB subnet group to associate with the DB instance. -- WIP 
          # @note Required: No
          # @see  
          property :db_subnet_group_name, 'DBSubnetGroupName'

          # @!scope class
          # @attribute [w]
          # Engine
          # The name of the database engine that the DB instance uses. This property is                   optional when you specify the DBSnapshotIdentifier property to create                   DB instances. -- WIP 
          # @note Required: Conditional
          # @see  
          property :engine, 'Engine'

          # @!scope class
          # @attribute [w]
          # EngineVersion
          # The version number of the database engine to use. -- WIP 
          # @note Required: No
          # @see  
          property :engine_version, 'EngineVersion'

          # @!scope class
          # @attribute [w]
          # Iops
          # The number of I/O operations per second (IOPS) that the database provisions.                   The value must be equal to or greater than 1000. -- WIP 
          # @note Required: Conditional. If you specify io1 for the                      StorageType property, you must specify this property.
          # @see  
          property :iops, 'Iops'

          # @!scope class
          # @attribute [w]
          # KmsKeyId
          # The Amazon Resource Name (ARN) of the AWS Key Management Service master key that is used to                   encrypt the database instance, such as                      arn:aws:kms:us-east-1:012345678910:key/abcd1234-a123-456a-a12b-a123b4cd56ef.                   If you enable the StorageEncrypted property but don't specify this                   property, the default master key is used. -- WIP 
          # @note Required: No
          # @see  
          property :kms_key_id, 'KmsKeyId'

          # @!scope class
          # @attribute [w]
          # LicenseModel
          # The license model information for the DB instance. -- WIP 
          # @note Required: No
          # @see  
          property :license_model, 'LicenseModel'

          # @!scope class
          # @attribute [w]
          # MasterUsername
          # The master user name for the database instance. This property is optional when                   you specify the DBSnapshotIdentifier property to create DB instances. -- WIP 
          # @note Required: Conditional
          # @see  
          property :master_username, 'MasterUsername'

          # @!scope class
          # @attribute [w]
          # MasterUserPassword
          # The master password for the database instance. This property is optional when                   you specify the DBSnapshotIdentifier property to create DB                   instances. -- WIP 
          # @note Required: Conditional
          # @see  
          property :master_user_password, 'MasterUserPassword'

          # @!scope class
          # @attribute [w]
          # MultiAZ
          # Specifies if the database instance is a multiple Availability Zone deployment.                   You cannot set the AvailabilityZone parameter if the                      MultiAZ parameter is set to true. -- WIP 
          # @note Required: No
          # @see  
          property :multi_az, 'MultiAZ'

          # @!scope class
          # @attribute [w]
          # OptionGroupName
          # An option group that this database instance is associated with. -- WIP 
          # @note Required: No
          # @see  
          property :option_group_name, 'OptionGroupName'

          # @!scope class
          # @attribute [w]
          # Port
          # The port for the instance. -- WIP 
          # @note Required: No
          # @see  
          property :port, 'Port'

          # @!scope class
          # @attribute [w]
          # PreferredBackupWindow
          # The daily time range during which automated backups are created if automated                   backups are enabled, as determined by the BackupRetentionPeriod. -- WIP 
          # @note Required: No
          # @see  
          property :preferred_backup_window, 'PreferredBackupWindow'

          # @!scope class
          # @attribute [w]
          # PreferredMaintenanceWindow
          # The weekly time range (in UTC) during which system maintenance can                   occur. -- WIP 
          # @note Required: No
          # @see  
          property :preferred_maintenance_window, 'PreferredMaintenanceWindow'

          # @!scope class
          # @attribute [w]
          # PubliclyAccessible
          # Indicates whether the database instance is an Internet-facing instance. If you                   specify true, an instance is created with a publicly resolvable DNS                   name, which resolves to a public IP address. If you specify false, an                   internal instance is created with a DNS name that resolves to a private IP                   address. -- WIP 
          # @note Required: No
          # @see  
          property :publicly_accessible, 'PubliclyAccessible'

          # @!scope class
          # @attribute [w]
          # SourceDBInstanceIdentifier
          # If you want to create a read replica DB instance, specify the ID of the source                   database instance. Each database instance can have a certain number of read                   replicas. For more information, see Working with Read Replicas in the                      Amazon Relational Database Service Developer Guide. -- WIP 
          # @note Required: No
          # @see  
          property :source_db_instance_identifier, 'SourceDBInstanceIdentifier'

          # @!scope class
          # @attribute [w]
          # StorageEncrypted
          # Indicates whether the database instance is encrypted. -- WIP 
          # @note Required: Conditional. If you specify the KmsKeyId property, you                   must enable encryption.
          # @see  
          property :storage_encrypted, 'StorageEncrypted'

          # @!scope class
          # @attribute [w]
          # StorageType
          # The storage type associated with this database instance. -- WIP 
          # @note Required: No
          # @see  
          property :storage_type, 'StorageType'

          # @!scope class
          # @attribute [w]
          # Tags
          # An arbitrary set of tags (key-value pairs) for this database                   instance. -- WIP 
          # @note Required: No
          # @see  
          property :tags, 'Tags'

          # @!scope class
          # @attribute [w]
          # DBSecurityGroups
          # A list of the DB security groups to assign to the Amazon RDS instance. The list can                   include both the name of existing DB security groups or references to AWS::RDS::DBSecurityGroup                   resources created in the template. -- WIP
          # @note Required: No
          # @see 
          property :db_security_groups, 'DBSecurityGroups', :array

          # @!scope class
          # @attribute [w]
          # VPCSecurityGroups
          # A list of the VPC security groups to assign to the Amazon RDS instance. The list can                   include both the physical IDs of existing VPC security groups or references to                      AWS::EC2::SecurityGroup resources created in the                   template. -- WIP
          # @note Required: No
          # @see 
          property :vpc_security_groups, 'VPCSecurityGroups', :array


          def initialize(*args)
            super
            type 'RDSDBInstance'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::RDSDBInstance#allocated_storage allocated_storage}
      # {Model::Template::Resource::RDSDBInstance#allow_major_version_upgrade allow_major_version_upgrade}
      # {Model::Template::Resource::RDSDBInstance#auto_minor_version_upgrade auto_minor_version_upgrade}
      # {Model::Template::Resource::RDSDBInstance#availability_zone availability_zone}
      # {Model::Template::Resource::RDSDBInstance#backup_retention_period backup_retention_period}
      # {Model::Template::Resource::RDSDBInstance#character_set_name character_set_name}
      # {Model::Template::Resource::RDSDBInstance#db_instance_class db_instance_class}
      # {Model::Template::Resource::RDSDBInstance#db_instance_identifier db_instance_identifier}
      # {Model::Template::Resource::RDSDBInstance#db_name db_name}
      # {Model::Template::Resource::RDSDBInstance#db_parameter_group_name db_parameter_group_name}
      # {Model::Template::Resource::RDSDBInstance#db_snapshot_identifier db_snapshot_identifier}
      # {Model::Template::Resource::RDSDBInstance#db_subnet_group_name db_subnet_group_name}
      # {Model::Template::Resource::RDSDBInstance#engine engine}
      # {Model::Template::Resource::RDSDBInstance#engine_version engine_version}
      # {Model::Template::Resource::RDSDBInstance#iops iops}
      # {Model::Template::Resource::RDSDBInstance#kms_key_id kms_key_id}
      # {Model::Template::Resource::RDSDBInstance#license_model license_model}
      # {Model::Template::Resource::RDSDBInstance#master_username master_username}
      # {Model::Template::Resource::RDSDBInstance#master_user_password master_user_password}
      # {Model::Template::Resource::RDSDBInstance#multi_az multi_az}
      # {Model::Template::Resource::RDSDBInstance#option_group_name option_group_name}
      # {Model::Template::Resource::RDSDBInstance#port port}
      # {Model::Template::Resource::RDSDBInstance#preferred_backup_window preferred_backup_window}
      # {Model::Template::Resource::RDSDBInstance#preferred_maintenance_window preferred_maintenance_window}
      # {Model::Template::Resource::RDSDBInstance#publicly_accessible publicly_accessible}
      # {Model::Template::Resource::RDSDBInstance#source_db_instance_identifier source_db_instance_identifier}
      # {Model::Template::Resource::RDSDBInstance#storage_encrypted storage_encrypted}
      # {Model::Template::Resource::RDSDBInstance#storage_type storage_type}
      # {Model::Template::Resource::RDSDBInstance#tags tags}
      # {Model::Template::Resource::RDSDBInstance#db_security_groups db_security_groups}
      # {Model::Template::Resource::RDSDBInstance#vpc_security_groups vpc_security_groups}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html 
      # @see {Model::Template::Resource::RDSDBInstance}
      def rds_dbinstance(name, &block)
        r = Model::Template::Resource::RDSDBInstance.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_RDS_DBInstance
        ##
        class RDSDBInstance < Resource

          include Model::Mixin::Taggable

          property :allocated_storage, 'AllocatedStorage'
          property :allow_major_version_upgrade, 'AllowMajorVersionUpgrade'
          property :auto_minor_version_upgrade, 'AutoMinorVersionUpgrade'
          property :availability_zone, 'AvailabilityZone'
          property :backup_retention_period, 'BackupRetentionPeriod'
          property :character_set_name, 'CharacterSetName'
          property :db_instance_class, 'DBInstanceClass'
          property :db_instance_identifier, 'DBInstanceIdentifier'
          property :db_name, 'DBName'
          property :db_parameter_group_name, 'DBParameterGroupName'
          property :db_snapshot_identifier, 'DBSnapshotIdentifier'
          property :db_subnet_group_name, 'DBSubnetGroupName'
          property :engine, 'Engine'
          property :engine_version, 'EngineVersion'
          property :iops, 'Iops'
          property :kms_key_id, 'KmsKeyId'
          property :license_model, 'LicenseModel'
          property :master_username, 'MasterUsername'
          property :master_user_password, 'MasterUserPassword'
          property :multi_az, 'MultiAZ'
          property :option_group_name, 'OptionGroupName'
          property :port, 'Port'
          property :preferred_backup_window, 'PreferredBackupWindow'
          property :preferred_maintenance_window, 'PreferredMaintenanceWindow'
          property :publicly_accessible, 'PubliclyAccessible'
          property :source_db_instance_identifier, 'SourceDBInstanceIdentifier'
          property :storage_encrypted, 'StorageEncrypted'
          property :storage_type, 'StorageType'
          property :tags, 'Tags'

          def initialize(*args)
            super
            type 'AWS_RDS_DBInstance'

            @variables['DBSecurityGroups'] = []
            @variables['VPCSecurityGroups'] = []
          end

          def db_security_groups(value)
            @variables['DBSecurityGroups'] << value
          end
          
          def vpc_security_groups(value)
            @variables['VPCSecurityGroups'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def rds_dbinstance(name, &block)
        r = Model::Template::Resource::RDSDBInstance.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end
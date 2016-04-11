require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EFS::MountTarget
        # AWS_EFS_MountTarget
        ##
        class EFSMountTarget < Resource


          # @!scope class
          # @attribute [w]
          # FileSystemId
          # The ID of the file system for which you want to create the mount target. -- WIP 
          # @note Required: Yes
          # @see  
          property :file_system_id, 'FileSystemId'

          # @!scope class
          # @attribute [w]
          # IpAddress
          # An IPv4 address that is within the address range of the subnet that is                   specified in the SubnetId property. If you don't specify an IP                   address, Amazon EFS automatically assigns an address that is within the range of the                   subnet. -- WIP 
          # @note Required: No
          # @see  
          property :ip_address, 'IpAddress'

          # @!scope class
          # @attribute [w]
          # SubnetId
          # The ID of the subnet in which you want to add the mount target. -- WIP 
          # @note Required: Yes
          # @see  
          property :subnet_id, 'SubnetId'

          # @!scope class
          # @attribute [w]
          # SecurityGroups
          # A maximum of five VPC security group IDs that are in the same VPC as the subnet                   that is specified in the SubnetId property. For more information                   about security groups and mount targets, see Security in the                      Amazon Elastic File System User Guide. -- WIP
          # @note Required: Yes
          # @see 
          property :security_groups, 'SecurityGroups', :array


          def initialize(*args)
            super
            type 'EFSMountTarget'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EFSMountTarget#file_system_id file_system_id}
      # {Model::Template::Resource::EFSMountTarget#ip_address ip_address}
      # {Model::Template::Resource::EFSMountTarget#subnet_id subnet_id}
      # {Model::Template::Resource::EFSMountTarget#security_groups security_groups}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-mounttarget.html 
      # @see {Model::Template::Resource::EFSMountTarget}
      def efs_mounttarget(name, &block)
        r = Model::Template::Resource::EFSMountTarget.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

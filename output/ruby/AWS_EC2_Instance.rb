require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::Instance
        # AWS_EC2_Instance
        ##
        class EC2Instance < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # AvailabilityZone
          # Specifies the name of the Availability Zone in which the instance is                   located. -- WIP 
          # @note Required: No. If not specified, an Availability Zone will be automatically                   chosen for you based on the load balancing criteria for the region.
          # @see  
          property :availability_zone, 'AvailabilityZone'

          # @!scope class
          # @attribute [w]
          # DisableApiTermination
          # Specifies whether the instance can be terminated through the API. -- WIP 
          # @note Required: No
          # @see  
          property :disable_api_termination, 'DisableApiTermination'

          # @!scope class
          # @attribute [w]
          # EbsOptimized
          # Specifies whether the instance is optimized for Amazon Elastic Block Store I/O. This                   optimization provides dedicated throughput to Amazon EBS and an optimized configuration                   stack to provide optimal EBS I/O performance. -- WIP 
          # @note Required: No. By default, AWS CloudFormation specifies false.
          # @see  
          property :ebs_optimized, 'EbsOptimized'

          # @!scope class
          # @attribute [w]
          # IamInstanceProfile
          # The physical ID of an instance profile or a reference to an AWS::IAM::InstanceProfile                   resource. -- WIP 
          # @note Required: No
          # @see  
          property :iam_instance_profile, 'IamInstanceProfile'

          # @!scope class
          # @attribute [w]
          # ImageId
          # Provides the unique ID of the Amazon Machine Image (AMI) that was assigned                   during registration. -- WIP 
          # @note Required: Yes
          # @see  
          property :image_id, 'ImageId'

          # @!scope class
          # @attribute [w]
          # InstanceInitiatedShutdownBehavior
          # Indicates whether an instance stops or terminates when you shut down the                   instance from the instance's operating system shutdown command. You can specify                      stop or terminate. For more information, see the                   RunInstances command in the                      Amazon EC2 API Reference. -- WIP 
          # @note Required: No
          # @see  
          property :instance_initiated_shutdown_behavior, 'InstanceInitiatedShutdownBehavior'

          # @!scope class
          # @attribute [w]
          # InstanceType
          # The instance type, such as t2.micro. The default type is                      &quot;m1.small&quot;. For a list of instance types, see Instance Families and                   Types. -- WIP 
          # @note Required: No
          # @see  
          property :instance_type, 'InstanceType'

          # @!scope class
          # @attribute [w]
          # KernelId
          # The kernel ID. -- WIP 
          # @note Required: No
          # @see  
          property :kernel_id, 'KernelId'

          # @!scope class
          # @attribute [w]
          # KeyName
          # Provides the name of the Amazon EC2 key pair. -- WIP 
          # @note Required: No
          # @see  
          property :key_name, 'KeyName'

          # @!scope class
          # @attribute [w]
          # Monitoring
          # Specifies whether monitoring is enabled for the instance. -- WIP 
          # @note Required: No
          # @see  
          property :monitoring, 'Monitoring'

          # @!scope class
          # @attribute [w]
          # PlacementGroupName
          # The name of an existing placement group that you want to launch the instance                   into (for cluster instances). -- WIP 
          # @note Required: No
          # @see  
          property :placement_group_name, 'PlacementGroupName'

          # @!scope class
          # @attribute [w]
          # PrivateIpAddress
          # The private IP address for this instance. -- WIP 
          # @note Required: No
          # @see  
          property :private_ip_address, 'PrivateIpAddress'

          # @!scope class
          # @attribute [w]
          # RamdiskId
          # The ID of the RAM disk to select. Some kernels require additional drivers at                   launch. Check the kernel requirements for information about whether you need to                   specify a RAM disk. To find kernel requirements, go to the AWS Resource Center and                   search for the kernel ID. -- WIP 
          # @note Required: No
          # @see  
          property :ramdisk_id, 'RamdiskId'

          # @!scope class
          # @attribute [w]
          # SourceDestCheck
          # Controls whether source/destination checking is enabled on the instance. Also                   determines if an instance in a VPC will perform network address translation                   (NAT). -- WIP 
          # @note Required: No
          # @see  
          property :source_dest_check, 'SourceDestCheck'

          # @!scope class
          # @attribute [w]
          # SubnetId
          # If you're using Amazon VPC, this property specifies the ID of the subnet that                   you want to launch the instance into. If you specified the                      NetworkInterfaces property, do not specify this property. -- WIP 
          # @note Required: No
          # @see  
          property :subnet_id, 'SubnetId'

          # @!scope class
          # @attribute [w]
          # Tags
          # An arbitrary set of tags (key-value pairs) for this instance. -- WIP 
          # @note Required: No
          # @see  
          property :tags, 'Tags'

          # @!scope class
          # @attribute [w]
          # Tenancy
          # The tenancy of the instance that you want to launch. This value can be either                      &quot;default&quot; or &quot;dedicated&quot;. An instance that has a                      tenancy value of &quot;dedicated&quot; runs on                   single-tenant hardware and can be launched only into a VPC. For more information,                   see Using                      EC2 Dedicated Instances Within Your VPC in the                      Amazon VPC User Guide. -- WIP 
          # @note Required: No
          # @see  
          property :tenancy, 'Tenancy'

          # @!scope class
          # @attribute [w]
          # UserData
          # Base64-encoded MIME user data that is made available to the instances. -- WIP 
          # @note Required: No
          # @see  
          property :user_data, 'UserData'

          # @!scope class
          # @attribute [w]
          # AdditionalInfo
          # Reserved. -- WIP 
          # @note Required: No
          # @see  
          property :additional_info, 'AdditionalInfo'

          # @!scope class
          # @attribute [w]
          # AvailabilityZone
          # The Availability Zone where the specified instance is launched. For example:                         us-east-1b. -- WIP 
          # @note Required: No
          # @see  
          property :availability_zone, 'AvailabilityZone'

          # @!scope class
          # @attribute [w]
          # PrivateDnsName
          # The private DNS name of the specified instance. For example:                         ip-10-24-34-0.ec2.internal. -- WIP 
          # @note Required: No
          # @see  
          property :private_dns_name, 'PrivateDnsName'

          # @!scope class
          # @attribute [w]
          # PublicDnsName
          # The public DNS name of the specified instance. For example:                      ec2-107-20-50-45.compute-1.amazonaws.com. -- WIP 
          # @note Required: No
          # @see  
          property :public_dns_name, 'PublicDnsName'

          # @!scope class
          # @attribute [w]
          # PrivateIp
          # The private IP address of the specified instance. For example:                         10.24.34.0. -- WIP 
          # @note Required: No
          # @see  
          property :private_ip, 'PrivateIp'

          # @!scope class
          # @attribute [w]
          # PublicIp
          # The public IP address of the specified instance. For example:                         192.0.2.0. -- WIP 
          # @note Required: No
          # @see  
          property :public_ip, 'PublicIp'

          # @!scope class
          # @attribute [w]
          # BlockDeviceMappings
          # Defines a set of Amazon Elastic Block Store block device mappings, ephemeral instance store                   block device mappings, or both. For more information, see Amazon Elastic Block Store or Amazon EC2 Instance Store in the                   Amazon EC2 User Guide for Linux Instances. -- WIP
          # @note Required: No
          # @see 
          property :block_device_mappings, 'BlockDeviceMappings', :array

          # @!scope class
          # @attribute [w]
          # NetworkInterfaces
          # A list of embedded objects that describe the network interfaces to associate                   with this instance. -- WIP
          # @note Required: No
          # @see 
          property :network_interfaces, 'NetworkInterfaces', :array

          # @!scope class
          # @attribute [w]
          # SecurityGroupIds
          # A list that contains the security group IDs for VPC security groups to assign                   to the Amazon EC2 instance. If you specified the NetworkInterfaces                   property, do not specify this property. -- WIP
          # @note Required: Conditional. Required for VPC security                   groups.
          # @see 
          property :security_group_ids, 'SecurityGroupIds', :array

          # @!scope class
          # @attribute [w]
          # SecurityGroups
          # Valid only for Amazon EC2 security groups. A list that contains the Amazon EC2 security                   groups to assign to the Amazon EC2 instance. The list can contain both the name of                   existing Amazon EC2 security groups or references to AWS::EC2::SecurityGroup resources                   created in the template. -- WIP
          # @note Required: No
          # @see 
          property :security_groups, 'SecurityGroups', :array

          # @!scope class
          # @attribute [w]
          # Volumes
          # The Amazon EBS volumes to attach to the instance. -- WIP
          # @note Required: No
          # @see 
          property :volumes, 'Volumes', :array


          def initialize(*args)
            super
            type 'EC2Instance'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2Instance#availability_zone availability_zone}
      # {Model::Template::Resource::EC2Instance#disable_api_termination disable_api_termination}
      # {Model::Template::Resource::EC2Instance#ebs_optimized ebs_optimized}
      # {Model::Template::Resource::EC2Instance#iam_instance_profile iam_instance_profile}
      # {Model::Template::Resource::EC2Instance#image_id image_id}
      # {Model::Template::Resource::EC2Instance#instance_initiated_shutdown_behavior instance_initiated_shutdown_behavior}
      # {Model::Template::Resource::EC2Instance#instance_type instance_type}
      # {Model::Template::Resource::EC2Instance#kernel_id kernel_id}
      # {Model::Template::Resource::EC2Instance#key_name key_name}
      # {Model::Template::Resource::EC2Instance#monitoring monitoring}
      # {Model::Template::Resource::EC2Instance#placement_group_name placement_group_name}
      # {Model::Template::Resource::EC2Instance#private_ip_address private_ip_address}
      # {Model::Template::Resource::EC2Instance#ramdisk_id ramdisk_id}
      # {Model::Template::Resource::EC2Instance#source_dest_check source_dest_check}
      # {Model::Template::Resource::EC2Instance#subnet_id subnet_id}
      # {Model::Template::Resource::EC2Instance#tags tags}
      # {Model::Template::Resource::EC2Instance#tenancy tenancy}
      # {Model::Template::Resource::EC2Instance#user_data user_data}
      # {Model::Template::Resource::EC2Instance#additional_info additional_info}
      # {Model::Template::Resource::EC2Instance#availability_zone availability_zone}
      # {Model::Template::Resource::EC2Instance#private_dns_name private_dns_name}
      # {Model::Template::Resource::EC2Instance#public_dns_name public_dns_name}
      # {Model::Template::Resource::EC2Instance#private_ip private_ip}
      # {Model::Template::Resource::EC2Instance#public_ip public_ip}
      # {Model::Template::Resource::EC2Instance#block_device_mappings block_device_mappings}
      # {Model::Template::Resource::EC2Instance#network_interfaces network_interfaces}
      # {Model::Template::Resource::EC2Instance#security_group_ids security_group_ids}
      # {Model::Template::Resource::EC2Instance#security_groups security_groups}
      # {Model::Template::Resource::EC2Instance#volumes volumes}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html 
      # @see {Model::Template::Resource::EC2Instance}
      def ec2_instance(name, &block)
        r = Model::Template::Resource::EC2Instance.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

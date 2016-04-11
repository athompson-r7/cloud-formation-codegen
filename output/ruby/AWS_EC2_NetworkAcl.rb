require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::NetworkAcl
        # AWS_EC2_NetworkAcl
        ##
        class EC2NetworkAcl < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # Tags
          # An arbitrary set of tags (key-value pairs) for this ACL. -- WIP 
          # @note Required: No
          # @see  
          property :tags, 'Tags'

          # @!scope class
          # @attribute [w]
          # VpcId
          # The ID of the VPC where the network ACL will be created. -- WIP 
          # @note Required: Yes
          # @see  
          property :vpc_id, 'VpcId'


          def initialize(*args)
            super
            type 'EC2NetworkAcl'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2NetworkAcl#tags tags}
      # {Model::Template::Resource::EC2NetworkAcl#vpc_id vpc_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl.html 
      # @see {Model::Template::Resource::EC2NetworkAcl}
      def ec2_networkacl(name, &block)
        r = Model::Template::Resource::EC2NetworkAcl.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

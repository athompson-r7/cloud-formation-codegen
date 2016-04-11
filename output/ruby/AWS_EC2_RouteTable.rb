require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::RouteTable
        # AWS_EC2_RouteTable
        ##
        class EC2RouteTable < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # VpcId
          # The ID of the VPC where the route table will be created. -- WIP 
          # @note Required: Yes
          # @see  
          property :vpc_id, 'VpcId'

          # @!scope class
          # @attribute [w]
          # Tags
          # An arbitrary set of tags (key-value pairs) for this route table. -- WIP 
          # @note Required: No
          # @see  
          property :tags, 'Tags'


          def initialize(*args)
            super
            type 'EC2RouteTable'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2RouteTable#vpc_id vpc_id}
      # {Model::Template::Resource::EC2RouteTable#tags tags}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route-table.html 
      # @see {Model::Template::Resource::EC2RouteTable}
      def ec2_routetable(name, &block)
        r = Model::Template::Resource::EC2RouteTable.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

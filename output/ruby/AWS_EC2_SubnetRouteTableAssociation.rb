require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::SubnetRouteTableAssociation
        # AWS_EC2_SubnetRouteTableAssociation
        ##
        class EC2SubnetRouteTableAssociation < Resource


          # @!scope class
          # @attribute [w]
          # RouteTableId
          # The ID of the route table. This is commonly written as a reference to a route table declared                   elsewhere in the template. For example: -- WIP 
          # @note Required: Yes
          # @see  
          property :route_table_id, 'RouteTableId'

          # @!scope class
          # @attribute [w]
          # SubnetId
          # The ID of the subnet. This is commonly written as a reference to a subnet declared elsewhere in the                   template. For example: -- WIP 
          # @note Required: Yes
          # @see  
          property :subnet_id, 'SubnetId'


          def initialize(*args)
            super
            type 'EC2SubnetRouteTableAssociation'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2SubnetRouteTableAssociation#route_table_id route_table_id}
      # {Model::Template::Resource::EC2SubnetRouteTableAssociation#subnet_id subnet_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-route-table-assoc.html 
      # @see {Model::Template::Resource::EC2SubnetRouteTableAssociation}
      def ec2_subnetroutetableassociation(name, &block)
        r = Model::Template::Resource::EC2SubnetRouteTableAssociation.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

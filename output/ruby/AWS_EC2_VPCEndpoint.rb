require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::VPCEndpoint
        # AWS_EC2_VPCEndpoint
        ##
        class EC2VPCEndpoint < Resource


          # @!scope class
          # @attribute [w]
          # PolicyDocument
          # A policy to attach to the endpoint that controls access to the service. The             policy must be valid JSON. The default policy allows full access to the AWS service. For             more information, see Controlling Access to Services in the             Amazon VPC User Guide. -- WIP 
          # @note Required: No
          # @see  
          property :policy_document, 'PolicyDocument'

          # @!scope class
          # @attribute [w]
          # ServiceName
          # The AWS service to which you want to establish a connection. Specify the                   service name in the form of                         com.amazonaws.region.service. -- WIP 
          # @note Required: Yes
          # @see  
          property :service_name, 'ServiceName'

          # @!scope class
          # @attribute [w]
          # VpcId
          # The ID of the VPC in which the endpoint is used. -- WIP 
          # @note Required: Yes
          # @see  
          property :vpc_id, 'VpcId'

          # @!scope class
          # @attribute [w]
          # RouteTableIds
          # One or more route table IDs that are used by the VPC to reach the                   endpoint. -- WIP
          # @note Required: No
          # @see 
          property :route_table_ids, 'RouteTableIds', :array


          def initialize(*args)
            super
            type 'EC2VPCEndpoint'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2VPCEndpoint#policy_document policy_document}
      # {Model::Template::Resource::EC2VPCEndpoint#service_name service_name}
      # {Model::Template::Resource::EC2VPCEndpoint#vpc_id vpc_id}
      # {Model::Template::Resource::EC2VPCEndpoint#route_table_ids route_table_ids}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html 
      # @see {Model::Template::Resource::EC2VPCEndpoint}
      def ec2_vpcendpoint(name, &block)
        r = Model::Template::Resource::EC2VPCEndpoint.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

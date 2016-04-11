require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::InternetGateway
        # AWS_EC2_InternetGateway
        ##
        class EC2InternetGateway < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # Tags
          # An arbitrary set of tags (key-value pairs) for this resource. -- WIP 
          # @note Required: No
          # @see  
          property :tags, 'Tags'


          def initialize(*args)
            super
            type 'EC2InternetGateway'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2InternetGateway#tags tags}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-internet-gateway.html 
      # @see {Model::Template::Resource::EC2InternetGateway}
      def ec2_internetgateway(name, &block)
        r = Model::Template::Resource::EC2InternetGateway.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

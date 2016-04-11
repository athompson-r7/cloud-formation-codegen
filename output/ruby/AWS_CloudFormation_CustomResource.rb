require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::CloudFormation::CustomResource
        # AWS_CloudFormation_CustomResource
        ##
        class CloudFormationCustomResource < Resource


          # @!scope class
          # @attribute [w]
          # ServiceToken
          # The service token that was given to the template developer by the service provider                   to access the service, such as an Amazon SNS topic ARN or Lambda function ARN. The                   service token must be from the same region in which you are creating the                   stack. -- WIP 
          # @note Required: Yes
          # @see  
          property :service_token, 'ServiceToken'


          def initialize(*args)
            super
            type 'CloudFormationCustomResource'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::CloudFormationCustomResource#service_token service_token}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cfn-customresource.html 
      # @see {Model::Template::Resource::CloudFormationCustomResource}
      def cloudformation_customresource(name, &block)
        r = Model::Template::Resource::CloudFormationCustomResource.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

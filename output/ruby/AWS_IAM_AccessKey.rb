require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::IAM::AccessKey
        # AWS_IAM_AccessKey
        ##
        class IAMAccessKey < Resource


          # @!scope class
          # @attribute [w]
          # Serial
          # This value is specific to AWS CloudFormation and can only be incremented. Incrementing this                   value notifies AWS CloudFormation that you want to rotate your access key. When you update your stack, AWS CloudFormation will                   replace the existing access key with a new key. -- WIP 
          # @note Required: No
          # @see  
          property :serial, 'Serial'

          # @!scope class
          # @attribute [w]
          # Status
          # The status of the access key. -- WIP 
          # @note Required: Yes
          # @see  
          property :status, 'Status'

          # @!scope class
          # @attribute [w]
          # UserName
          # The name of the user that the new key will belong to. -- WIP 
          # @note Required: Yes
          # @see  
          property :user_name, 'UserName'

          # @!scope class
          # @attribute [w]
          # SecretAccessKey
          # Returns the secret access key for the specified AWS::IAM::AccessKey resource. For                      example: wJalrXUtnFEMI/K7MDENG/bPxRfiCYzEXAMPLEKEY. -- WIP 
          # @note Required: No
          # @see  
          property :secret_access_key, 'SecretAccessKey'


          def initialize(*args)
            super
            type 'IAMAccessKey'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::IAMAccessKey#serial serial}
      # {Model::Template::Resource::IAMAccessKey#status status}
      # {Model::Template::Resource::IAMAccessKey#user_name user_name}
      # {Model::Template::Resource::IAMAccessKey#secret_access_key secret_access_key}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html 
      # @see {Model::Template::Resource::IAMAccessKey}
      def iam_accesskey(name, &block)
        r = Model::Template::Resource::IAMAccessKey.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

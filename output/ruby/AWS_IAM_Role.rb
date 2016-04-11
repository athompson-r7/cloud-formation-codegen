require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::IAM::Role
        # AWS_IAM_Role
        ##
        class IAMRole < Resource


          # @!scope class
          # @attribute [w]
          # AssumeRolePolicyDocument
          # The IAM assume role policy that is associated with this role. -- WIP 
          # @note Required: Yes
          # @see  
          property :assume_role_policy_document, 'AssumeRolePolicyDocument'

          # @!scope class
          # @attribute [w]
          # Path
          # The path associated with this role. For information about IAM paths, see                      Friendly Names and Paths in                   IAM User Guide. -- WIP 
          # @note Required: No
          # @see  
          property :path, 'Path'

          # @!scope class
          # @attribute [w]
          # Arn
          # Returns the Amazon Resource Name (ARN) for the instance profile. For example: -- WIP 
          # @note Required: No
          # @see  
          property :arn, 'Arn'

          # @!scope class
          # @attribute [w]
          # ManagedPolicyArns
          # One or more managed policy ARNs to attach to this role. -- WIP
          # @note Required: No
          # @see 
          property :managed_policy_arns, 'ManagedPolicyArns', :array

          # @!scope class
          # @attribute [w]
          # Policies
          # The policies to associate with this role. Policies can also be specified                   externally. For sample templates that demonstrates both embedded and external                   policies, see Template                      Examples. -- WIP
          # @note Required: No
          # @see 
          property :policies, 'Policies', :array


          def initialize(*args)
            super
            type 'IAMRole'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::IAMRole#assume_role_policy_document assume_role_policy_document}
      # {Model::Template::Resource::IAMRole#path path}
      # {Model::Template::Resource::IAMRole#arn arn}
      # {Model::Template::Resource::IAMRole#managed_policy_arns managed_policy_arns}
      # {Model::Template::Resource::IAMRole#policies policies}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html 
      # @see {Model::Template::Resource::IAMRole}
      def iam_role(name, &block)
        r = Model::Template::Resource::IAMRole.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::IAM::User
        # AWS_IAM_User
        ##
        class IAMUser < Resource


          # @!scope class
          # @attribute [w]
          # LoginProfile
          # Creates a login profile so that the user can access the AWS Management Console. -- WIP 
          # @note Required: No
          # @see  
          property :login_profile, 'LoginProfile'

          # @!scope class
          # @attribute [w]
          # Path
          # The path for the user name. For more information about paths, see Identifiers                   for IAM Entities in Using AWS Identity and Access Management. -- WIP 
          # @note Required: No
          # @see  
          property :path, 'Path'

          # @!scope class
          # @attribute [w]
          # Arn
          # Returns the Amazon Resource Name (ARN) for the specified AWS::IAM::User resource. For example:                      arn:aws:iam::123456789012:user/mystack-myuser-1CCXAFG2H2U4D. -- WIP 
          # @note Required: No
          # @see  
          property :arn, 'Arn'

          # @!scope class
          # @attribute [w]
          # Groups
          # A name of a group to which you want to add the user. -- WIP
          # @note Required: No
          # @see 
          property :groups, 'Groups', :array

          # @!scope class
          # @attribute [w]
          # ManagedPolicyArns
          # One or more managed policy ARNs to attach to this user. -- WIP
          # @note Required: No
          # @see 
          property :managed_policy_arns, 'ManagedPolicyArns', :array

          # @!scope class
          # @attribute [w]
          # Policies
          # The policies to associate with this user. For information about policies, see                      Overview of Policies in [Using IAM]. -- WIP
          # @note Required: No
          # @see 
          property :policies, 'Policies', :array


          def initialize(*args)
            super
            type 'IAMUser'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::IAMUser#login_profile login_profile}
      # {Model::Template::Resource::IAMUser#path path}
      # {Model::Template::Resource::IAMUser#arn arn}
      # {Model::Template::Resource::IAMUser#groups groups}
      # {Model::Template::Resource::IAMUser#managed_policy_arns managed_policy_arns}
      # {Model::Template::Resource::IAMUser#policies policies}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html 
      # @see {Model::Template::Resource::IAMUser}
      def iam_user(name, &block)
        r = Model::Template::Resource::IAMUser.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

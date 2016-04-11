require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::IAM::Policy
        # AWS_IAM_Policy
        ##
        class IAMPolicy < Resource


          # @!scope class
          # @attribute [w]
          # PolicyDocument
          # A policy document that contains permissions to add to the specified users or                   groups. -- WIP 
          # @note Required: Yes
          # @see  
          property :policy_document, 'PolicyDocument'

          # @!scope class
          # @attribute [w]
          # PolicyName
          # The name of the policy. -- WIP 
          # @note Required: Yes
          # @see  
          property :policy_name, 'PolicyName'

          # @!scope class
          # @attribute [w]
          # Groups
          # The names of groups to which you want to add the policy. -- WIP
          # @note Required: Conditional. You must specify at least one of the following                   properties: Groups, Roles, or Users.
          # @see 
          property :groups, 'Groups', :array

          # @!scope class
          # @attribute [w]
          # Roles
          # The names of AWS::IAM::Roles to                   attach to this policy. -- WIP
          # @note Required: Conditional. You must specify at least one of the following                   properties: Groups, Roles, or Users.
          # @see 
          property :roles, 'Roles', :array

          # @!scope class
          # @attribute [w]
          # Users
          # The names of users for whom you want to add the policy. -- WIP
          # @note Required: Conditional. You must specify at least one of the following                   properties: Groups, Roles, or Users.
          # @see 
          property :users, 'Users', :array


          def initialize(*args)
            super
            type 'IAMPolicy'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::IAMPolicy#policy_document policy_document}
      # {Model::Template::Resource::IAMPolicy#policy_name policy_name}
      # {Model::Template::Resource::IAMPolicy#groups groups}
      # {Model::Template::Resource::IAMPolicy#roles roles}
      # {Model::Template::Resource::IAMPolicy#users users}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html 
      # @see {Model::Template::Resource::IAMPolicy}
      def iam_policy(name, &block)
        r = Model::Template::Resource::IAMPolicy.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

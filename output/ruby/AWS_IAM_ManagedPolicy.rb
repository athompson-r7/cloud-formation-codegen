require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::IAM::ManagedPolicy
        # AWS_IAM_ManagedPolicy
        ##
        class IAMManagedPolicy < Resource


          # @!scope class
          # @attribute [w]
          # Description
          # A description of the policy. For example, you can describe the permissions that                   are defined in the policy. -- WIP 
          # @note Required: No
          # @see  
          property :description, 'Description'

          # @!scope class
          # @attribute [w]
          # Path
          # The path for the policy. By default, the path is /. For more                   information, see IAM                      Identifiers in the IAM User Guide                   guide. -- WIP 
          # @note Required: No
          # @see  
          property :path, 'Path'

          # @!scope class
          # @attribute [w]
          # PolicyDocument
          # Policies that define the permissions for this managed policy. -- WIP 
          # @note Required: Yes
          # @see  
          property :policy_document, 'PolicyDocument'

          # @!scope class
          # @attribute [w]
          # Groups
          # The names of groups to attach to this policy. -- WIP
          # @note Required: No
          # @see 
          property :groups, 'Groups', :array

          # @!scope class
          # @attribute [w]
          # Roles
          # The names of roles to attach to this policy. -- WIP
          # @note Required: No
          # @see 
          property :roles, 'Roles', :array

          # @!scope class
          # @attribute [w]
          # Users
          # The names of users to attach to this policy. -- WIP
          # @note Required: No
          # @see 
          property :users, 'Users', :array


          def initialize(*args)
            super
            type 'IAMManagedPolicy'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::IAMManagedPolicy#description description}
      # {Model::Template::Resource::IAMManagedPolicy#path path}
      # {Model::Template::Resource::IAMManagedPolicy#policy_document policy_document}
      # {Model::Template::Resource::IAMManagedPolicy#groups groups}
      # {Model::Template::Resource::IAMManagedPolicy#roles roles}
      # {Model::Template::Resource::IAMManagedPolicy#users users}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html 
      # @see {Model::Template::Resource::IAMManagedPolicy}
      def iam_managedpolicy(name, &block)
        r = Model::Template::Resource::IAMManagedPolicy.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

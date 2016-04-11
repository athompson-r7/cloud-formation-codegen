require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::IAM::UserToGroupAddition
        # AWS_IAM_UserToGroupAddition
        ##
        class IAMUserToGroupAddition < Resource


          # @!scope class
          # @attribute [w]
          # GroupName
          # The name of group to add users to. -- WIP 
          # @note Required: Yes
          # @see  
          property :group_name, 'GroupName'

          # @!scope class
          # @attribute [w]
          # Users
          # Required: Yes -- WIP
          # @note Required: Yes
          # @see 
          property :users, 'Users', :array


          def initialize(*args)
            super
            type 'IAMUserToGroupAddition'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::IAMUserToGroupAddition#group_name group_name}
      # {Model::Template::Resource::IAMUserToGroupAddition#users users}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html 
      # @see {Model::Template::Resource::IAMUserToGroupAddition}
      def iam_usertogroupaddition(name, &block)
        r = Model::Template::Resource::IAMUserToGroupAddition.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

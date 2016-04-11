require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # IAM User LoginProfile
        # IAM_User_LoginProfile
        ##
        class UserLoginProfile < Resource


          # @!scope class
          # @attribute [w]
          # Password
          # The password for the user. -- WIP 
          # @note Required: Yes
          # @see  
          property :password, 'Password'

          # @!scope class
          # @attribute [w]
          # PasswordResetRequired
          # Specifies whether the user is required to set a new password the next time the                   user logs in to the AWS Management Console. -- WIP 
          # @note Required: No
          # @see  
          property :password_reset_required, 'PasswordResetRequired'


          def initialize(*args)
            super
            type 'UserLoginProfile'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::UserLoginProfile#password password}
      # {Model::Template::Resource::UserLoginProfile#password_reset_required password_reset_required}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user-loginprofile.html 
      # @see {Model::Template::Resource::UserLoginProfile}
      def user_loginprofile(name, &block)
        r = Model::Template::Resource::UserLoginProfile.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

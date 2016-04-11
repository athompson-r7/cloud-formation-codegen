require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::IAM::InstanceProfile
        # AWS_IAM_InstanceProfile
        ##
        class IAMInstanceProfile < Resource


          # @!scope class
          # @attribute [w]
          # Path
          # The path associated with this IAM instance profile. For information about IAM paths, see Friendly Names and Paths in the AWS Identity and Access Management User                      Guide. -- WIP 
          # @note Required: Yes
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
          # Roles
          # The roles associated with this IAM instance profile. -- WIP
          # @note Required: Yes
          # @see 
          property :roles, 'Roles', :array


          def initialize(*args)
            super
            type 'IAMInstanceProfile'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::IAMInstanceProfile#path path}
      # {Model::Template::Resource::IAMInstanceProfile#arn arn}
      # {Model::Template::Resource::IAMInstanceProfile#roles roles}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html 
      # @see {Model::Template::Resource::IAMInstanceProfile}
      def iam_instanceprofile(name, &block)
        r = Model::Template::Resource::IAMInstanceProfile.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::IAM::Group
        # AWS_IAM_Group
        ##
        class IAMGroup < Resource


          # @!scope class
          # @attribute [w]
          # Path
          # The path to the group. For more information about paths, see Identifiers for IAM Entities in Using IAM. -- WIP 
          # @note Required: No
          # @see  
          property :path, 'Path'

          # @!scope class
          # @attribute [w]
          # Arn
          # Returns the Amazon Resource Name (ARN) for the AWS::IAM::Group resource. For                      example: arn:aws:iam::123456789012:group/mystack-mygroup-1DZETITOWEKVO. -- WIP 
          # @note Required: No
          # @see  
          property :arn, 'Arn'

          # @!scope class
          # @attribute [w]
          # ManagedPolicyArns
          # One or more managed policy ARNs to attach to this group. -- WIP
          # @note Required: No
          # @see 
          property :managed_policy_arns, 'ManagedPolicyArns', :array

          # @!scope class
          # @attribute [w]
          # Policies
          # The policies to associate with this group. For information about policies,                   see Overview of Policies in Using IAM. -- WIP
          # @note Required: No
          # @see 
          property :policies, 'Policies', :array


          def initialize(*args)
            super
            type 'IAMGroup'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::IAMGroup#path path}
      # {Model::Template::Resource::IAMGroup#arn arn}
      # {Model::Template::Resource::IAMGroup#managed_policy_arns managed_policy_arns}
      # {Model::Template::Resource::IAMGroup#policies policies}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html 
      # @see {Model::Template::Resource::IAMGroup}
      def iam_group(name, &block)
        r = Model::Template::Resource::IAMGroup.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

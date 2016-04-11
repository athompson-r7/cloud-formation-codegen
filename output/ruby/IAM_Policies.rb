require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # IAM Policies
        # IAM_Policies
        ##
        class Policies < Resource


          # @!scope class
          # @attribute [w]
          # PolicyDocument
          # A policy document that describes what actions are allowed on which                   resources. -- WIP 
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


          def initialize(*args)
            super
            type 'Policies'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::Policies#policy_document policy_document}
      # {Model::Template::Resource::Policies#policy_name policy_name}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html 
      # @see {Model::Template::Resource::Policies}
      def policies(name, &block)
        r = Model::Template::Resource::Policies.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

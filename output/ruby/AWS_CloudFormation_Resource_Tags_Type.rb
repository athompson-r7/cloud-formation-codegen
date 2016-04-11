require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS CloudFormation Resource Tags Type
        # AWS_CloudFormation_Resource_Tags_Type
        ##
        class CloudFormationResourceTagsType < Resource


          # @!scope class
          # @attribute [w]
          # Key
          # The key name of the tag. You can specify a value that is 1 to 128 Unicode                   characters in length and cannot be prefixed with aws:. You can use                   any of the following characters: the set of Unicode letters, digits, whitespace,                      _, ., /, =, +,                   and -. -- WIP 
          # @note Required: Yes
          # @see  
          property :key, 'Key'

          # @!scope class
          # @attribute [w]
          # Value
          # The value for the tag. You can specify a value that is 1 to 128 Unicode                   characters in length and cannot be prefixed with aws:. You can use                   any of the following characters: the set of Unicode letters, digits, whitespace,                      _, ., /, =, +,                   and -. -- WIP 
          # @note Required: Yes
          # @see  
          property :value, 'Value'


          def initialize(*args)
            super
            type 'CloudFormationResourceTagsType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::CloudFormationResourceTagsType#key key}
      # {Model::Template::Resource::CloudFormationResourceTagsType#value value}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html 
      # @see {Model::Template::Resource::CloudFormationResourceTagsType}
      def cloudformation_resource_tags_type(name, &block)
        r = Model::Template::Resource::CloudFormationResourceTagsType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

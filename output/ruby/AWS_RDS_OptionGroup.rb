require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::RDS::OptionGroup
        # AWS_RDS_OptionGroup
        ##
        class RDSOptionGroup < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # EngineName
          # The name of the database engine that this option group is associated                   with. -- WIP 
          # @note Required: Yes
          # @see  
          property :engine_name, 'EngineName'

          # @!scope class
          # @attribute [w]
          # MajorEngineVersion
          # The major version number of the database engine that this option group is                   associated with. -- WIP 
          # @note Required: Yes
          # @see  
          property :major_engine_version, 'MajorEngineVersion'

          # @!scope class
          # @attribute [w]
          # OptionGroupDescription
          # A description of the option group. -- WIP 
          # @note Required: Yes
          # @see  
          property :option_group_description, 'OptionGroupDescription'

          # @!scope class
          # @attribute [w]
          # OptionConfigurations
          # The configurations for this option group. -- WIP 
          # @note Required: Yes
          # @see  
          property :option_configurations, 'OptionConfigurations'

          # @!scope class
          # @attribute [w]
          # Tags
          # An arbitrary set of tags (key-value pairs) for this option group. -- WIP 
          # @note Required: No
          # @see  
          property :tags, 'Tags'


          def initialize(*args)
            super
            type 'RDSOptionGroup'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::RDSOptionGroup#engine_name engine_name}
      # {Model::Template::Resource::RDSOptionGroup#major_engine_version major_engine_version}
      # {Model::Template::Resource::RDSOptionGroup#option_group_description option_group_description}
      # {Model::Template::Resource::RDSOptionGroup#option_configurations option_configurations}
      # {Model::Template::Resource::RDSOptionGroup#tags tags}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-optiongroup.html 
      # @see {Model::Template::Resource::RDSOptionGroup}
      def rds_optiongroup(name, &block)
        r = Model::Template::Resource::RDSOptionGroup.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

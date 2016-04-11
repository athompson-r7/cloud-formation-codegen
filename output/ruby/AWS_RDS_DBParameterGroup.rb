require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::RDS::DBParameterGroup
        # AWS_RDS_DBParameterGroup
        ##
        class RDSDBParameterGroup < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # Description
          # A friendly description of the RDS parameter group. For example, &quot;My Parameter Group&quot;. -- WIP 
          # @note Required: Yes
          # @see  
          property :description, 'Description'

          # @!scope class
          # @attribute [w]
          # Family
          # The database family of this RDS parameter group. For example, &quot;MySQL5.1&quot;. -- WIP 
          # @note Required: Yes
          # @see  
          property :family, 'Family'

          # @!scope class
          # @attribute [w]
          # Parameters
          # The parameters to set for this RDS parameter group. -- WIP 
          # @note Required: No
          # @see  
          property :parameters, 'Parameters'

          # @!scope class
          # @attribute [w]
          # Tags
          # The tags that you want to attach to the RDS parameter group. -- WIP
          # @note Required: No
          # @see 
          property :tags, 'Tags', :array


          def initialize(*args)
            super
            type 'RDSDBParameterGroup'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::RDSDBParameterGroup#description description}
      # {Model::Template::Resource::RDSDBParameterGroup#family family}
      # {Model::Template::Resource::RDSDBParameterGroup#parameters parameters}
      # {Model::Template::Resource::RDSDBParameterGroup#tags tags}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbparametergroup.html 
      # @see {Model::Template::Resource::RDSDBParameterGroup}
      def rds_dbparametergroup(name, &block)
        r = Model::Template::Resource::RDSDBParameterGroup.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

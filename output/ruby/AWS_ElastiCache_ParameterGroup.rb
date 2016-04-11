require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::ElastiCache::ParameterGroup
        # AWS_ElastiCache_ParameterGroup
        ##
        class ElastiCacheParameterGroup < Resource


          # @!scope class
          # @attribute [w]
          # CacheParameterGroupFamily
          # The name of the cache parameter group family that the cache parameter group can be used                with. -- WIP 
          # @note Required: Yes
          # @see  
          property :cache_parameter_group_family, 'CacheParameterGroupFamily'

          # @!scope class
          # @attribute [w]
          # Description
          # The description for the Cache Parameter Group. -- WIP 
          # @note Required: Yes
          # @see  
          property :description, 'Description'

          # @!scope class
          # @attribute [w]
          # Properties
          # A comma-delimited list of parameter name/value pairs. For more information, go to ModifyCacheParameterGroup in the Amazon ElastiCache API Reference                      Guide. -- WIP 
          # @note Required: Yes
          # @see  
          property :properties, 'Properties'


          def initialize(*args)
            super
            type 'ElastiCacheParameterGroup'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::ElastiCacheParameterGroup#cache_parameter_group_family cache_parameter_group_family}
      # {Model::Template::Resource::ElastiCacheParameterGroup#description description}
      # {Model::Template::Resource::ElastiCacheParameterGroup#properties properties}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-parameter-group.html 
      # @see {Model::Template::Resource::ElastiCacheParameterGroup}
      def elasticache_parametergroup(name, &block)
        r = Model::Template::Resource::ElastiCacheParameterGroup.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

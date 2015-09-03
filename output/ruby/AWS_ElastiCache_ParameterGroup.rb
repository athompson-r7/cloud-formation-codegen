require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_ElastiCache_ParameterGroup
        ##
        class ElastiCacheParameterGroup < Resource


          property :cache_parameter_group_family, 'CacheParameterGroupFamily'
          property :description, 'Description'
          property :properties, 'Properties'

          def initialize(*args)
            super
            type 'AWS_ElastiCache_ParameterGroup'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def elasticache_parametergroup(name, &block)
        r = Model::Template::Resource::ElastiCacheParameterGroup.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end
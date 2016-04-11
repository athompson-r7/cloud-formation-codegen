require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::SDB::Domain
        # AWS_SDB_Domain
        ##
        class SDBDomain < Resource



          def initialize(*args)
            super
            type 'SDBDomain'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-simpledb.html 
      # @see {Model::Template::Resource::SDBDomain}
      def sdb_domain(name, &block)
        r = Model::Template::Resource::SDBDomain.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

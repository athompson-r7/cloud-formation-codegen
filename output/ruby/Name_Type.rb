require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Name Type
        # Name_Type
        ##
        class Type < Resource



          def initialize(*args)
            super
            type 'Type'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-name.html 
      # @see {Model::Template::Resource::Type}
      def type(name, &block)
        r = Model::Template::Resource::Type.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # EC2 PortRange Property Type
        # EC2_PortRange_Property_Type
        ##
        class PortRangePropertyType < Resource



          def initialize(*args)
            super
            type 'PortRangePropertyType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-port-range.html 
      # @see {Model::Template::Resource::PortRangePropertyType}
      def portrange_property_type(name, &block)
        r = Model::Template::Resource::PortRangePropertyType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

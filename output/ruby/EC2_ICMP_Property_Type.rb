require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # EC2 ICMP Property Type
        # EC2_ICMP_Property_Type
        ##
        class ICMPPropertyType < Resource



          def initialize(*args)
            super
            type 'ICMPPropertyType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-icmp.html 
      # @see {Model::Template::Resource::ICMPPropertyType}
      def icmp_property_type(name, &block)
        r = Model::Template::Resource::ICMPPropertyType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

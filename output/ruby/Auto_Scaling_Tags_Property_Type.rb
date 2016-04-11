require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Auto Scaling Tags Property Type
        # Auto_Scaling_Tags_Property_Type
        ##
        class ScalingTagsPropertyType < Resource


          # @!scope class
          # @attribute [w]
          # Key
          # The key name of the tag. -- WIP 
          # @note Required: Yes
          # @see  
          property :key, 'Key'

          # @!scope class
          # @attribute [w]
          # Value
          # The value for the tag. -- WIP 
          # @note Required: Yes
          # @see  
          property :value, 'Value'

          # @!scope class
          # @attribute [w]
          # PropagateAtLaunch
          # Set to true if you want AWS CloudFormation to copy the tag to EC2 instances that are launched as                   part of the auto scaling group. Set to false if you want the tag attached only to the                   auto scaling group and not copied to any instances launched as part of the auto scaling                   group. -- WIP 
          # @note Required: Yes
          # @see  
          property :propagate_at_launch, 'PropagateAtLaunch'


          def initialize(*args)
            super
            type 'ScalingTagsPropertyType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::ScalingTagsPropertyType#key key}
      # {Model::Template::Resource::ScalingTagsPropertyType#value value}
      # {Model::Template::Resource::ScalingTagsPropertyType#propagate_at_launch propagate_at_launch}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-tags.html 
      # @see {Model::Template::Resource::ScalingTagsPropertyType}
      def scaling_tags_property_type(name, &block)
        r = Model::Template::Resource::ScalingTagsPropertyType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

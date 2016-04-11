require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Elastic Beanstalk Environment Tier Property
      Type
        # Elastic_Beanstalk_Environment_Tier_Property_Type
        ##
        class BeanstalkEnvironmentTierPropertyType < Resource


          # @!scope class
          # @attribute [w]
          # Name
          # The name of the environment tier. You can specify WebServer or                      Worker. -- WIP 
          # @note Required: No
          # @see  
          property :name, 'Name'

          # @!scope class
          # @attribute [w]
          # Type
          # The type of this environment tier. You can specify Standard for                   the WebServer tier or SQS/HTTP for the                      Worker tier. -- WIP 
          # @note Required: No
          # @see  
          property :type, 'Type'

          # @!scope class
          # @attribute [w]
          # Version
          # The version of this environment tier. -- WIP 
          # @note Required: No
          # @see  
          property :version, 'Version'


          def initialize(*args)
            super
            type 'BeanstalkEnvironmentTierPropertyType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::BeanstalkEnvironmentTierPropertyType#name name}
      # {Model::Template::Resource::BeanstalkEnvironmentTierPropertyType#type type}
      # {Model::Template::Resource::BeanstalkEnvironmentTierPropertyType#version version}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment-tier.html 
      # @see {Model::Template::Resource::BeanstalkEnvironmentTierPropertyType}
      def beanstalk_environment_tier_property_type(name, &block)
        r = Model::Template::Resource::BeanstalkEnvironmentTierPropertyType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

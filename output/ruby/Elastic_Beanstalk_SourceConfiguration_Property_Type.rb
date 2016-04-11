require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Elastic Beanstalk
      SourceConfiguration Property Type
        # Elastic_Beanstalk_SourceConfiguration_Property_Type
        ##
        class BeanstalkSourceConfigurationPropertyType < Resource


          # @!scope class
          # @attribute [w]
          # ApplicationName
          # The name of the Elastic Beanstalk application that contains the configuration template that                   you want to use. -- WIP 
          # @note Required: Yes
          # @see  
          property :application_name, 'ApplicationName'

          # @!scope class
          # @attribute [w]
          # TemplateName
          # The name of the configuration template. -- WIP 
          # @note Required: Yes
          # @see  
          property :template_name, 'TemplateName'


          def initialize(*args)
            super
            type 'BeanstalkSourceConfigurationPropertyType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::BeanstalkSourceConfigurationPropertyType#application_name application_name}
      # {Model::Template::Resource::BeanstalkSourceConfigurationPropertyType#template_name template_name}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-configurationtemplate-sourceconfiguration.html 
      # @see {Model::Template::Resource::BeanstalkSourceConfigurationPropertyType}
      def beanstalk_sourceconfiguration_property_type(name, &block)
        r = Model::Template::Resource::BeanstalkSourceConfigurationPropertyType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

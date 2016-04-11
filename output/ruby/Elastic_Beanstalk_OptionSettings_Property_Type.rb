require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Elastic Beanstalk OptionSettings Property
      Type
        # Elastic_Beanstalk_OptionSettings_Property_Type
        ##
        class BeanstalkOptionSettingsPropertyType < Resource


          # @!scope class
          # @attribute [w]
          # Namespace
          # A unique namespace identifying the option's associated AWS resource. -- WIP 
          # @note Required: Yes
          # @see  
          property :namespace, 'Namespace'

          # @!scope class
          # @attribute [w]
          # OptionName
          # The name of the configuration option. For a list of options that can be used                   here, see Option                      Values in the AWS Elastic Beanstalk Developer                      Guide. -- WIP 
          # @note Required: Yes
          # @see  
          property :option_name, 'OptionName'

          # @!scope class
          # @attribute [w]
          # Value
          # The value of the setting. -- WIP 
          # @note Required: Yes
          # @see  
          property :value, 'Value'


          def initialize(*args)
            super
            type 'BeanstalkOptionSettingsPropertyType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::BeanstalkOptionSettingsPropertyType#namespace namespace}
      # {Model::Template::Resource::BeanstalkOptionSettingsPropertyType#option_name option_name}
      # {Model::Template::Resource::BeanstalkOptionSettingsPropertyType#value value}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-option-settings.html 
      # @see {Model::Template::Resource::BeanstalkOptionSettingsPropertyType}
      def beanstalk_optionsettings_property_type(name, &block)
        r = Model::Template::Resource::BeanstalkOptionSettingsPropertyType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

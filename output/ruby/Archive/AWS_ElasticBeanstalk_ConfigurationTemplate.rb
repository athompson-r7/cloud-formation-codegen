require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::ElasticBeanstalk::ConfigurationTemplate
        # AWS_ElasticBeanstalk_ConfigurationTemplate
        ##
        class ElasticBeanstalkConfigurationTemplate < Resource


          # @!scope class
          # @attribute [w]
          # ApplicationName
          # Name of the Elastic Beanstalk application that is associated with this configuration                   template. -- WIP 
          # @note Required: Yes
          # @see  
          property :application_name, 'ApplicationName'

          # @!scope class
          # @attribute [w]
          # Description
          # An optional description for this configuration. -- WIP 
          # @note Required: No
          # @see  
          property :description, 'Description'

          # @!scope class
          # @attribute [w]
          # EnvironmentId
          # An environment whose settings you want to use to create the configuration                   template. You must specify this property if you don't specify the                      SolutionStackName or SourceConfiguration                   properties. -- WIP 
          # @note Required: Conditional
          # @see  
          property :environment_id, 'EnvironmentId'

          # @!scope class
          # @attribute [w]
          # SolutionStackName
          # The name of an Elastic Beanstalk solution stack that this configuration will use. A                   solution stack specifies the operating system, architecture, and application                   server for a configuration template, such as 64bit Amazon Linux 2013.09                      running Tomcat 7 Java 7. For more information, see Supported Platforms in the                      AWS Elastic Beanstalk Developer Guide. -- WIP 
          # @note Required: Conditional
          # @see  
          property :solution_stack_name, 'SolutionStackName'

          # @!scope class
          # @attribute [w]
          # SourceConfiguration
          # A configuration template that is associated with another Elastic Beanstalk application. If                   you specify the SolutionStackName property and the                      SourceConfiguration property, the solution stack in the source                   configuration template must match the value that you specified for the                      SolutionStackName property. -- WIP 
          # @note Required: Conditional
          # @see  
          property :source_configuration, 'SourceConfiguration'

          # @!scope class
          # @attribute [w]
          # OptionSettings
          # A list of                       OptionSettings for this Elastic Beanstalk configuration. For a complete                   list of Elastic Beanstalk configuration options, see  Option                      Values, in the AWS Elastic Beanstalk Developer                      Guide. -- WIP
          # @note Required: No
          # @see 
          property :option_settings, 'OptionSettings', :array


          def initialize(*args)
            super
            type 'ElasticBeanstalkConfigurationTemplate'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::ElasticBeanstalkConfigurationTemplate#application_name application_name}
      # {Model::Template::Resource::ElasticBeanstalkConfigurationTemplate#description description}
      # {Model::Template::Resource::ElasticBeanstalkConfigurationTemplate#environment_id environment_id}
      # {Model::Template::Resource::ElasticBeanstalkConfigurationTemplate#solution_stack_name solution_stack_name}
      # {Model::Template::Resource::ElasticBeanstalkConfigurationTemplate#source_configuration source_configuration}
      # {Model::Template::Resource::ElasticBeanstalkConfigurationTemplate#option_settings option_settings}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-beanstalk-configurationtemplate.html 
      # @see {Model::Template::Resource::ElasticBeanstalkConfigurationTemplate}
      def elasticbeanstalk_configurationtemplate(name, &block)
        r = Model::Template::Resource::ElasticBeanstalkConfigurationTemplate.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

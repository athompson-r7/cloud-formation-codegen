require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::ElasticBeanstalk::Environment
        # AWS_ElasticBeanstalk_Environment
        ##
        class ElasticBeanstalkEnvironment < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # ApplicationName
          # The name of the application that is associated with this environment. -- WIP 
          # @note Required: Yes
          # @see  
          property :application_name, 'ApplicationName'

          # @!scope class
          # @attribute [w]
          # CNAMEPrefix
          # A prefix for your Elastic Beanstalk environment URL. -- WIP 
          # @note Required: No
          # @see  
          property :cname_prefix, 'CNAMEPrefix'

          # @!scope class
          # @attribute [w]
          # Description
          # A description that helps you identify this environment. -- WIP 
          # @note Required: No
          # @see  
          property :description, 'Description'

          # @!scope class
          # @attribute [w]
          # EnvironmentName
          # A name for the Elastic Beanstalk environment. If you don't specify a name, AWS CloudFormation generates                   a unique physical ID and uses that ID for the environment name. For more                   information, see Name Type. -- WIP 
          # @note Required: No
          # @see  
          property :environment_name, 'EnvironmentName'

          # @!scope class
          # @attribute [w]
          # SolutionStackName
          # The name of an Elastic Beanstalk solution stack that this configuration will use. For more                   information, see Supported                      Platforms in the AWS Elastic Beanstalk Developer Guide. You must                   specify either this parameter or an Elastic Beanstalk configuration template name. -- WIP 
          # @note Required: No
          # @see  
          property :solution_stack_name, 'SolutionStackName'

          # @!scope class
          # @attribute [w]
          # Tags
          # An arbitrary set of tags (key-value pairs) for this environment. -- WIP 
          # @note Required: No
          # @see  
          property :tags, 'Tags'

          # @!scope class
          # @attribute [w]
          # TemplateName
          # The name of the Elastic Beanstalk configuration template to use with the environment. You                   must specify either this parameter or a solution stack name. -- WIP 
          # @note Required: No
          # @see  
          property :template_name, 'TemplateName'

          # @!scope class
          # @attribute [w]
          # Tier
          # Specifies the tier to use in creating this environment. The environment tier                   that you choose determines whether Elastic Beanstalk provisions resources to support a web                   application that handles HTTP(S) requests or a web application that handles                   background-processing tasks. -- WIP 
          # @note Required: No
          # @see  
          property :tier, 'Tier'

          # @!scope class
          # @attribute [w]
          # VersionLabel
          # The version to associate with the environment. -- WIP 
          # @note Required: No
          # @see  
          property :version_label, 'VersionLabel'

          # @!scope class
          # @attribute [w]
          # EndpointURL
          # The URL to the load balancer for this environment. -- WIP 
          # @note Required: No
          # @see  
          property :endpoint_url, 'EndpointURL'

          # @!scope class
          # @attribute [w]
          # OptionSettings
          # Key-value pairs defining configuration options for this environment. These                   options override the values that are defined in the solution stack or the                   configuration template. If you remove any options during a stack update, the                   removed options revert to default values. -- WIP
          # @note Required: No
          # @see 
          property :option_settings, 'OptionSettings', :array


          def initialize(*args)
            super
            type 'ElasticBeanstalkEnvironment'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::ElasticBeanstalkEnvironment#application_name application_name}
      # {Model::Template::Resource::ElasticBeanstalkEnvironment#cname_prefix cname_prefix}
      # {Model::Template::Resource::ElasticBeanstalkEnvironment#description description}
      # {Model::Template::Resource::ElasticBeanstalkEnvironment#environment_name environment_name}
      # {Model::Template::Resource::ElasticBeanstalkEnvironment#solution_stack_name solution_stack_name}
      # {Model::Template::Resource::ElasticBeanstalkEnvironment#tags tags}
      # {Model::Template::Resource::ElasticBeanstalkEnvironment#template_name template_name}
      # {Model::Template::Resource::ElasticBeanstalkEnvironment#tier tier}
      # {Model::Template::Resource::ElasticBeanstalkEnvironment#version_label version_label}
      # {Model::Template::Resource::ElasticBeanstalkEnvironment#endpoint_url endpoint_url}
      # {Model::Template::Resource::ElasticBeanstalkEnvironment#option_settings option_settings}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html 
      # @see {Model::Template::Resource::ElasticBeanstalkEnvironment}
      def elasticbeanstalk_environment(name, &block)
        r = Model::Template::Resource::ElasticBeanstalkEnvironment.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

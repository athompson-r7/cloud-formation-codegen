require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::ElasticBeanstalk::ApplicationVersion
        # AWS_ElasticBeanstalk_ApplicationVersion
        ##
        class ElasticBeanstalkApplicationVersion < Resource


          # @!scope class
          # @attribute [w]
          # ApplicationName
          # Name of the Elastic Beanstalk application that is associated with this application                   version. -- WIP 
          # @note Required: Yes
          # @see  
          property :application_name, 'ApplicationName'

          # @!scope class
          # @attribute [w]
          # Description
          # A description of this application version. -- WIP 
          # @note Required: No
          # @see  
          property :description, 'Description'

          # @!scope class
          # @attribute [w]
          # SourceBundle
          # The location of the source bundle for this version. -- WIP 
          # @note Required: Yes
          # @see  
          property :source_bundle, 'SourceBundle'


          def initialize(*args)
            super
            type 'ElasticBeanstalkApplicationVersion'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::ElasticBeanstalkApplicationVersion#application_name application_name}
      # {Model::Template::Resource::ElasticBeanstalkApplicationVersion#description description}
      # {Model::Template::Resource::ElasticBeanstalkApplicationVersion#source_bundle source_bundle}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-version.html 
      # @see {Model::Template::Resource::ElasticBeanstalkApplicationVersion}
      def elasticbeanstalk_applicationversion(name, &block)
        r = Model::Template::Resource::ElasticBeanstalkApplicationVersion.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

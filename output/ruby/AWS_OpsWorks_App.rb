require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::OpsWorks::App
        # AWS_OpsWorks_App
        ##
        class OpsWorksApp < Resource


          # @!scope class
          # @attribute [w]
          # AppSource
          # Contains the information required to retrieve an app from a repository. -- WIP 
          # @note Required: No
          # @see  
          property :app_source, 'AppSource'

          # @!scope class
          # @attribute [w]
          # Description
          # A description of the app. -- WIP 
          # @note Required: No
          # @see  
          property :description, 'Description'

          # @!scope class
          # @attribute [w]
          # EnableSsl
          # Whether to enable SSL for this app. -- WIP 
          # @note Required: No
          # @see  
          property :enable_ssl, 'EnableSsl'

          # @!scope class
          # @attribute [w]
          # Name
          # The AWS OpsWorks app name. -- WIP 
          # @note Required: Yes
          # @see  
          property :name, 'Name'

          # @!scope class
          # @attribute [w]
          # Shortname
          # The app short name, which is used internally by AWS OpsWorks and by Chef                   recipes. -- WIP 
          # @note Required: No
          # @see  
          property :shortname, 'Shortname'

          # @!scope class
          # @attribute [w]
          # SslConfiguration
          # The SSL configuration -- WIP 
          # @note Required: No
          # @see  
          property :ssl_configuration, 'SslConfiguration'

          # @!scope class
          # @attribute [w]
          # StackId
          # The AWS OpsWorks stack ID that this app will be associated with. -- WIP 
          # @note Required: Yes
          # @see  
          property :stack_id, 'StackId'

          # @!scope class
          # @attribute [w]
          # Type
          # The app type. Each supported type is associated with a particular layer. For                   more information, see CreateApp in the AWS OpsWorks API Reference. -- WIP 
          # @note Required: Yes
          # @see  
          property :type, 'Type'

          # @!scope class
          # @attribute [w]
          # Attributes
          # One or more user-defined key-value pairs to be added to the stack attributes                   bag. -- WIP
          # @note Required: No
          # @see 
          property :attributes, 'Attributes', :array

          # @!scope class
          # @attribute [w]
          # Domains
          # The app virtual host settings, with multiple domains separated by commas. For                   example, 'www.example.com, example.com'. -- WIP
          # @note Required: No
          # @see 
          property :domains, 'Domains', :array


          def initialize(*args)
            super
            type 'OpsWorksApp'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::OpsWorksApp#app_source app_source}
      # {Model::Template::Resource::OpsWorksApp#description description}
      # {Model::Template::Resource::OpsWorksApp#enable_ssl enable_ssl}
      # {Model::Template::Resource::OpsWorksApp#name name}
      # {Model::Template::Resource::OpsWorksApp#shortname shortname}
      # {Model::Template::Resource::OpsWorksApp#ssl_configuration ssl_configuration}
      # {Model::Template::Resource::OpsWorksApp#stack_id stack_id}
      # {Model::Template::Resource::OpsWorksApp#type type}
      # {Model::Template::Resource::OpsWorksApp#attributes attributes}
      # {Model::Template::Resource::OpsWorksApp#domains domains}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html 
      # @see {Model::Template::Resource::OpsWorksApp}
      def opsworks_app(name, &block)
        r = Model::Template::Resource::OpsWorksApp.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS OpsWorks Source Type
        # AWS_OpsWorks_Source_Type
        ##
        class OpsWorksSourceType < Resource


          # @!scope class
          # @attribute [w]
          # Password
          # This parameter depends on the repository type. For Amazon S3 bundles, set                      Password to the appropriate IAM secret access key. For HTTP                   bundles, Git repositories, and Subversion repositories, set Password                   to the appropriate password. -- WIP 
          # @note Required: No
          # @see  
          property :password, 'Password'

          # @!scope class
          # @attribute [w]
          # Revision
          # The application's version. With AWS OpsWorks, you can deploy new versions of an                   application. One of the simplest approaches is to have branches or revisions in                   your repository that represent different versions that can potentially be                   deployed. -- WIP 
          # @note Required: No
          # @see  
          property :revision, 'Revision'

          # @!scope class
          # @attribute [w]
          # SshKey
          # The repository's SSH key. -- WIP 
          # @note Required: No
          # @see  
          property :ssh_key, 'SshKey'

          # @!scope class
          # @attribute [w]
          # Type
          # The repository type. -- WIP 
          # @note Required: No
          # @see  
          property :type, 'Type'

          # @!scope class
          # @attribute [w]
          # Url
          # The source URL. -- WIP 
          # @note Required: No
          # @see  
          property :url, 'Url'

          # @!scope class
          # @attribute [w]
          # Username
          # This parameter depends on the repository type. For Amazon S3 bundles, set                      Username to the appropriate IAM access key ID. For HTTP bundles,                   Git repositories, and Subversion repositories, set Username to the                   appropriate user name. -- WIP 
          # @note Required: No
          # @see  
          property :username, 'Username'


          def initialize(*args)
            super
            type 'OpsWorksSourceType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::OpsWorksSourceType#password password}
      # {Model::Template::Resource::OpsWorksSourceType#revision revision}
      # {Model::Template::Resource::OpsWorksSourceType#ssh_key ssh_key}
      # {Model::Template::Resource::OpsWorksSourceType#type type}
      # {Model::Template::Resource::OpsWorksSourceType#url url}
      # {Model::Template::Resource::OpsWorksSourceType#username username}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html 
      # @see {Model::Template::Resource::OpsWorksSourceType}
      def opsworks_source_type(name, &block)
        r = Model::Template::Resource::OpsWorksSourceType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

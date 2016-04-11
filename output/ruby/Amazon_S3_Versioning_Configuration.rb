require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon S3 Versioning Configuration
        # Amazon_S3_Versioning_Configuration
        ##
        class S3VersioningConfiguration < Resource


          # @!scope class
          # @attribute [w]
          # Status
          # The versioning state of an Amazon S3 bucket. If you enable versioning, you must                   suspend versioning to disable it. -- WIP 
          # @note Required: Yes
          # @see  
          property :status, 'Status'


          def initialize(*args)
            super
            type 'S3VersioningConfiguration'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::S3VersioningConfiguration#status status}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-versioningconfig.html 
      # @see {Model::Template::Resource::S3VersioningConfiguration}
      def s3_versioning_configuration(name, &block)
        r = Model::Template::Resource::S3VersioningConfiguration.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

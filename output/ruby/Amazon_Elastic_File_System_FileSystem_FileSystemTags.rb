require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon Elastic File System FileSystem
      FileSystemTags
        # Amazon_Elastic_File_System_FileSystem_FileSystemTags
        ##
        class ElasticFileSystemFileSystemFileSystemTags < Resource


          # @!scope class
          # @attribute [w]
          # Key
          # The key name of the tag. You can specify a value that is from 1 to 128 Unicode                   characters in length, but you cannot use the prefix aws:. -- WIP 
          # @note Required: No
          # @see  
          property :key, 'Key'

          # @!scope class
          # @attribute [w]
          # Value
          # The value of the tag key. You can specify a value that is from 0 to 128 Unicode                   characters in length. -- WIP 
          # @note Required: No
          # @see  
          property :value, 'Value'


          def initialize(*args)
            super
            type 'ElasticFileSystemFileSystemFileSystemTags'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::ElasticFileSystemFileSystemFileSystemTags#key key}
      # {Model::Template::Resource::ElasticFileSystemFileSystemFileSystemTags#value value}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-filesystemtags.html 
      # @see {Model::Template::Resource::ElasticFileSystemFileSystemFileSystemTags}
      def elastic_file_system_filesystem_filesystemtags(name, &block)
        r = Model::Template::Resource::ElasticFileSystemFileSystemFileSystemTags.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

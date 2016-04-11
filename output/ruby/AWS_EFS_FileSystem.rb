require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EFS::FileSystem
        # AWS_EFS_FileSystem
        ##
        class EFSFileSystem < Resource


          # @!scope class
          # @attribute [w]
          # FileSystemTags
          # Tags to associate with the file system. -- WIP 
          # @note Required: No
          # @see  
          property :file_system_tags, 'FileSystemTags'


          def initialize(*args)
            super
            type 'EFSFileSystem'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EFSFileSystem#file_system_tags file_system_tags}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-filesystem.html 
      # @see {Model::Template::Resource::EFSFileSystem}
      def efs_filesystem(name, &block)
        r = Model::Template::Resource::EFSFileSystem.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon S3 Lifecycle Configuration
        # Amazon_S3_Lifecycle_Configuration
        ##
        class S3LifecycleConfiguration < Resource


          # @!scope class
          # @attribute [w]
          # Rules
          # A lifecycle rule for individual objects in an S3 bucket. -- WIP 
          # @note Required: Yes
          # @see  
          property :rules, 'Rules'


          def initialize(*args)
            super
            type 'S3LifecycleConfiguration'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::S3LifecycleConfiguration#rules rules}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig.html 
      # @see {Model::Template::Resource::S3LifecycleConfiguration}
      def s3_lifecycle_configuration(name, &block)
        r = Model::Template::Resource::S3LifecycleConfiguration.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

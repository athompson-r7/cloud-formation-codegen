require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Elastic Beanstalk SourceBundle Property Type
        # Elastic_Beanstalk_SourceBundle_Property_Type
        ##
        class BeanstalkSourceBundlePropertyType < Resource


          # @!scope class
          # @attribute [w]
          # S3Bucket
          # The Amazon S3 bucket where the data is located. -- WIP 
          # @note Required: Yes
          # @see  
          property :s3_bucket, 'S3Bucket'

          # @!scope class
          # @attribute [w]
          # S3Key
          # The Amazon S3 key where the data is located. -- WIP 
          # @note Required: Yes
          # @see  
          property :s3_key, 'S3Key'


          def initialize(*args)
            super
            type 'BeanstalkSourceBundlePropertyType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::BeanstalkSourceBundlePropertyType#s3_bucket s3_bucket}
      # {Model::Template::Resource::BeanstalkSourceBundlePropertyType#s3_key s3_key}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-sourcebundle.html 
      # @see {Model::Template::Resource::BeanstalkSourceBundlePropertyType}
      def beanstalk_sourcebundle_property_type(name, &block)
        r = Model::Template::Resource::BeanstalkSourceBundlePropertyType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

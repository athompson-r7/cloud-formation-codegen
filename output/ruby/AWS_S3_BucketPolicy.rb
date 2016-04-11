require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::S3::BucketPolicy
        # AWS_S3_BucketPolicy
        ##
        class S3BucketPolicy < Resource


          # @!scope class
          # @attribute [w]
          # Bucket
          # The Amazon S3 bucket that the policy applies to. -- WIP 
          # @note Required: Yes
          # @see  
          property :bucket, 'Bucket'

          # @!scope class
          # @attribute [w]
          # PolicyDocument
          # A policy document containing permissions to add to the specified bucket. -- WIP 
          # @note Required: Yes
          # @see  
          property :policy_document, 'PolicyDocument'


          def initialize(*args)
            super
            type 'S3BucketPolicy'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::S3BucketPolicy#bucket bucket}
      # {Model::Template::Resource::S3BucketPolicy#policy_document policy_document}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html 
      # @see {Model::Template::Resource::S3BucketPolicy}
      def s3_bucketpolicy(name, &block)
        r = Model::Template::Resource::S3BucketPolicy.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

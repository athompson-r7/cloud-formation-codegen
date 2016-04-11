require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS Lambda Function Code
        # AWS_Lambda_Function_Code
        ##
        class LambdaFunctionCode < Resource


          # @!scope class
          # @attribute [w]
          # S3Bucket
          # The name of the S3 bucket that contains the source code of your Lambda function. The             S3 bucket must be in the same region in which the stack is created. -- WIP 
          # @note Required: Conditional You must specify an S3 bucket location (using the               S3Bucket and S3Key properties) or the ZipFile             property.
          # @see  
          property :s3_bucket, 'S3Bucket'

          # @!scope class
          # @attribute [w]
          # S3Key
          # The location and name of your source code .zip file. If you             specify this property, you must also specify the S3Bucket property. -- WIP 
          # @note Required: Conditional You must specify an S3 bucket location (using the               S3Bucket and S3Key properties) or the ZipFile             property.
          # @see  
          property :s3_key, 'S3Key'

          # @!scope class
          # @attribute [w]
          # S3ObjectVersion
          # If you have S3 versioning enabled, the version ID of your source code               .zip file. You can specify this property only if you specify a             bucket location. -- WIP 
          # @note Required: No
          # @see  
          property :s3_object_version, 'S3ObjectVersion'

          # @!scope class
          # @attribute [w]
          # ZipFile
          # For nodejs runtime environments, the source code of your Lambda             function. You cannot use this property with other runtime environments. -- WIP 
          # @note Required: Conditional. You must specify a bucket location (the               S3Bucket and S3Key properties) or the ZipFile             property.
          # @see  
          property :zip_file, 'ZipFile'

          # @!scope class
          # @attribute [w]
          # event
          # The fields in a custom resource                 request. -- WIP 
          # @note Required: No
          # @see  
          property :event, 'event'

          # @!scope class
          # @attribute [w]
          # context
          # An object that is specific to Lambda functions. It enables you to specify when the               function and any callbacks have completed execution or to access information from               within the Lambda execution environment. For more information, see Programming Model (Node.js) in the                 AWS Lambda Developer Guide. -- WIP 
          # @note Required: No
          # @see  
          property :context, 'context'

          # @!scope class
          # @attribute [w]
          # responseStatus
          # Whether the function successfully completed. Use the cfn-response               module constants to specify the status: SUCCESS for successful executions               and FAILED for failed executions. -- WIP 
          # @note Required: No
          # @see  
          property :response_status, 'responseStatus'

          # @!scope class
          # @attribute [w]
          # responseData
          # The Data field of a custom resource response object. The data is a list of               name-value pairs. -- WIP 
          # @note Required: No
          # @see  
          property :response_data, 'responseData'

          # @!scope class
          # @attribute [w]
          # physicalResourceId
          # An optional unique identifier of the custom resource that invoked the function. By               default, the module uses the name of the CloudWatch Logs log stream name that is associated with               the Lambda function. -- WIP 
          # @note Required: No
          # @see  
          property :physical_resource_id, 'physicalResourceId'


          def initialize(*args)
            super
            type 'LambdaFunctionCode'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::LambdaFunctionCode#s3_bucket s3_bucket}
      # {Model::Template::Resource::LambdaFunctionCode#s3_key s3_key}
      # {Model::Template::Resource::LambdaFunctionCode#s3_object_version s3_object_version}
      # {Model::Template::Resource::LambdaFunctionCode#zip_file zip_file}
      # {Model::Template::Resource::LambdaFunctionCode#event event}
      # {Model::Template::Resource::LambdaFunctionCode#context context}
      # {Model::Template::Resource::LambdaFunctionCode#response_status response_status}
      # {Model::Template::Resource::LambdaFunctionCode#response_data response_data}
      # {Model::Template::Resource::LambdaFunctionCode#physical_resource_id physical_resource_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html 
      # @see {Model::Template::Resource::LambdaFunctionCode}
      def lambda_function_code(name, &block)
        r = Model::Template::Resource::LambdaFunctionCode.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

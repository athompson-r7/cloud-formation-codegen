require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::Lambda::Function
        # AWS_Lambda_Function
        ##
        class LambdaFunction < Resource


          # @!scope class
          # @attribute [w]
          # Code
          # The source code of your Lambda function. You can point to a file in an Amazon Simple Storage Service             (Amazon S3) bucket or specify your source code as inline text. -- WIP 
          # @note Required: Yes
          # @see  
          property :code, 'Code'

          # @!scope class
          # @attribute [w]
          # Description
          # A description of the function. -- WIP 
          # @note Required: No
          # @see  
          property :description, 'Description'

          # @!scope class
          # @attribute [w]
          # Handler
          # The name of the function (within your source code) that Lambda calls to start running                   your code. For more information, see the Handler property in the                      AWS Lambda Developer Guide. -- WIP 
          # @note Required: Yes
          # @see  
          property :handler, 'Handler'

          # @!scope class
          # @attribute [w]
          # MemorySize
          # The amount of memory, in MB, that is allocated to your Lambda function. Lambda                   uses this value to proportionally allocate the amount of CPU power. For more                   information, see Resource                      Model in the AWS Lambda Developer Guide. -- WIP 
          # @note Required: No
          # @see  
          property :memory_size, 'MemorySize'

          # @!scope class
          # @attribute [w]
          # Role
          # The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) execution role that                   Lambda assumes when it runs your code to access AWS services. -- WIP 
          # @note Required: Yes
          # @see  
          property :role, 'Role'

          # @!scope class
          # @attribute [w]
          # Runtime
          # The runtime environment for the Lambda function that you are uploading.  For                   valid values, see the Runtime property in the AWS Lambda Developer Guide. -- WIP 
          # @note Required: Yes
          # @see  
          property :runtime, 'Runtime'

          # @!scope class
          # @attribute [w]
          # Timeout
          # The function execution time (in seconds) after which Lambda terminates the                   function. Because the execution time affects cost, set this value based on the                   function's expected execution time. By default,  Timeout is set to                      3 seconds. -- WIP 
          # @note Required: No
          # @see  
          property :timeout, 'Timeout'

          # @!scope class
          # @attribute [w]
          # Arn
          # The ARN of the Lambda function, such as                         arn:aws:lambda:us-west-2:123456789012:MyStack-AMILookUp-NT5EUXTNTXXD. -- WIP 
          # @note Required: No
          # @see  
          property :arn, 'Arn'


          def initialize(*args)
            super
            type 'LambdaFunction'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::LambdaFunction#code code}
      # {Model::Template::Resource::LambdaFunction#description description}
      # {Model::Template::Resource::LambdaFunction#handler handler}
      # {Model::Template::Resource::LambdaFunction#memory_size memory_size}
      # {Model::Template::Resource::LambdaFunction#role role}
      # {Model::Template::Resource::LambdaFunction#runtime runtime}
      # {Model::Template::Resource::LambdaFunction#timeout timeout}
      # {Model::Template::Resource::LambdaFunction#arn arn}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html 
      # @see {Model::Template::Resource::LambdaFunction}
      def lambda_function(name, &block)
        r = Model::Template::Resource::LambdaFunction.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

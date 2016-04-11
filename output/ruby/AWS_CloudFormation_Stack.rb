require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::CloudFormation::Stack
        # AWS_CloudFormation_Stack
        ##
        class CloudFormationStack < Resource


          # @!scope class
          # @attribute [w]
          # Parameters
          # The set of parameters passed to AWS CloudFormation when this nested stack is created. -- WIP 
          # @note Required: Conditional (required if the nested stack                   requires input parameters).
          # @see  
          property :parameters, 'Parameters'

          # @!scope class
          # @attribute [w]
          # TemplateURL
          # The URL of a template that specifies the stack that you want to create as a                   resource. The template must be stored on an Amazon S3 bucket, so the URL must have the                   form:                      https://s3.amazonaws.com/.../TemplateName.template -- WIP 
          # @note Required: Yes
          # @see  
          property :template_url, 'TemplateURL'

          # @!scope class
          # @attribute [w]
          # TimeoutInMinutes
          # The length of time, in minutes, that AWS CloudFormation waits for the nested stack to reach                   the CREATE_COMPLETE state. The default is no timeout. When AWS CloudFormation detects that the                   nested stack has reached the CREATE_COMPLETE state, it marks the nested stack                   resource as CREATE_COMPLETE in the parent stack and resumes creating the parent                   stack. If the timeout period expires before the nested stack reaches                   CREATE_COMPLETE, AWS CloudFormation marks the nested stack as failed and rolls back both the                   nested stack and parent stack. -- WIP 
          # @note Required: No
          # @see  
          property :timeout_in_minutes, 'TimeoutInMinutes'

          # @!scope class
          # @attribute [w]
          # Outputs.NestedStackOutputName
          # Returns: The output value from the specified nested                      stack where NestedStackOutputName is the name of the                      output value. -- WIP 
          # @note Required: No
          # @see  
          property :outputs.nested_stack_output_name, 'Outputs.NestedStackOutputName'

          # @!scope class
          # @attribute [w]
          # NotificationARNs
          # A list of existing Amazon SNS topics where notifications about stack events are                   sent. -- WIP
          # @note Required: No
          # @see 
          property :notification_ar_ns, 'NotificationARNs', :array


          def initialize(*args)
            super
            type 'CloudFormationStack'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::CloudFormationStack#parameters parameters}
      # {Model::Template::Resource::CloudFormationStack#template_url template_url}
      # {Model::Template::Resource::CloudFormationStack#timeout_in_minutes timeout_in_minutes}
      # {Model::Template::Resource::CloudFormationStack#outputs.nested_stack_output_name outputs.nested_stack_output_name}
      # {Model::Template::Resource::CloudFormationStack#notification_ar_ns notification_ar_ns}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html 
      # @see {Model::Template::Resource::CloudFormationStack}
      def cloudformation_stack(name, &block)
        r = Model::Template::Resource::CloudFormationStack.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

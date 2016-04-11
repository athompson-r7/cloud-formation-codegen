require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::CloudFormation::WaitCondition
        # AWS_CloudFormation_WaitCondition
        ##
        class CloudFormationWaitCondition < Resource


          # @!scope class
          # @attribute [w]
          # Count
          # The number of success signals that AWS CloudFormation must receive before it continues                         the stack creation process. When the wait condition receives the requisite                         number of success signals, AWS CloudFormation resumes the creation of the stack. If the                         wait condition does not receive the specified number of success signals                         before the Timeout period expires, AWS CloudFormation assumes that the wait condition has                         failed and rolls the stack back. -- WIP 
          # @note Required: No
          # @see  
          property :count, 'Count'

          # @!scope class
          # @attribute [w]
          # Handle
          # A reference to the wait condition handle used to signal this wait                         condition. Use the Ref intrinsic function to specify an                             AWS::CloudFormation::WaitConditionHandle resource. -- WIP 
          # @note Required: Yes
          # @see  
          property :handle, 'Handle'

          # @!scope class
          # @attribute [w]
          # Timeout
          # The length of time (in seconds) to wait for the number of signals that the                             Count property specifies. Timeout is a                         minimum-bound property, meaning the timeout occurs no sooner than the time                         you specify, but can occur shortly thereafter. The maximum time that can be                         specified for this property is 12 hours (43200 seconds). -- WIP 
          # @note Required: Yes
          # @see  
          property :timeout, 'Timeout'

          # @!scope class
          # @attribute [w]
          # Data
          # Returns: A JSON object that contains the                                 UniqueId and Data                             values from the wait condition signal(s) for the specified wait                             condition. For more information about wait condition signals, see Wait Condition Signal JSON                     Format. -- WIP 
          # @note Required: No
          # @see  
          property :data, 'Data'


          def initialize(*args)
            super
            type 'CloudFormationWaitCondition'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::CloudFormationWaitCondition#count count}
      # {Model::Template::Resource::CloudFormationWaitCondition#handle handle}
      # {Model::Template::Resource::CloudFormationWaitCondition#timeout timeout}
      # {Model::Template::Resource::CloudFormationWaitCondition#data data}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html 
      # @see {Model::Template::Resource::CloudFormationWaitCondition}
      def cloudformation_waitcondition(name, &block)
        r = Model::Template::Resource::CloudFormationWaitCondition.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

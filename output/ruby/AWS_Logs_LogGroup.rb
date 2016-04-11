require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::Logs::LogGroup
        # AWS_Logs_LogGroup
        ##
        class LogsLogGroup < Resource


          # @!scope class
          # @attribute [w]
          # RetentionInDays
          # The number of days log events are kept in CloudWatch Logs. When a log event expires,                   CloudWatch Logs automatically deletes it. For valid values, see PutRetentionPolicy in                   the Amazon CloudWatch Logs API Reference. -- WIP 
          # @note Required: No
          # @see  
          property :retention_in_days, 'RetentionInDays'


          def initialize(*args)
            super
            type 'LogsLogGroup'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::LogsLogGroup#retention_in_days retention_in_days}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html 
      # @see {Model::Template::Resource::LogsLogGroup}
      def logs_loggroup(name, &block)
        r = Model::Template::Resource::LogsLogGroup.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::Kinesis::Stream
        # AWS_Kinesis_Stream
        ##
        class KinesisStream < Resource


          # @!scope class
          # @attribute [w]
          # ShardCount
          # The number of shards that the stream uses. For greater provisioned throughput,                   increase the number of shards. -- WIP 
          # @note Required: Yes
          # @see  
          property :shard_count, 'ShardCount'


          def initialize(*args)
            super
            type 'KinesisStream'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::KinesisStream#shard_count shard_count}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html 
      # @see {Model::Template::Resource::KinesisStream}
      def kinesis_stream(name, &block)
        r = Model::Template::Resource::KinesisStream.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

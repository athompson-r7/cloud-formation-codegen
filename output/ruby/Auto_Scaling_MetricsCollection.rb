require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Auto Scaling MetricsCollection
        # Auto_Scaling_MetricsCollection
        ##
        class ScalingMetricsCollection < Resource


          # @!scope class
          # @attribute [w]
          # Granularity
          # The frequency at which Auto Scaling sends aggregated data to CloudWatch. For example, you can                   specify 1Minute to send aggregated data to CloudWatch every minute. -- WIP 
          # @note Required: Yes
          # @see  
          property :granularity, 'Granularity'

          # @!scope class
          # @attribute [w]
          # Metrics
          # The list of metrics to collect. If you don't specify any metrics, all metrics                   are enabled. -- WIP
          # @note Required: No
          # @see 
          property :metrics, 'Metrics', :array


          def initialize(*args)
            super
            type 'ScalingMetricsCollection'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::ScalingMetricsCollection#granularity granularity}
      # {Model::Template::Resource::ScalingMetricsCollection#metrics metrics}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-metricscollection.html 
      # @see {Model::Template::Resource::ScalingMetricsCollection}
      def scaling_metricscollection(name, &block)
        r = Model::Template::Resource::ScalingMetricsCollection.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

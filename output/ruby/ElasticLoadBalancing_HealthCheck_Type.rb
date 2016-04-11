require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # ElasticLoadBalancing HealthCheck Type
        # ElasticLoadBalancing_HealthCheck_Type
        ##
        class HealthCheckType < Resource


          # @!scope class
          # @attribute [w]
          # HealthyThreshold
          # Specifies the number of consecutive health probe successes required before moving the instance to                   the Healthy state. -- WIP 
          # @note Required: Yes
          # @see  
          property :healthy_threshold, 'HealthyThreshold'

          # @!scope class
          # @attribute [w]
          # Interval
          # Specifies the approximate interval, in seconds, between health checks of an individual                   instance. -- WIP 
          # @note Required: Yes
          # @see  
          property :interval, 'Interval'

          # @!scope class
          # @attribute [w]
          # Target
          # Specifies the instance's protocol and port to check. The protocol can be TCP,                   HTTP, HTTPS, or SSL. The range of valid ports is 1 through 65535. -- WIP 
          # @note Required: Yes
          # @see  
          property :target, 'Target'

          # @!scope class
          # @attribute [w]
          # Timeout
          # Specifies the amount of time, in seconds, during which no response means a failed health probe.                   This value must be less than the value for Interval. -- WIP 
          # @note Required: Yes
          # @see  
          property :timeout, 'Timeout'

          # @!scope class
          # @attribute [w]
          # UnhealthyThreshold
          # Specifies the number of consecutive health probe failures required before moving the instance to                   the Unhealthy state. -- WIP 
          # @note Required: Yes
          # @see  
          property :unhealthy_threshold, 'UnhealthyThreshold'


          def initialize(*args)
            super
            type 'HealthCheckType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::HealthCheckType#healthy_threshold healthy_threshold}
      # {Model::Template::Resource::HealthCheckType#interval interval}
      # {Model::Template::Resource::HealthCheckType#target target}
      # {Model::Template::Resource::HealthCheckType#timeout timeout}
      # {Model::Template::Resource::HealthCheckType#unhealthy_threshold unhealthy_threshold}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html 
      # @see {Model::Template::Resource::HealthCheckType}
      def healthcheck_type(name, &block)
        r = Model::Template::Resource::HealthCheckType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

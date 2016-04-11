require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Route 53 AliasTarget Property
        ##
        class 53AliasTargetProperty < Resource


          # DNSName
          #  -- WIP 
          # @note Required: Yes
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html 
          property :dns_name, 'DNSName'

          # EvaluateTargetHealth
          #  -- WIP 
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html 
          property :evaluate_target_health, 'EvaluateTargetHealth'

          # HostedZoneId
          #  -- WIP 
          # @note Required: Yes
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html 
          property :hosted_zone_id, 'HostedZoneId'


          def initialize(*args)
            super
            type '53AliasTargetProperty'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::DNSName#dns_name dns_name}
      # {Model::Template::Resource::EvaluateTargetHealth#evaluate_target_health evaluate_target_health}
      # {Model::Template::Resource::HostedZoneId#hosted_zone_id hosted_zone_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html 
      # @see {Model::Template::Resource::}
      def 53_aliastarget_property(name, &block)
        r = Model::Template::Resource::53AliasTargetProperty.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::Route53::RecordSetGroup
        # AWS_Route53_RecordSetGroup
        ##
        class Route53RecordSetGroup < Resource


          # @!scope class
          # @attribute [w]
          # HostedZoneId
          # The ID of the hosted zone. -- WIP 
          # @note Required: Conditional: You must specify either the                      HostedZoneName or HostedZoneId, but you cannot                   specify both.
          # @see  
          property :hosted_zone_id, 'HostedZoneId'

          # @!scope class
          # @attribute [w]
          # HostedZoneName
          # The name of the domain for the hosted zone where you want to add the record set. -- WIP 
          # @note Required: Conditional. You must specify either the                      HostedZoneName or HostedZoneId, but you cannot                   specify both.
          # @see  
          property :hosted_zone_name, 'HostedZoneName'

          # @!scope class
          # @attribute [w]
          # Comment
          # Any comments you want to include about the hosted zone. -- WIP 
          # @note Required: No
          # @see  
          property :comment, 'Comment'

          # @!scope class
          # @attribute [w]
          # RecordSets
          # List of resource record sets to add. -- WIP
          # @note Required: Yes
          # @see 
          property :record_sets, 'RecordSets', :array


          def initialize(*args)
            super
            type 'Route53RecordSetGroup'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::Route53RecordSetGroup#hosted_zone_id hosted_zone_id}
      # {Model::Template::Resource::Route53RecordSetGroup#hosted_zone_name hosted_zone_name}
      # {Model::Template::Resource::Route53RecordSetGroup#comment comment}
      # {Model::Template::Resource::Route53RecordSetGroup#record_sets record_sets}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordsetgroup.html 
      # @see {Model::Template::Resource::Route53RecordSetGroup}
      def route53_recordsetgroup(name, &block)
        r = Model::Template::Resource::Route53RecordSetGroup.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

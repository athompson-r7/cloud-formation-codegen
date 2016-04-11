require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::ElasticLoadBalancing::LoadBalancer
        ##
        class ElasticLoadBalancingLoadBalancer < Resource

          include Model::Mixin::Taggable

          # AccessLoggingPolicy
          #  -- WIP 
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          property :access_logging_policy, 'AccessLoggingPolicy'

          # ConnectionDrainingPolicy
          #  -- WIP 
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          property :connection_draining_policy, 'ConnectionDrainingPolicy'

          # ConnectionSettings
          #  -- WIP 
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          property :connection_settings, 'ConnectionSettings'

          # CrossZone
          #  -- WIP 
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          property :cross_zone, 'CrossZone'

          # HealthCheck
          #  -- WIP 
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          property :health_check, 'HealthCheck'

          # LoadBalancerName
          #  -- WIP 
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          property :load_balancer_name, 'LoadBalancerName'

          # Scheme
          #  -- WIP 
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          property :scheme, 'Scheme'

          # Tags
          #  -- WIP 
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          property :tags, 'Tags'

          # CanonicalHostedZoneName
          #  -- WIP 
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          property :canonical_hosted_zone_name, 'CanonicalHostedZoneName'

          # CanonicalHostedZoneNameID
          #  -- WIP 
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          property :canonical_hosted_zone_name_id, 'CanonicalHostedZoneNameID'

          # DNSName
          #  -- WIP 
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          property :dns_name, 'DNSName'

          # SourceSecurityGroup.GroupName
          #  -- WIP 
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          property :source_security_group.group_name, 'SourceSecurityGroup.GroupName'

          # SourceSecurityGroup.OwnerAlias
          #  -- WIP 
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          property :source_security_group.owner_alias, 'SourceSecurityGroup.OwnerAlias'

          # AppCookieStickinessPolicy
          #  -- WIP
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-additionalinfo
          property :app_cookie_stickiness_policy, 'AppCookieStickinessPolicy', :array

          # AvailabilityZones
          #  -- WIP
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-additionalinfo
          property :availability_zones, 'AvailabilityZones', :array

          # Instances
          #  -- WIP
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-additionalinfo
          property :instances, 'Instances', :array

          # LBCookieStickinessPolicy
          #  -- WIP
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-additionalinfo
          property :lb_cookie_stickiness_policy, 'LBCookieStickinessPolicy', :array

          # Listeners
          #  -- WIP
          # @note Required: Yes
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-additionalinfo
          property :listeners, 'Listeners', :array

          # Policies
          #  -- WIP
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-additionalinfo
          property :policies, 'Policies', :array

          # SecurityGroups
          #  -- WIP
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-additionalinfo
          property :security_groups, 'SecurityGroups', :array

          # Subnets
          #  -- WIP
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
          http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-additionalinfo
          property :subnets, 'Subnets', :array


          def initialize(*args)
            super
            type 'ElasticLoadBalancingLoadBalancer'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::AccessLoggingPolicy#access_logging_policy access_logging_policy}
      # {Model::Template::Resource::ConnectionDrainingPolicy#connection_draining_policy connection_draining_policy}
      # {Model::Template::Resource::ConnectionSettings#connection_settings connection_settings}
      # {Model::Template::Resource::CrossZone#cross_zone cross_zone}
      # {Model::Template::Resource::HealthCheck#health_check health_check}
      # {Model::Template::Resource::LoadBalancerName#load_balancer_name load_balancer_name}
      # {Model::Template::Resource::Scheme#scheme scheme}
      # {Model::Template::Resource::Tags#tags tags}
      # {Model::Template::Resource::CanonicalHostedZoneName#canonical_hosted_zone_name canonical_hosted_zone_name}
      # {Model::Template::Resource::CanonicalHostedZoneNameID#canonical_hosted_zone_name_id canonical_hosted_zone_name_id}
      # {Model::Template::Resource::DNSName#dns_name dns_name}
      # {Model::Template::Resource::SourceSecurityGroup.GroupName#source_security_group.group_name source_security_group.group_name}
      # {Model::Template::Resource::SourceSecurityGroup.OwnerAlias#source_security_group.owner_alias source_security_group.owner_alias}
      # {Model::Template::Resource::AppCookieStickinessPolicy#app_cookie_stickiness_policy app_cookie_stickiness_policy}
      # {Model::Template::Resource::AvailabilityZones#availability_zones availability_zones}
      # {Model::Template::Resource::Instances#instances instances}
      # {Model::Template::Resource::LBCookieStickinessPolicy#lb_cookie_stickiness_policy lb_cookie_stickiness_policy}
      # {Model::Template::Resource::Listeners#listeners listeners}
      # {Model::Template::Resource::Policies#policies policies}
      # {Model::Template::Resource::SecurityGroups#security_groups security_groups}
      # {Model::Template::Resource::Subnets#subnets subnets}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html 
      # @see {Model::Template::Resource::}
      def elasticloadbalancing_loadbalancer(name, &block)
        r = Model::Template::Resource::ElasticLoadBalancingLoadBalancer.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

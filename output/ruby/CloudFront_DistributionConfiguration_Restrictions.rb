require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront
      DistributionConfiguration Restrictions
        # CloudFront_DistributionConfiguration_Restrictions
        ##
        class DistributionConfigurationRestrictions < Resource


          # @!scope class
          # @attribute [w]
          # GeoRestriction
          # The countries in which viewers are able to access your content. -- WIP 
          # @note Required: Yes
          # @see  
          property :geo_restriction, 'GeoRestriction'


          def initialize(*args)
            super
            type 'DistributionConfigurationRestrictions'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::DistributionConfigurationRestrictions#geo_restriction geo_restriction}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-restrictions.html 
      # @see {Model::Template::Resource::DistributionConfigurationRestrictions}
      def distributionconfiguration_restrictions(name, &block)
        r = Model::Template::Resource::DistributionConfigurationRestrictions.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront
      DistributionConfig Restrictions GeoRestriction
        # CloudFront_DistributionConfig_Restrictions_GeoRestriction
        ##
        class DistributionConfigRestrictionsGeoRestriction < Resource


          # @!scope class
          # @attribute [w]
          # RestrictionType
          # The method to restrict distribution of your content: -- WIP 
          # @note Required: Yes
          # @see  
          property :restriction_type, 'RestrictionType'

          # @!scope class
          # @attribute [w]
          # blacklist
          # Prevents viewers in the countries that you specified from accessing                               your content. -- WIP 
          # @note Required: No
          # @see  
          property :blacklist, 'blacklist'

          # @!scope class
          # @attribute [w]
          # whitelist
          # Allows viewers in the countries that you specified to access your                               content. -- WIP 
          # @note Required: No
          # @see  
          property :whitelist, 'whitelist'

          # @!scope class
          # @attribute [w]
          # none
          # No distribution restrictions by country. -- WIP 
          # @note Required: No
          # @see  
          property :none, 'none'

          # @!scope class
          # @attribute [w]
          # Locations
          # The two-letter, uppercase country code for a country that you want to include                   in your blacklist or whitelist. -- WIP
          # @note Required: Conditional. Required if you specified blacklist or                      whitelist for the RestrictionType property.
          # @see 
          property :locations, 'Locations', :array


          def initialize(*args)
            super
            type 'DistributionConfigRestrictionsGeoRestriction'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::DistributionConfigRestrictionsGeoRestriction#restriction_type restriction_type}
      # {Model::Template::Resource::DistributionConfigRestrictionsGeoRestriction#blacklist blacklist}
      # {Model::Template::Resource::DistributionConfigRestrictionsGeoRestriction#whitelist whitelist}
      # {Model::Template::Resource::DistributionConfigRestrictionsGeoRestriction#none none}
      # {Model::Template::Resource::DistributionConfigRestrictionsGeoRestriction#locations locations}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-restrictions-georestriction.html 
      # @see {Model::Template::Resource::DistributionConfigRestrictionsGeoRestriction}
      def distributionconfig_restrictions_georestriction(name, &block)
        r = Model::Template::Resource::DistributionConfigRestrictionsGeoRestriction.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

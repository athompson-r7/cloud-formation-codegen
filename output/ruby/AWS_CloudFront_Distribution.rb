require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::CloudFront::Distribution
        # AWS_CloudFront_Distribution
        ##
        class CloudFrontDistribution < Resource


          # @!scope class
          # @attribute [w]
          # DistributionConfig
          # The distribution's configuration information. -- WIP 
          # @note Required: Yes
          # @see  
          property :distribution_config, 'DistributionConfig'

          # @!scope class
          # @attribute [w]
          # DomainName
          # Returns: The domain name of the resource. For example:                      d2fadu0nynjpfn.cloudfront.net. -- WIP 
          # @note Required: No
          # @see  
          property :domain_name, 'DomainName'


          def initialize(*args)
            super
            type 'CloudFrontDistribution'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::CloudFrontDistribution#distribution_config distribution_config}
      # {Model::Template::Resource::CloudFrontDistribution#domain_name domain_name}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution.html 
      # @see {Model::Template::Resource::CloudFrontDistribution}
      def cloudfront_distribution(name, &block)
        r = Model::Template::Resource::CloudFrontDistribution.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

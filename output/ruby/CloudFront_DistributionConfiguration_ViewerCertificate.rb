require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront
      DistributionConfiguration ViewerCertificate
        # CloudFront_DistributionConfiguration_ViewerCertificate
        ##
        class DistributionConfigurationViewerCertificate < Resource


          # @!scope class
          # @attribute [w]
          # CloudFrontDefaultCertificate
          # Indicates whether to use the default certificate for your CloudFront domain name when                   viewers use HTTPS to request your content. -- WIP 
          # @note Required: Conditional. You must specify either this property or                      IamCertificateId.
          # @see  
          property :cloud_front_default_certificate, 'CloudFrontDefaultCertificate'

          # @!scope class
          # @attribute [w]
          # IamCertificateId
          # The IAM certificate ID to use if you're using an alternate domain                   name. -- WIP 
          # @note Required: Conditional. You must specify either this property or                      CloudFrontDefaultCertificate.
          # @see  
          property :iam_certificate_id, 'IamCertificateId'

          # @!scope class
          # @attribute [w]
          # MinimumProtocolVersion
          # The minimum version of the SSL protocol that you want CloudFront to use for HTTPS                   connections. CloudFront serves your objects only to browsers or devices that support at                   least the SSL version that you specify. -- WIP 
          # @note Required: No.
          # @see  
          property :minimum_protocol_version, 'MinimumProtocolVersion'

          # @!scope class
          # @attribute [w]
          # SslSupportMethod
          # Specifies how CloudFront serves HTTPS requests. -- WIP 
          # @note Required: Conditional. Required if you specified the                      IamCertificateId property.
          # @see  
          property :ssl_support_method, 'SslSupportMethod'


          def initialize(*args)
            super
            type 'DistributionConfigurationViewerCertificate'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::DistributionConfigurationViewerCertificate#cloud_front_default_certificate cloud_front_default_certificate}
      # {Model::Template::Resource::DistributionConfigurationViewerCertificate#iam_certificate_id iam_certificate_id}
      # {Model::Template::Resource::DistributionConfigurationViewerCertificate#minimum_protocol_version minimum_protocol_version}
      # {Model::Template::Resource::DistributionConfigurationViewerCertificate#ssl_support_method ssl_support_method}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-viewercertificate.html 
      # @see {Model::Template::Resource::DistributionConfigurationViewerCertificate}
      def distributionconfiguration_viewercertificate(name, &block)
        r = Model::Template::Resource::DistributionConfigurationViewerCertificate.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

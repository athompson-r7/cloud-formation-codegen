require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS OpsWorks SslConfiguration
      Type
        # AWS_OpsWorks_SslConfiguration_Type
        ##
        class OpsWorksSslConfigurationType < Resource


          # @!scope class
          # @attribute [w]
          # Certificate
          # The contents of the certificate's domain.crt file. -- WIP 
          # @note Required: Yes
          # @see  
          property :certificate, 'Certificate'

          # @!scope class
          # @attribute [w]
          # Chain
          # An intermediate certificate authority key or client authentication. -- WIP 
          # @note Required: No
          # @see  
          property :chain, 'Chain'

          # @!scope class
          # @attribute [w]
          # PrivateKey
          # The private key; the contents of the certificate's                      domain.kex file. -- WIP 
          # @note Required: Yes
          # @see  
          property :private_key, 'PrivateKey'


          def initialize(*args)
            super
            type 'OpsWorksSslConfigurationType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::OpsWorksSslConfigurationType#certificate certificate}
      # {Model::Template::Resource::OpsWorksSslConfigurationType#chain chain}
      # {Model::Template::Resource::OpsWorksSslConfigurationType#private_key private_key}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-sslconfiguration.html 
      # @see {Model::Template::Resource::OpsWorksSslConfigurationType}
      def opsworks_sslconfiguration_type(name, &block)
        r = Model::Template::Resource::OpsWorksSslConfigurationType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

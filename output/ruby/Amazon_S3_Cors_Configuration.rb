require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon S3 Cors Configuration
        # Amazon_S3_Cors_Configuration
        ##
        class S3CorsConfiguration < Resource


          # @!scope class
          # @attribute [w]
          # CorsRules
          # A set of origins and methods that you allow. -- WIP 
          # @note Required: Yes
          # @see  
          property :cors_rules, 'CorsRules'


          def initialize(*args)
            super
            type 'S3CorsConfiguration'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::S3CorsConfiguration#cors_rules cors_rules}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors.html 
      # @see {Model::Template::Resource::S3CorsConfiguration}
      def s3_cors_configuration(name, &block)
        r = Model::Template::Resource::S3CorsConfiguration.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon S3 Cors Configuration Rule
        # Amazon_S3_Cors_Configuration_Rule
        ##
        class S3CorsConfigurationRule < Resource


          # @!scope class
          # @attribute [w]
          # Id
          # A unique identifier for this rule. The value cannot be more than 255                   characters. -- WIP 
          # @note Required: No
          # @see  
          property :id, 'Id'

          # @!scope class
          # @attribute [w]
          # MaxAge
          # The time in seconds that your browser is to cache the preflight response for                   the specified resource. -- WIP 
          # @note Required: No
          # @see  
          property :max_age, 'MaxAge'

          # @!scope class
          # @attribute [w]
          # AllowedHeaders
          # Headers that are specified in the Access-Control-Request-Headers                   header. These headers are allowed in a preflight OPTIONS request. In response to                   any preflight OPTIONS request, Amazon S3 returns any requested headers that are                   allowed. -- WIP
          # @note Required: No
          # @see 
          property :allowed_headers, 'AllowedHeaders', :array

          # @!scope class
          # @attribute [w]
          # AllowedMethods
          # An HTTP method that you allow the origin to execute. The valid values are                      GET, PUT, HEAD, POST, and                      DELETE. -- WIP
          # @note Required: Yes
          # @see 
          property :allowed_methods, 'AllowedMethods', :array

          # @!scope class
          # @attribute [w]
          # AllowedOrigins
          # An origin that you allow to send cross-domain requests. -- WIP
          # @note Required: Yes
          # @see 
          property :allowed_origins, 'AllowedOrigins', :array

          # @!scope class
          # @attribute [w]
          # ExposedHeaders
          # One or more headers in the response that are accessible to client applications                   (for example, from a JavaScript XMLHttpRequest object). -- WIP
          # @note Required: No
          # @see 
          property :exposed_headers, 'ExposedHeaders', :array


          def initialize(*args)
            super
            type 'S3CorsConfigurationRule'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::S3CorsConfigurationRule#id id}
      # {Model::Template::Resource::S3CorsConfigurationRule#max_age max_age}
      # {Model::Template::Resource::S3CorsConfigurationRule#allowed_headers allowed_headers}
      # {Model::Template::Resource::S3CorsConfigurationRule#allowed_methods allowed_methods}
      # {Model::Template::Resource::S3CorsConfigurationRule#allowed_origins allowed_origins}
      # {Model::Template::Resource::S3CorsConfigurationRule#exposed_headers exposed_headers}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html 
      # @see {Model::Template::Resource::S3CorsConfigurationRule}
      def s3_cors_configuration_rule(name, &block)
        r = Model::Template::Resource::S3CorsConfigurationRule.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

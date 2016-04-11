require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::CloudFormation::Authentication
        # AWS_CloudFormation_Authentication
        ##
        class CloudFormationAuthentication < Resource


          # @!scope class
          # @attribute [w]
          # accessKeyId
          # Specifies the access key ID for S3 authentication. -- WIP 
          # @note Required: Conditional Can be specified only if the type                   property is set to &quot;S3&quot;.
          # @see  
          property :access_key_id, 'accessKeyId'

          # @!scope class
          # @attribute [w]
          # password
          # Specifies the password for basic authentication. -- WIP 
          # @note Required: Conditional Can be specified only if the type property is set to                      &quot;basic&quot;.
          # @see  
          property :password, 'password'

          # @!scope class
          # @attribute [w]
          # secretKey
          # Specifies the secret key for S3 authentication. -- WIP 
          # @note Required: Conditional Can be specified only if the type                   property is set to &quot;S3&quot;.
          # @see  
          property :secret_key, 'secretKey'

          # @!scope class
          # @attribute [w]
          # type
          # Specifies whether the authentication scheme uses a user name and password                   (&quot;basic&quot;) or an access key ID and secret key (&quot;S3&quot;). -- WIP 
          # @note Required: Yes
          # @see  
          property :type, 'type'

          # @!scope class
          # @attribute [w]
          # username
          # Specifies the user name for basic authentication. -- WIP 
          # @note Required: Conditional Can be specified only if the type property is set to                      &quot;basic&quot;.
          # @see  
          property :username, 'username'

          # @!scope class
          # @attribute [w]
          # roleName
          # Describes the role for role-based authentication. -- WIP 
          # @note Required: Conditional Can be specified only if the type                   property is set to &quot;S3&quot;.
          # @see  
          property :role_name, 'roleName'

          # @!scope class
          # @attribute [w]
          # buckets
          # A comma-delimited list of Amazon S3 buckets to be associated with the S3                   authentication credentials. -- WIP
          # @note Required: Conditional Can be specified only if the type                   property is set to &quot;S3&quot;.
          # @see 
          property :buckets, 'buckets', :array

          # @!scope class
          # @attribute [w]
          # uris
          # A comma-delimited list of URIs to be associated with the basic authentication                   credentials. The authorization applies to the specified URIs and any more specific                   URI. For example, if you specify http://www.example.com, the                   authorization will also apply to http://www.example.com/test. -- WIP
          # @note Required: Conditional Can be specified only if the type                   property is set to &quot;basic&quot;.
          # @see 
          property :uris, 'uris', :array


          def initialize(*args)
            super
            type 'CloudFormationAuthentication'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::CloudFormationAuthentication#access_key_id access_key_id}
      # {Model::Template::Resource::CloudFormationAuthentication#password password}
      # {Model::Template::Resource::CloudFormationAuthentication#secret_key secret_key}
      # {Model::Template::Resource::CloudFormationAuthentication#type type}
      # {Model::Template::Resource::CloudFormationAuthentication#username username}
      # {Model::Template::Resource::CloudFormationAuthentication#role_name role_name}
      # {Model::Template::Resource::CloudFormationAuthentication#buckets buckets}
      # {Model::Template::Resource::CloudFormationAuthentication#uris uris}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-authentication.html 
      # @see {Model::Template::Resource::CloudFormationAuthentication}
      def cloudformation_authentication(name, &block)
        r = Model::Template::Resource::CloudFormationAuthentication.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

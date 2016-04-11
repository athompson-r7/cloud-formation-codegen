require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::EC2::DHCPOptions
        # AWS_EC2_DHCPOptions
        ##
        class EC2DHCPOptions < Resource

          include Model::Mixin::Taggable

          # @!scope class
          # @attribute [w]
          # DomainName
          # A domain name of your choice. -- WIP 
          # @note Required: Conditional; see note.
          # @see  
          property :domain_name, 'DomainName'

          # @!scope class
          # @attribute [w]
          # Tags
          # An arbitrary set of tags (key-value pairs) for this resource. -- WIP 
          # @note Required: No
          # @see  
          property :tags, 'Tags'

          # @!scope class
          # @attribute [w]
          # DomainNameServers
          # The IP (IPv4) address of a domain name server. You can specify up to four addresses. -- WIP
          # @note Required: Conditional; see note.
          # @see 
          property :domain_name_servers, 'DomainNameServers', :array

          # @!scope class
          # @attribute [w]
          # NetbiosNameServers
          # The IP address (IPv4) of a NetBIOS name server. You can specify up to four addresses. -- WIP
          # @note Required: Conditional; see note.
          # @see 
          property :netbios_name_servers, 'NetbiosNameServers', :array

          # @!scope class
          # @attribute [w]
          # NetbiosNodeType
          # An integer value indicating the NetBIOS node type: -- WIP
          # @note Required: Required if NetBiosNameServers is specified;                   optional otherwise.
          # @see 
          property :netbios_node_type, 'NetbiosNodeType', :array

          # @!scope class
          # @attribute [w]
          # NtpServers
          # The IP address (IPv4) of a Network Time Protocol (NTP) server. You can specify up to four                   addresses. -- WIP
          # @note Required: Conditional; see note.
          # @see 
          property :ntp_servers, 'NtpServers', :array


          def initialize(*args)
            super
            type 'EC2DHCPOptions'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::EC2DHCPOptions#domain_name domain_name}
      # {Model::Template::Resource::EC2DHCPOptions#tags tags}
      # {Model::Template::Resource::EC2DHCPOptions#domain_name_servers domain_name_servers}
      # {Model::Template::Resource::EC2DHCPOptions#netbios_name_servers netbios_name_servers}
      # {Model::Template::Resource::EC2DHCPOptions#netbios_node_type netbios_node_type}
      # {Model::Template::Resource::EC2DHCPOptions#ntp_servers ntp_servers}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-dhcp-options.html 
      # @see {Model::Template::Resource::EC2DHCPOptions}
      def ec2_dhcpoptions(name, &block)
        r = Model::Template::Resource::EC2DHCPOptions.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

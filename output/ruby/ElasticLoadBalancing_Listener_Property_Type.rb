require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # ElasticLoadBalancing Listener Property Type
        ##
        class ListenerPropertyType < Resource


          # InstancePort
          #  -- WIP 
          # @note Required: Yes
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html 
          property :instance_port, 'InstancePort'

          # InstanceProtocol
          #  -- WIP 
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html 
          property :instance_protocol, 'InstanceProtocol'

          # LoadBalancerPort
          #  -- WIP 
          # @note Required: Yes
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html 
          property :load_balancer_port, 'LoadBalancerPort'

          # Protocol
          #  -- WIP 
          # @note Required: Yes
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html 
          property :protocol, 'Protocol'

          # SSLCertificateId
          #  -- WIP 
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html 
          property :ssl_certificate_id, 'SSLCertificateId'

          # PolicyNames
          #  -- WIP
          # @note Required: No
          # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html 
          http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-additionalinfo
          property :policy_names, 'PolicyNames', :array


          def initialize(*args)
            super
            type 'ListenerPropertyType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::InstancePort#instance_port instance_port}
      # {Model::Template::Resource::InstanceProtocol#instance_protocol instance_protocol}
      # {Model::Template::Resource::LoadBalancerPort#load_balancer_port load_balancer_port}
      # {Model::Template::Resource::Protocol#protocol protocol}
      # {Model::Template::Resource::SSLCertificateId#ssl_certificate_id ssl_certificate_id}
      # {Model::Template::Resource::PolicyNames#policy_names policy_names}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html 
      # @see {Model::Template::Resource::}
      def listener_property_type(name, &block)
        r = Model::Template::Resource::ListenerPropertyType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

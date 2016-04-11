require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS::OpsWorks::ElasticLoadBalancerAttachment
        # AWS_OpsWorks_ElasticLoadBalancerAttachment
        ##
        class OpsWorksElasticLoadBalancerAttachment < Resource


          # @!scope class
          # @attribute [w]
          # ElasticLoadBalancerName
          # Elastic Load Balancing load balancer name. -- WIP 
          # @note Required: Yes
          # @see  
          property :elastic_load_balancer_name, 'ElasticLoadBalancerName'

          # @!scope class
          # @attribute [w]
          # LayerId
          # The AWS OpsWorks layer ID that the Elastic Load Balancing load balancer will be attached to. -- WIP 
          # @note Required: Yes
          # @see  
          property :layer_id, 'LayerId'


          def initialize(*args)
            super
            type 'OpsWorksElasticLoadBalancerAttachment'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::OpsWorksElasticLoadBalancerAttachment#elastic_load_balancer_name elastic_load_balancer_name}
      # {Model::Template::Resource::OpsWorksElasticLoadBalancerAttachment#layer_id layer_id}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-elbattachment.html 
      # @see {Model::Template::Resource::OpsWorksElasticLoadBalancerAttachment}
      def opsworks_elasticloadbalancerattachment(name, &block)
        r = Model::Template::Resource::OpsWorksElasticLoadBalancerAttachment.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

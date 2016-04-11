require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # ElasticLoadBalancing Policy Type
        # ElasticLoadBalancing_Policy_Type
        ##
        class PolicyType < Resource


          # @!scope class
          # @attribute [w]
          # PolicyName
          # A name for this policy that is unique to the load balancer. -- WIP 
          # @note Required: Yes
          # @see  
          property :policy_name, 'PolicyName'

          # @!scope class
          # @attribute [w]
          # PolicyType
          # The name of the policy type for this policy. This must be one of the types reported by the Elastic Load Balancing                      DescribeLoadBalancerPolicyTypes action. -- WIP 
          # @note Required: Yes
          # @see  
          property :policy_type, 'PolicyType'

          # @!scope class
          # @attribute [w]
          # Attributes
          # A list of arbitrary attributes for this policy. -- WIP
          # @note Required: No
          # @see 
          property :attributes, 'Attributes', :array

          # @!scope class
          # @attribute [w]
          # InstancePorts
          # A list of instance ports for the policy. These are the ports associated with the back-end                   server. -- WIP
          # @note Required: No
          # @see 
          property :instance_ports, 'InstancePorts', :array

          # @!scope class
          # @attribute [w]
          # LoadBalancerPorts
          # A list of external load balancer ports for the policy. -- WIP
          # @note Required: Only for some policies. For more information,                   see the Elastic Load Balancing                         Developer Guide.
          # @see 
          property :load_balancer_ports, 'LoadBalancerPorts', :array


          def initialize(*args)
            super
            type 'PolicyType'
          end
        end
      end
    end
  end

  module DSL
    module Template
      # DESCRIPTION -- WIP
      # The following resources are available:
      # {Model::Template::Resource::PolicyType#policy_name policy_name}
      # {Model::Template::Resource::PolicyType#policy_type policy_type}
      # {Model::Template::Resource::PolicyType#attributes attributes}
      # {Model::Template::Resource::PolicyType#instance_ports instance_ports}
      # {Model::Template::Resource::PolicyType#load_balancer_ports load_balancer_ports}
      # @see http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html 
      # @see {Model::Template::Resource::PolicyType}
      def policy_type(name, &block)
        r = Model::Template::Resource::PolicyType.new(name, self)
        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end

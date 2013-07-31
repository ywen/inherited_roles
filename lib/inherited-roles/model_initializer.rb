module Inherited
  module Roles
    module ModelInitializer
      def self.included(mod)
        mod.send :define_method, :initialize do |params={}|
          params.each do |key, val|
            instance_variable_set("@#{key}", val)
          end
        end
      end
    end
  end
end

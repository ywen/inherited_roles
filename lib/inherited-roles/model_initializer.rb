module Inherited
  module Roles
    module ModelInitializer
      # Make the initializer more ActiveRecord like
      # so like if so desired, the ActiveRecord can be dropped in without
      # much of change
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

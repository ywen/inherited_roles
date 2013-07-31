module Inherited
  module Roles
    class Role
      private_class_method :new
      attr_reader :name
      private :name

      def initialize(name)
        @name = name
      end
    end
  end
end

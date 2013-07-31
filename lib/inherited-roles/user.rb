module Inherited
  module Roles
    class User
      attr_accessor :role

      def initialize(name)
        @name = name
      end
    end
  end
end

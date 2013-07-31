module InheritedRoles
  module Specs
    module Factories
      def user
        User.new name: "User 1"
      end

      def organization
        Organization.new name: "Organization 1"
      end
    end
  end
end

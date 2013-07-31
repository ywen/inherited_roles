module InheritedRoles
  module Specs
    module Factories
      def user
        @user ||= User.new name: "User 1"
      end

      def organization
        @organization ||= Organization.new name: "Organization 1"
      end

      def root_organization
        @root_organization ||= Organization.new name: "Root Organization", parent: nil
      end

      def middle_organization1
        @middle_organization1 ||= Organization.new name: "Middle 1", parent: root_organization
      end

      def middle_organization2
        @middle_organization2 ||= Organization.new name: "Middle 2", parent: root_organization
      end

      def leaf_organization1
        @leaf_organization1 ||= Organization.new name: "Leaf 1", parent: middle_organization1
      end

      def leaf_organization2
        @leaf_organization2 ||= Organization.new name: "Leaf 2", parent: middle_organization1
      end
    end
  end
end

module InheritedRoles
  class OrganizationRole
    include ModelInitializer
    attr_accessor :user, :organization, :role

    class << self
      # find role if there is one given the user and organization
      # If this class is of an ActiveRecord then this method would be a
      # named scope that query the DB. But here we implemented differently
      #
      def role_for(user, organization)
        return nil if user.organization_roles.nil?
        organization_role = user.organization_roles.detect do |r|
          r.organization == organization
        end
        return nil if organization_role.nil?
        organization_role.role
      end
    end
  end
end

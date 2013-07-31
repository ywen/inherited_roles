# A Service class that checks the role, user amd organization
# relationships
module InheritedRoles
  class RoleChecker
    class << self
      # Given user and organization, return the role that the user
      # has given the organizational chart
      def role_for(user, organization)
        local_organization = organization
        role = nil
        loop do
          role = OrganizationRole.role_for user, local_organization
          local_organization = local_organization.parent
          break if role || local_organization.nil?
        end
        role
      end
    end
  end
end

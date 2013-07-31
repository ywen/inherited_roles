module InheritedRoles
  class OrganizationRole
    include ModelInitializer
    attr_accessor :user, :organization, :role
  end
end

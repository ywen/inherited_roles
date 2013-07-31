module InheritedRoles
  class User
    include ModelInitializer
    include EqualByName
    attr_accessor :organization_roles

  end
end

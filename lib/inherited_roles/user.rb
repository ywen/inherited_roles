module InheritedRoles
  class User
    include ModelInitializer
    attr_accessor :role
  end
end

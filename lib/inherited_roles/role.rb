module InheritedRoles
  class Role
    include ModelInitializer
    private_class_method :new
    attr_reader :name
    private :name
  end
end

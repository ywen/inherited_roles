module InheritedRoles
  class Organization < ModelBase
    attr_accessor :children, :parent
  end
end

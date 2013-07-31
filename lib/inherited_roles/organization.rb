module InheritedRoles
  class Organization
    include ModelInitializer
    attr_reader :name
    attr_accessor :children
  end
end

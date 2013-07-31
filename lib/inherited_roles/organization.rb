module InheritedRoles
  class Organization
    include ModelInitializer
    include EqualByName

    attr_reader :name
    attr_accessor :children, :parent
  end
end

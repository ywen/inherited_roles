module InheritedRoles
  module EqualByName
    def ==(other)
      name == other.name
    end

    def hash
      name.hash
    end
  end
end

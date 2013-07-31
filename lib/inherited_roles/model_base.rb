module InheritedRoles
  class ModelBase
    include ModelInitializer
    include EqualByName

    attr_reader :name
  end
end

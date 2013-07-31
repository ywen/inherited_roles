module Inherited
  module Roles
    class User
      include ModelInitializer
      attr_accessor :role
    end
  end
end

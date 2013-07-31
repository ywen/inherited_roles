module Inherited
  module Roles
    class Organization
      include ModelInitializer
      attr_reader :name
      attr_accessor :children
    end
  end
end

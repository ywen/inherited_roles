module InheritedRoles
  class Role <ModelBase
    private_class_method :new

    class << self
      def has_role(*role_names)
        role_names.each do |role_name|
          define_singleton_method role_name do
            new(name: role_name.to_s)
          end
        end
      end
    end

    has_role :admin, :user, :denied
  end
end

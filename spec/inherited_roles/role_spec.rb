require "spec_helper"

module InheritedRoles
  describe Role do
    describe ".has_role" do
      it "defines a class method that returns a role with the given name" do
        described_class.has_role :role1
        expect(described_class.role1.name).to eq('role1')
      end
    end

    class << self
      def it_has_role_method(*method_names)
        method_names.each do |method_name|
          it "has #{method_name} method and returns the role" do
            expect(described_class.send(method_name).name).to eq(method_name.to_s)
          end
        end
      end
    end

    it_has_role_method :admin, :user, :denied
  end
end

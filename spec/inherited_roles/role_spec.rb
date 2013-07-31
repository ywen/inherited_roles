require "spec_helper"

module InheritedRoles
  describe Role do
    describe ".has_role" do
      it "defines a class method that returns a role with the given name" do
        described_class.has_role :role1
        expect(described_class.role1.name).to eq('role1')
      end
    end
  end
end

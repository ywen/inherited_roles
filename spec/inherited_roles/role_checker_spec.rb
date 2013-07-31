require "spec_helper"

module InheritedRoles
  describe RoleChecker do
    describe ".role_for" do
      let(:organization_role) {
        OrganizationRole.new user: user, organization: middle_organization1, role: Role.admin
      }

      before(:each) do
        user.organization_roles = [organization_role]
      end

      context "when user has a role applied to the Organization" do
        it "returns the role" do
          expect(described_class.role_for(user, middle_organization1)).to eq(Role.admin)
        end
      end

      context "when user has a role applied to the Organization's parent" do
        it "returns the role" do
          expect(described_class.role_for(user, leaf_organization1)).to eq(Role.admin)
        end
      end

      context "when user has no role applied to the Organization and Organization's parents" do
        it "returns the nil" do
          expect(described_class.role_for(user, middle_organization2)).to be_nil
        end
      end
    end
  end
end

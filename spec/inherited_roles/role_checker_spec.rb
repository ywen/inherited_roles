require "spec_helper"

module InheritedRoles
  describe RoleChecker do
    describe ".role_for" do
      let(:organization_role) {
        OrganizationRole.new user: user, organization: middle_organization1, role: Role.admin
      }

      context "when user has a role applied to the Organization" do

        before(:each) do
          user.organization_roles = [organization_role]
        end

        it "returns the role" do
          expect(described_class.role_for(user, middle_organization1)).to eq(Role.admin)
        end
      end
    end
  end
end

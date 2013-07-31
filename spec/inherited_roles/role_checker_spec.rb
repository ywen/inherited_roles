require "spec_helper"

module InheritedRoles
  describe RoleChecker do
    describe ".role_for" do
      context "when user has a role applied to the Organization" do
        let!(:organization_role) {
          OrganizationRole.new user: user, organization: organization, role: Role.admin
        }

        it "returns the role" do
          # expect(described_class.role_for(user, organization)).to eq(Role.admin)
        end
      end
    end
  end
end

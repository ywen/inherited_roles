require "spec_helper"

module InheritedRoles
  describe OrganizationRole do
    describe ".role_for" do
      let(:organization_role) {
        OrganizationRole.new role: Role.admin, user: user, organization: organization
      }

      context "when the user has the role for the given organization" do
        before(:each) do
          user.organization_roles = [organization_role]
        end

        it "returns it" do
          expect(described_class.role_for(user, organization)).to eq(Role.admin)
        end
      end
    end
  end
end

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

      context "when the user doesn't have the role for the given organization" do
        before(:each) do
          user.organization_roles = []
        end

        it "returns nil" do
          expect(described_class.role_for(user, organization)).to be_nil
        end
      end

      context "when the user doesn't have any organization_roles" do
        before(:each) do
          user.organization_roles = nil
        end

        it "returns nil" do
          expect(described_class.role_for(user, organization)).to be_nil
        end
      end
    end
  end
end

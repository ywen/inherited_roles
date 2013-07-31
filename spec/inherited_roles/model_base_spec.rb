require "spec_helper"

module InheritedRoles
  describe ModelBase do
    let(:klass) { Class.new(ModelBase) }

    describe "ModelInitializer" do
      it "includes ModelInitializer" do
        expect(klass.ancestors).to include(ModelInitializer)
      end
    end

    describe "EqualByName" do
      it "includes EqualByName" do
        expect(klass.ancestors).to include(EqualByName)
      end
    end
  end
end

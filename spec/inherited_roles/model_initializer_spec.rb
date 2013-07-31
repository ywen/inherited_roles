require "spec_helper"

module InheritedRoles
  describe ModelInitializer do
    subject { klass.new attr1: "attr1" }

    let(:klass) {
      Class.new do
        include ModelInitializer
        attr_reader :attr1
      end
    }

    describe ".new" do
      it "accepts a hash and set the variable" do
        expect(subject.attr1).to eq("attr1")
      end

      it "allows passing in no params" do
        expect { klass.new }.not_to raise_error
      end
    end
  end
end

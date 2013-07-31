require "spec_helper"

module InheritedRoles
  describe EqualByName do
    let(:klass) {
      Class.new do
        include EqualByName
        attr_accessor :name

        def initialize(name)
          @name = name
        end
      end
    }

    let(:obj1) { klass.new("name") }
    let(:obj2) { klass.new("name") }

    describe "#==" do
      context "when the names of two objects are the same" do
        it "equals to each other" do
          expect(obj1).to eq(obj2)
        end
      end

      context "when the names of two objects are different" do
        it "doesn't equals to each other" do
          obj1.name = "new name"
          expect(obj1).not_to eq(obj2)
        end
      end
    end

    describe "#hash" do
      it "returns its name's hash value" do
        expect(obj1.hash).to eq(obj1.name.hash)
      end
    end
  end
end

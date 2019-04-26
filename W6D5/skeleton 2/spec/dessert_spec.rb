require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Alan") }
  subject(:cookie) { Dessert.new("cookie", 5, "alan") }

  describe "#initialize" do
    it "sets a type" do
      expect(cookie.type).to eq("cookie")
    end

    it "sets a quantity" do
      expect(cookie.quantity).to eq(5)
    end


    it "starts ingredients as an empty array" do
      expect(cookie.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("cookie", "stella", "alan") }.to raise_error
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(cookie.ingredients).to_not include("ingredient")
      cookie.add_ingredient("ingredient")
      expect(cookie.ingredients).to include("ingredient")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(cookie.ingredients).to eq(cookie.ingredients.shuffle!)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(cookie.eat(1))
      expect(cookie.quantity).to eq(4)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { cookie.eat(6) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Alan has made 5 brownies")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      allow(chef).to receive(:bake).with("cookie")
    end
  end
end

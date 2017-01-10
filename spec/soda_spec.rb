require_relative "spec_helper"
require_relative '../soda'

describe Soda do
  let (:pepsi) { Soda.new(brand: 'Pepsi', price: 0.65, age: 1) }

  it "has a brand" do
    expect(pepsi.brand).to eq("Pepsi")
  end

  it "has a price" do
    expect(pepsi.price).to eq(0.65)
  end
end

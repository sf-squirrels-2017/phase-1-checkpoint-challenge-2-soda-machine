require_relative "spec_helper"

describe SodaMachine do
  let (:pepsi) { Soda.new(brand: 'Pepsi', price: 0.65) }
  let (:mountain_dew) { Soda.new(brand: 'Mountain Dew', price: 0.75) }
  let (:coke_zero) { Soda.new(brand: 'Coke Zero', price: 1.00) }
  let (:second_pepsi) { Soda.new(brand: 'Pepsi', price: 0.65) }

  let(:soda_machine) { SodaMachine.new(sodas: [pepsi, mountain_dew, coke_zero, second_pepsi], cash: 1.00) }

  describe "#current_inventory_count", { current_inventory_count: true } do
    it "returns the number of sodas in the machine" do
      expect(soda_machine.current_inventory_count).to eq(4)
    end
  end

  describe "#find_soda", { find_soda: true } do
    context "when the soda is in the machine" do
      it "returns the first instance of the soda brand the user requested" do
        expect(soda_machine.find_soda('Mountain Dew')).to eq(mountain_dew)
      end
    end

    context "when the soda is not available" do
      it "returns nil" do
        expect(soda_machine.find_soda('Surge')).to eq(nil)
      end
    end
  end

  describe "#sell", { sell: true } do
    context "when the soda is not available to be sold" do
      it "returns nil" do
        expect(soda_machine.sell('Surge')).to eq(nil)
      end
    end

    context "when the soda is available to be sold" do
      before(:each) do
        @sold_soda = soda_machine.sell('Pepsi')
      end
      it "returns the sold soda" do
        expect(@sold_soda).to be(pepsi)
      end
      it "adds the price of the soda sold to the cash" do
        expect(soda_machine.cash).to eq(1.65)
      end
      it "removes the sold soda from the machine" do
        expect(soda_machine.sodas).not_to include(pepsi)
      end
      it "only removes one soda from the machine" do
        expect(soda_machine.sodas).to include(second_pepsi)
      end
    end
  end
 end

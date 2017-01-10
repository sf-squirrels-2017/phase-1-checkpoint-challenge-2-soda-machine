require_relative './soda'

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      end
    end
  end

  def sell(soda_brand)
    s_soda = find_soda(soda_brand)
    @sodas.delete(s_soda)
    @cash += s_soda.price
    return s_soda
  end

end

pepsi=Soda.new(brand: 'Pepsi', price: 0.6)
  mountain_dew = Soda.new(brand: 'Mountain Dew', price: 0.75)
coke_zero = Soda.new(brand: 'Coke Zero', price: 1.00)
  second_pepsi = Soda.new(brand: 'Pepsi', price: 0.65)

soda_machine = SodaMachine.new(sodas: [pepsi, mountain_dew, coke_zero, second_pepsi], cash: 1.00)
puts soda_machine.current_inventory_count
puts soda_machine.find_soda(pepsi)

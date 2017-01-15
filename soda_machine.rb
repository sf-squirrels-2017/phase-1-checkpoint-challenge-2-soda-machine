class SodaMachine
  attr_accessor :cash, :sodas

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    self.sodas.count
  end

  def find_soda(soda_brand)
    self.sodas.find { |soda| soda.brand == soda_brand }
  end

  def sell(soda_brand)
    if sold_soda = find_soda(soda_brand)
    self.cash += sold_soda.price
    self.sodas.delete(sold_soda)
  end
  end

end

class SodaMachine
  attr_reader :sodas, :cash
  attr_writer :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    self.sodas.count
  end

  def find_soda(soda_brand)
    self.sodas.find {|soda| soda.brand == soda_brand}
  end

  # def sell(soda_brand)
  #   sold_soda = find_soda(soda_brand)
  #   sold_soda ? self.cash += sold_soda.price
  #   # self.sodas.delete(sold_soda)
  #   sold_soda
  # end



  def sell(soda_brand)
    sold_soda = find_soda(soda_brand)
    if sold_soda
      self.cash += sold_soda.price
      sodas.delete(sold_soda)
    end
    sold_soda
  end

end

class SodaMachine
  attr_reader :sodas, :cash, :sold_soda

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @sold_soda = []
  end

  def current_inventory_count
    current_inventory_count = @sodas.count
  end

  def find_soda(soda_brand)
    @sodas.find{|soda| soda.brand == soda_brand}
  end

  def sell(soda_brand)
    sold_soda = @sodas.delete(find_soda(soda_brand))
    if sold_soda
      @cash += sold_soda.price
    end
    return sold_soda
  end

end

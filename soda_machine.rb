class SodaMachine
  attr_reader :sodas, :cash
  attr_accessor :sold_soda

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @sold_soda = @brand
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    i = @sodas.index(soda_brand)
    p @sodas[i]
  end

  def sell(soda_brand)
@sold_soda = (soda_brand)


  end
end

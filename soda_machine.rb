class SodaMachine
  attr_reader  :cash, :sodas, :sold_soda

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @sold_soda = nil
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    if @sodas.include? soda_brand
      soda_brand
    else
      nil
    end
  end

  def sell(soda_brand)
    find_soda(soda_brand)
  end

end

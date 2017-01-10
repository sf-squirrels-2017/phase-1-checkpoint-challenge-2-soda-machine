class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    @sodas.find{|soda| return soda if soda.brand == soda_brand}
  end

  def sell(soda_brand)
    soda = find_soda(soda_brand)
    if soda != nil
      @cash += soda.price
      @sodas.delete(soda)
    end
  end

  def find_least_expensive
    sodas = @sodas.sort_by{|soda| soda.price}
    sodas.first.brand
  end
end

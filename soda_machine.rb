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
      nil
  end

  def sell(soda_brand)
    soda = find_soda(soda_brand)
    if soda != nil
      @cash += soda.price
      @sodas.delete(soda)
      return soda
    else
      nil
    end
  end
end

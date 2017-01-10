class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def sell(soda_brand)
    soda_brand = soda_brand.downcase.split
    soda_brand = soda_brand.join("_")
      if soda_brand == #instance_name - couldn't find how to id this
        return soda_brand
      else
        nil
      end
  end

  def sell(soda_brand)

  end

end

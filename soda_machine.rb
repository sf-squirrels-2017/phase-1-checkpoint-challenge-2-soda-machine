class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    sodas.count
  end

  def find_soda(soda_brand)
    sodas.find do |soda|
      soda.brand == soda_brand
    end

  end

  def sell(soda_brand)
    if find_soda(soda_brand)
      #p " * This is the soda * " * 4
      soda_object = find_soda(soda_brand)
      @cash += soda_object.price
      sodas.delete(soda_object)
      soda_object
    else
      return nil
    end
  end

end

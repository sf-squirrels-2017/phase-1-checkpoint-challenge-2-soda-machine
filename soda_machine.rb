require_relative 'soda'

class SodaMachine < Soda
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
      if soda.brand[soda_brand]
        return soda
      end
    end
    nil
  end

  def sell(soda_brand)
    if find_soda(soda_brand)
      sold_soda = find_soda(soda_brand)
      @cash += sold_soda.price
      # @sodas.delete.sold_soda # Can't figure out why this isn't working, and why it blows everything up
    else
      return find_soda(soda_brand)
    end
    sold_soda
  end

end

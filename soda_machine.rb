class SodaMachine
  attr_reader :sodas, :cash, :inventory

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    return @sodas.size
  end

  def find_soda(soda_brand)
    # @sodas.each do |soda|
    #   if soda.brand == soda_brand
    #     return soda
    #   else
    #     return nil
    #   end
    # end

    @sodas.find {|soda| soda.brand == soda_brand}
  end
# Got caught up with the previous method and ran out of time!

  def sell(soda_brand)
    sold_soda = @sodas.delete(find_soda(soda_brand))
    if sold_soda
      @cash += sold_soda.price
    end
    sold_soda
  end
end

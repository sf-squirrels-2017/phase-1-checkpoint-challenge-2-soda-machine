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
    # in this array of instances of soda called @sodas which has a
    # brand, price, and age, as a hash
    # find the first instance that
    # a soda brand occurs.
    # what do I return? the value of soda?
    # @sodas.find {|soda| Soda.new == soda_brand}
    # @sodas.find {|soda| Soda.new(:brand) == soda_brand}
    @sodas.find { |soda| soda.brand == soda_brand }
  end

  def sell(soda_brand)
    return nil unless
        sold_soda = find_soda(soda_brand)
        @cash += sold_soda.price
        @sodas.delete(sold_soda)
  end
end

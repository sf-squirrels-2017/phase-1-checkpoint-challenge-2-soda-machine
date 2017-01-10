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
    # @sodas.select{|key, hash| hash["brand"] == soda_brand }
    # @sodas.key({"brand" => soda_brand})
    # @sodas.select {|e| e == soda_brand}
    # @sodas.detect {|e| e == soda_brand}
    @sodas.select {|y| y == soda_brand}
    # p "the value is #{soda_brand}"

  end

  def sell(soda_brand)
  end

end

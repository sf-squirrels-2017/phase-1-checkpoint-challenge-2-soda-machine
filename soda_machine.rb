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
    @sodas.find {|s| s.brand == soda_brand}
    # goes through each soda object, pulls out first soda name matching soda_brand

  end

  # Distributes a soda check
  # Decreases inventory check
  # add to change drawer check
  def sell(soda_brand)
    unique_soda = find_soda(soda_brand)
    if unique_soda != nil
      @cash = @cash + unique_soda.price
      # since on soda object is 'Surge', returns 'nil'
      @sodas.delete(unique_soda)
    end
  end

  def cash
    @cash * 1.00       #value from hash - soda_name = price hash
  end
end

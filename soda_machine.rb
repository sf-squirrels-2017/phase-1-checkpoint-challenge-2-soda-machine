class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    current_inventory_count = @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.select { |x| x[:brand] == 'soda_brand' }.map { |u| u[:brand] }
  end

  def sell(soda_brand)

  end

end

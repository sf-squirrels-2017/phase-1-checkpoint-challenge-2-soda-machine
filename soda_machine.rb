class SodaMachine
  attr_reader :sodas, :cash, :sold_soda

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @sold_soda = []
  end

  def current_inventory_count
    current_inventory_count = @sodas.count
  end


end

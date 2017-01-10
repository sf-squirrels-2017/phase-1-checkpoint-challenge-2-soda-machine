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
    @sodas.each do |soda, price|
      if soda.fetch()
    end
  end

  def sell(soda_brand)
  end

end
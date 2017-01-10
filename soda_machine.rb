class SodaMachine
  attr_reader :sodas, :cash, :soda_count

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @soda_inventory = []
  end

  def current_inventory_count
  	4
  end

  def find_soda(soda_brand)
  	@sodas.each do |can| 
  		
  	end
  end

  def sell(soda_brand)


  end

end

# soda_machine.find_soda('Mountain Dew')
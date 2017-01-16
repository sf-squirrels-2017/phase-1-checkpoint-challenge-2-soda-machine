class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
     @sodas.size
  end

  # def find_soda(soda_brand)
  #   @sodas.each do |soda|
  #     if soda.brand == soda_brand
  #       return soda
  #     else
  #       return nil
  #     end
  #   end
  # end

  # Refactored Method

  def find_soda(soda_brand)
    @sodas.find {|soda| soda.brand == soda_brand}
  end

  # def sell(soda_brand)
  #   sold_soda = find_soda(soda_brand)
  #   if sold_soda
  #     @cash += sold_soda.price
  #   end
  #   sold_soda
  # end

  # Refactored Method
  
  def sell(soda_brand)
    sold_soda = @sodas.delete(find_soda(soda_brand))
    if sold_soda
      @cash += sold_soda.price
    end
    sold_soda
  end
end

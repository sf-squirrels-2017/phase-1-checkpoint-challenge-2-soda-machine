require_relative "soda"

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length # or .size
  end

  def find_soda(soda_brand)
    @sodas.find {|soda| soda.brand == soda_brand}
  end

  def sell(soda_brand)
    return nil unless
      @sold_soda = find_soda(soda_brand)
      @sodas.delete(@sold_soda)
      @cash += @sold_soda.price
      @sold_soda
    end

    #   if @sold_soda = find_soda(soda_brand)
    #     @sodas.delete(@sold_soda)
    #     @cash += @sold_soda.price
    #     return @sold_soda
    #   else
    #     nil
    #   end
    # end
  end

# NOTES
# Remember to look at the Rspec tests for clues
# Notice @sold_soda, D U H

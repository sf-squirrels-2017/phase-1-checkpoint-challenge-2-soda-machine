require_relative "soda"

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  # return the number of sodas it contains
  def current_inventory_count
    @sodas.length
  end

  # find single soda with a given brand
  def find_soda(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      else
        nil
      end
    end
  end

  # sell a soda with a given brand
  def sell(soda_brand)
    if @sodas.include(soda_brand) then false
      nil
    elsif
      @sodas.each do |soda|
        if soda.brand == soda_brand
          @cash += soda.price
          @sodas.delete(soda)
          @cash
        else
          nil
        end
      end
    else
      nil
    end
  end

end

machine = SodaMachine.new
p machine.current_inventory_count
p machine.find_soda("Mountain Dew")
p machine.find_soda("Surge")
p machine.sell("Surge")

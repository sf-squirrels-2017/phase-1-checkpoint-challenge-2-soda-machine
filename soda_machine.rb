class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    return @sodas.length
  end

  def find_soda(soda_brand)
    soda = soda_brand.downcase.split(' ').join('_')
    sodas.find {|x| x.brand == soda}
  end

  def sell(soda_brand)
    changed_name = soda_brand.downcase.split(' ').join('_')
    length = sodas.length
    sodas.each do |i|
      if sodas.length < length
        break
      else
        sodas.delete(i.)
    end
  end

end



require 'pry'
class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  BRANDS = []
  def initialize(brand)
    @brand = brand
    BRANDS << self.brand if !(BRANDS.include?(@brand))
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
# binding.pry
end
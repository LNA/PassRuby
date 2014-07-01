class Bags
  attr_accessor :all

  def initialize
    @all = {}
  end

  def add(bag_one, bag_two)
    @all[bag_one.to_sym] = {}
    @all[bag_two.to_sym] = {}
  end
end

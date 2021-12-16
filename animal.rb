class Animal
  def legs
    4
  end
end

class Dog < Animal
  attr_accessor :color

  def initialize(hunger_level: 0, color: '')
    @hunger_level = hunger_level
    @color = color
  end

  def bark
    'Woof!'
  end

  def hungry?
    @hunger_level > 5
  end

  def feed
    @hunger_level = 0
  end
end


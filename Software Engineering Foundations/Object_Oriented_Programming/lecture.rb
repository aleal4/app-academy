class dog
  def initialize(name, age, favorite_food)
    @name = name
    @age = age
    @favorite_food = favorite_food
  end

  def name
    @name
  end

  def age
    @age
  end

  def name=(new_name)
    @name = new_name
  end

  def age=(new_age)
    @age = new_age
  end
end

my_dog = Dog.new('Fido', 2, "pizza")
p my_dog.name
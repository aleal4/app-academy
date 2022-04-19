class Dog

  # attr_reader defines our getter methods
  # attr_reader :name, :age
  
  #attr_writer defines our setter methods
  # attr_writer :name, :age
  
  #attr_accessor defines both getters and setters 
  attr_accessor :name, :age


  def initialize(name, age, favorite_food)
    @name = name
    @age = age
    @favorite_food = favorite_food
  end

  # def name=(new_name)
  #   @name = new_name
  # end

  # def age=(new_age)
  #   @age = new_age
  # end
end

my_dog = Dog.new("Fido", 2, "pizza")


p my_dog.age
my_dog.age = 3
p my_dog.age

# my_dog.name = 'Spot'
# p my_dog.name
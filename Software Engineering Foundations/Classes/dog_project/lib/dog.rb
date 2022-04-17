class Dog
  def initialize(name, breed, age, bark, favorite_foods)
    @name = name
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods
  end

  def name
    @name
  end

  def breed
    @breed
  end

  #getter
  def age
    @age 
  end

  #setter
  def age=(new_age)
    @age = new_age
  end


  def bark 
    if @age > 3
      @bark.upcase
    else @age <= 3
      @bark.downcase
    end
  end

  def favorite_foods
    @favorite_foods 
  end

  def favorite_food?(food)
    @favorite_foods.map(&:downcase).include?(food.downcase)
  end
end


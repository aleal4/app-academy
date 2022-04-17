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
  def age=(number)
    @age = number
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
    

    if @favorite_foods.downcase.include?(food.downcase)
      return true
    end

    false
  end

end


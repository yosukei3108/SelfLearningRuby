class Dog
  attr_reader :kind
  attr_accessor :meal

  def initialize(k = "Mongrel")
    @kind = k
    @meal = nil
  end

#  def kind
#    @kind
#  end

#  def kind=(k)
#    @kind = k
#  end

#  attr_accessor :feeling
  def feeling
    unless @meal
      return "Sad"
    else
      @meal = nil
      return "Good"
#    @feeling = "Sad"
    end
  end

#  def meal(m = nil)
#    if m == "dogfood"
#      @feeling = "Good"
#    end
#  end

end

dog = Dog.new("Chihuahua")
puts dog.kind # "Chihuahua"

# dog.kind = "Papillon" # error

puts dog.feeling # "Sad"

dog.meal = "dogfood"
puts dog.feeling # "Good"
puts dog.feeling # "Sad"
class 
 
  attr_accessor :age
 
  def initialize(age = 0)
    @age = age 
  end 
 
  def birthday
    self.age += 1
  end
end
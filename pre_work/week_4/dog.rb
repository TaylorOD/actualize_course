class Dog

    def initialize(name, breed, age)
        @name
        @breed
        @age
    end

    def set_name(text)
        @dogs_name = text
    end
  
    def name
      return @dogs_name
    end
  
    def set_breed(text)
      @dogs_breed = text
    end
  
    def breed
      return @dogs_breed
    end
  
    def set_age(text)
      @dogs_age = text
    end
  
    def age
      return @dogs_age
    end
  
  end
  
  song = Dog.new
  song.set_name("Fifi")
  song.set_breed("Dalmation")
  song.set_age(9)
  
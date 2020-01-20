require 'pry'

class DogCreator < ActiveType::Object
  before_save :perform

  def perform
    @dog = Dog.new(name: "Joe", age:7, color:"Black")
    if @dog.save
      create_puppies
    else
      @dog.errors.full_messages.each { |message| errors[:invoice] << message }
    end
    false
  end

  def create_puppies
    Puppy.create(age:7, color:"Black", dog_id: Dog.last)
  end
end

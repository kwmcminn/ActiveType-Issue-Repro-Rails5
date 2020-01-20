require 'test_helper'

class DogCreatorTest < ActiveSupport::TestCase

  test "when a puppy fails to save, does not create a Dog and returns an error" do
    assert_no_difference "Dog.count" do
      creator.save
    end
  end

  private

  def creator
    DogCreator.new
  end
end

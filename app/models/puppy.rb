class Puppy < ApplicationRecord
  belongs_to :dog
  validates :name, presence: true

  # string   "name"
  # integer  "age"
  # string   "color"
  # integer  "dog_id"
  # datetime "created_at", null: false
  # datetime "updated_at", null: false
  # index ["dog_id"], name: "index_puppies_on_dog_id"
end


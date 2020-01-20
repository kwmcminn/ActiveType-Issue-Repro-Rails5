class CreatePuppies < ActiveRecord::Migration[5.0]
  def change
    create_table :puppies do |t|
      t.string :name
      t.integer :age
      t.string :color
      t.belongs_to :dog, foreign_key: true

      t.timestamps
    end
  end
end

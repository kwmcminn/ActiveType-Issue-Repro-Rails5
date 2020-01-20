class CreateDogCreators < ActiveRecord::Migration[5.0]
  def change
    create_table :dog_creators do |t|

      t.timestamps
    end
  end
end

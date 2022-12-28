class CreateRating < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.integer :information_id

      t.timestamps
    end
  end
end

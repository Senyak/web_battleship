class CreateInformation < ActiveRecord::Migration[7.0]
  def change
    create_table :information do |t|
      t.integer :wins
      t.integer :losses
      t.integer :user_id
      t.integer :rating_id

      t.timestamps
    end
  end
end

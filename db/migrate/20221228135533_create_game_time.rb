class CreateGameTime < ActiveRecord::Migration[7.0]
  def change
    create_table :gametimes do |t|
      t.integer  :user_id
      t.datetime :gstart
      t.datetime :gend
      t.datetime :time

      t.timestamps
    end
  end
end

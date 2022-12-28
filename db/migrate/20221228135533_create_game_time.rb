class CreateGameTime < ActiveRecord::Migration[7.0]
  def change
    create_table :game_times do |t|
      t.datetime :time

      t.timestamps
    end
  end
end

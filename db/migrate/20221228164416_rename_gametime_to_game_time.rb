class RenameGametimeToGameTime < ActiveRecord::Migration[7.0]
  def change
    rename_table :gametimes, :game_times
  end
end

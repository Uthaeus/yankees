class RemoveKeyFromPlayers < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :players, :users
    remove_foreign_key :positions, :players
  end
end

class AddReferenceToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :players, :users, on_delete: :cascade
    add_foreign_key :positions, :players, on_delete: :cascade
  end
end

class AddImageToPlayer < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :thumb_image, :text
    add_column :players, :main_image, :text
  end
end

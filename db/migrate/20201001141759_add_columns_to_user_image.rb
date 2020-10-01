class AddColumnsToUserImage < ActiveRecord::Migration[6.0]
  def change
    add_column :user_images, :grid_size, :integer, default: 4
  end
end

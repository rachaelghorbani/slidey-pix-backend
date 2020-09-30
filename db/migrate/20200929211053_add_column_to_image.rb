class AddColumnToImage < ActiveRecord::Migration[6.0]
  def change
    add_reference :images, :user, foreign_key: true
    add_reference :images, :category, foreign_key: true
    add_column :images, :scramble_pos, :text
  end
end

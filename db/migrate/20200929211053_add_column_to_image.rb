class AddColumnToImage < ActiveRecord::Migration[6.0]
  def change
    add_reference :images, :user, foreign_key: true
    add_reference :images, :category, foreign_key: true
  end
end
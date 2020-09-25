class CreateUserImage < ActiveRecord::Migration[6.0]
  def change
    create_table :user_images do |t|
      t.integer :moves, default: 0
      t.boolean :completed, default: false
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :image, null: false, foreign_key: true
    end
  end
end

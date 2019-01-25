class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.belongs_to :book, null: false
      t.integer :rating, null: false
      t.text :comment
      t.integer :likes, null: false, default: 0
      t.integer :dislikes, null: false, default: 0

      t.timestamps null: false
    end
  end
end

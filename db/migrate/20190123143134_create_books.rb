class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name, null: false
      t.string :author, null: false
      t.string :isbn, null: false
      t.text :description, null: false
      t.date :publication_date, null: false

      t.timestamps null: false

    end
  end
end

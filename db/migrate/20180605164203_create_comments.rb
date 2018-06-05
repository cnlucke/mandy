class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :author_id
      t.integer :parent_id
      t.string :parent_type
      t.string :slug
      t.text :content

      t.timestamps
    end
    add_foreign_key :comments, :users, column: :author_id
    add_index :comments, :author_id
    add_index :comments, :parent_id
    add_index :comments, :slug
  end
end

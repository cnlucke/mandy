class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :feed, foreign_key: true
      t.integer :author_id
      t.string :slug
      t.string :title
      t.text :body

      t.timestamps
    end
    add_foreign_key :posts, :users, column: :author_id
    add_index :posts, :author_id
    add_index :posts, :slug
  end
end

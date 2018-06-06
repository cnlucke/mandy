class CreateFeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :feeds do |t|
      t.string :title
      t.string :slug
      t.text :body

      t.timestamps
    end
    add_index :feeds, :slug
  end
end

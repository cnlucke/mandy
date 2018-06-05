class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :slug
      t.text :body
      t.string :type

      t.timestamps
    end
    add_index :pages, :slug
  end
end

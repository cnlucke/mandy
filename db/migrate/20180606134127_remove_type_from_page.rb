class RemoveTypeFromPage < ActiveRecord::Migration[5.2]
  def change
    remove_column :pages, :type
  end
end

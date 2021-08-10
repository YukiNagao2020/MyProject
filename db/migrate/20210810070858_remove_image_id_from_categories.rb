class RemoveImageIdFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :image_id, :string
  end
end

class RemoveImageIdFromPostCategoryRelations < ActiveRecord::Migration[5.2]
  def change
    remove_column :post_category_relations, :image_id, :string
  end
end

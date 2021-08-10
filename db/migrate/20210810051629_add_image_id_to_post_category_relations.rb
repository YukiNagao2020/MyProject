class AddImageIdToPostCategoryRelations < ActiveRecord::Migration[5.2]
  def change
    add_column :post_category_relations, :image_id, :string
  end
end

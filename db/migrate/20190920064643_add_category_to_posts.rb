class AddCategoryToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference(:posts, :categories)
  end
end

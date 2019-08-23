class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :date
      t.string :description
      t.string :author
      t.string :commentary
      t.string :img_post

      t.timestamps
    end
  end
end

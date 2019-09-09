class RemovePostColumnImgPost < ActiveRecord::Migration[5.2]
  def change
    remove_column(:posts, :img_post)
  end
end

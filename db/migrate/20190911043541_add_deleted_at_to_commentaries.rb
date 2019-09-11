class AddDeletedAtToCommentaries < ActiveRecord::Migration[5.2]
  def change
    add_column :commentaries, :deleted_at, :datetime
    add_index :commentaries, :deleted_at
  end
end

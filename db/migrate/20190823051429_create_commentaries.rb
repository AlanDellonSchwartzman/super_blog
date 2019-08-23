class CreateCommentaries < ActiveRecord::Migration[5.2]
  def change
    create_table :commentaries do |t|
      t.string :title
      t.string :date
      t.string :description
      t.string :author

      t.timestamps
    end
  end
end

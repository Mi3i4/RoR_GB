class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|
      t.integer :user_id
      t.integer :post_id
      t.integer :like
      t.integer :dislike

      t.timestamps
    end
  end
end

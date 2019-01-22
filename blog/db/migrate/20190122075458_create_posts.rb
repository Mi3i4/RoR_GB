class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.references :user, foreign_key: true
      t.text :body
      t.boolean :disactive

      t.timestamps
    end
    add_index :posts, :title, unique: true
  end
end

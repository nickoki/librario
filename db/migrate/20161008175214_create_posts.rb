class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :link
      t.string :description
      t.datetime :link_content_date
      t.integer :user_id
      t.datetime :created_at
      t.datetime :update_at
    end
  end
end

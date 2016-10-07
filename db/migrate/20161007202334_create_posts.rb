class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :link
      t.text :description
      t.date :link_content_date
      t.references :user
      t.timestamps
    end
  end
end

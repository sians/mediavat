class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.string :author
      t.integer :published, default: 0
      t.timestamp :date_published

      t.timestamps
    end
  end
end

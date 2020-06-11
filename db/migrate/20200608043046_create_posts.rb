class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :author, null: false, foreign_key: true
      t.string :title
      t.date :publish_date
      t.text :content

      t.timestamps
    end
  end
end

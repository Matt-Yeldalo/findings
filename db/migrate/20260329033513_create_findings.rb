class CreateFindings < ActiveRecord::Migration[8.0]
  def change
    create_table :findings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.text :description
      t.text :example_code
      t.string :source_type
      t.string :source_name
      t.text :source_url
      t.string :category
      t.string :tags, array: true, default: []
      t.index :tags, using: "gin"
      t.timestamps
    end
  end
end

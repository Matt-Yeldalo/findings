class CreateFindings < ActiveRecord::Migration[8.0]
  def change
    # Findings - table to store notable observations from books, articles, or even from documentation
    # The theme is ruby/rails software dev related, but it can be extended to other topics as well
    create_table :findings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.text :description
      t.text :example_code
      t.string :source_type
      t.string :source_name
      t.text :source_url
      t.string :category
      t.string :tags
      t.timestamps
    end
  end
end

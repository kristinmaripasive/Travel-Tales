class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|
      t.string :title
      t.string :author
      t.text :body
      t.boolean :has_been
      t.references :location, index: true, foreign_key: true

      t.timestamps
    end
  end
end

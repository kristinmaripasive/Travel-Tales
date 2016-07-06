class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user
      t.references :thought
      t.text :comment_name
      t.timestamps null: false
    end
  end
end

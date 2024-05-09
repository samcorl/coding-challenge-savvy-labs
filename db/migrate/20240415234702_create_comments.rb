class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :ref_type
      t.integer :ref_id
      t.string :title
      t.text :comment

      t.timestamps
    end
    add_index :comments, [:ref_type, :ref_id]
  end
end

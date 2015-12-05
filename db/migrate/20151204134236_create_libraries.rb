class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :title
      t.text :description
      t.string :author

      t.timestamps null: false
    end
  end
end

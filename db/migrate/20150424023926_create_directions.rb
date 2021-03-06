class CreateDirections < ActiveRecord::Migration
  def change
    create_table :directions do |t|
      t.text :step
      t.references :recipe, index: true

      t.timestamps null: false
    end
    add_foreign_key :directions, :recipes
  end
end

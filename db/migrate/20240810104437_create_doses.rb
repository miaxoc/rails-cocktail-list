class CreateDoses < ActiveRecord::Migration[7.1]
  def change
    create_table :doses do |t|
      t.text :description
      t.references :cocktail, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end

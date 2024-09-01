class AddCocktaildescriptionToCocktail < ActiveRecord::Migration[7.1]
  def change
    add_column :cocktails, :cocktaildescription, :text
  end
end

class AddIsDefaultToMushrooms < ActiveRecord::Migration[7.0]
  def change
    add_column :mushrooms, :is_default, :boolean
  end
end

class SetDefaultMushroomsIsDefaultToTrue < ActiveRecord::Migration[7.0]
  def change
    # set is_default to true for all existing users
    Mushroom.update_all(is_default: true)

    # change the default value for new users to true
    change_column_default(:mushrooms, :is_default, true)
  end
end

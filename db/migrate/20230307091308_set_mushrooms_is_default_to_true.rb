class SetMushroomsIsDefaultToTrue < ActiveRecord::Migration[7.0]
  def up
    Mushroom.update_all(is_default: true)
  end

  def down
    Mushroom.update_all(is_default: false)
  end
end

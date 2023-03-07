class UpdateDefaultMushroomsToTrue < ActiveRecord::Migration[7.0]
  def up
    Mushroom.where.not(user_id: nil).update_all(is_default: true)
  end

  def down
    # This migration cannot be reversed
  end
end

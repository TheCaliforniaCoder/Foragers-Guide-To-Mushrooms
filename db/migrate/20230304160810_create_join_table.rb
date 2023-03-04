class CreateJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :mushrooms do |t|
      # t.index [:user_id, :mushroom_id]
      # t.index [:mushroom_id, :user_id]
    end
  end
end

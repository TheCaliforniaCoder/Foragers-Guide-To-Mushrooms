class CreateJoinTable < ActiveRecord::Migration[7.0]
 def change
    drop_table :users do |t|
      t.string :email, null: false
      t.timestamps null: false
    end
  end
end

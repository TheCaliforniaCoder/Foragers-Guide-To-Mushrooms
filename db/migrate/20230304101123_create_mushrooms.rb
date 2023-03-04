class CreateMushrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :mushrooms do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :body
      t.boolean :psychedelic
      t.boolean :deadly
      t.string :img

      t.timestamps
    end
  end
end

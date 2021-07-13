class CreateUserLabs < ActiveRecord::Migration[6.1]
  def change
    create_table :user_labs do |t|
      t.integer :user_id
      t.integer :lab_id

      t.timestamps
    end
    add_foreign_key :user_labs, :users
    add_foreign_key :user_labs, :labs
  end
end

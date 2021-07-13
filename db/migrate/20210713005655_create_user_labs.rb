class CreateUserLabs < ActiveRecord::Migration[6.1]
  def change
    create_table :user_labs do |t|

      t.timestamps
    end
  end
end

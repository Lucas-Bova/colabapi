class CreateBreakthroughs < ActiveRecord::Migration[6.1]
  def change
    create_table :breakthroughs do |t|

      t.timestamps
    end
  end
end

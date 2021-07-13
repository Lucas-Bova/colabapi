class AddFkToBreakthroughs < ActiveRecord::Migration[6.1]
  def change
    add_reference :breakthroughs, :lab, foreign_key: true
  end
end

class AddDetailsToBreakthroughs < ActiveRecord::Migration[6.1]
  def change
    change_table :breakthroughs do |t|
      t.string :title
      t.text :description
    end
  end
end

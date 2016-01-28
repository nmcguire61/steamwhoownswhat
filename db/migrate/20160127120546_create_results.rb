class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :steamid1
      t.string :steamid2
      t.string :steamid3

      t.timestamps null: false
    end
  end
end

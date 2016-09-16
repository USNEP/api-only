class CreateNepals < ActiveRecord::Migration
  def change
    create_table :nepals do |t|
      t.integer  :code
      t.string :district
      t.string :city
      t.timestamps null: false
    end
  end
end

class Courses001 < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :professor
      t.integer :credits
    end
  end
end

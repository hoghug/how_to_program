class FirstTime < ActiveRecord::Migration
  def change

    create_table :lessons do |t|
      t.string :name
      t.text :description
      t.integer :number

      t.timestamps
    end
  end
end

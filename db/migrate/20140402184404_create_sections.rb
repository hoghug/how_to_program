class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
    end

    add_belongs_to :lessons, :section

  end
end

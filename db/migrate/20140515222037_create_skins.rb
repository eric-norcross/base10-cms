class CreateSkins < ActiveRecord::Migration
  def change
    create_table :skins do |t|
      t.string :name
      t.string :title
      t.string :template

      t.timestamps
    end
  end
end

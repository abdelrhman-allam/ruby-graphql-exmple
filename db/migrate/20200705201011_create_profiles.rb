class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.date :dateofbirth
      t.text :email

      t.timestamps
    end
  end
end

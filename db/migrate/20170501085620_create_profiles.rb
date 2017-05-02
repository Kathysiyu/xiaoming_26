class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :nickname
      t.string :gender
      t.string :birthday
      t.string :area
      t.string :hometown
      t.string :car
      t.integer :how_long
      t.text :hobby
      t.text :good_at
      t.text :slogan
      t.timestamps
    end
  end
end

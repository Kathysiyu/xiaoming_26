 class CreateProfiles < ActiveRecord::Migration
   def change
     create_table :profiles do |t|
       t.integer :user_id, null: false
       t.attachment :pic
       t.string :name
       t.string :nickname
       t.string :gender

       t.date :birthday
       t.string :area
       t.string :hometown
       t.string :car
       t.integer :how_long
       t.text :hobby
       t.text :good_at
       t.text :slogan

       t.timestamps null: false
     end
   end
 end

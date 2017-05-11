class CreateTweets < ActiveRecord::Migration
    def change
      create_table :tweets do |t|

        t.integer :user_id, null: false
        t.date :start_date, null: false
        t.date :end_date, null: false
        t.string :place, null: false
        t.integer :people, null: false
        t.text :text, null: false
        t.timestamps null: false
      end
    end
  end

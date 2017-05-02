class CreateTweets < ActiveRecord::Migration
    def change
      create_table :tweets do |t|
        t.string      :name
        t.integer     :userT_id
        t.text        :text
        t.text        :time
        t.timestamps
      end
    end
  end

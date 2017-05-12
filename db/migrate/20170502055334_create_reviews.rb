class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :user_id
      t.integer :rate
      t.text :review
      t.timestamps
    end
  end
end

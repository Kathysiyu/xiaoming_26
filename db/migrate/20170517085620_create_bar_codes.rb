class CreateBarCodes < ActiveRecord::Migration
  def change
    create_table :bar_codes do |t|
      t.integer :user_id, null: false
      t.attachment :pic

      t.timestamps null: false
    end
  end
end

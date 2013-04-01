class CreateCamps < ActiveRecord::Migration
  def change
    create_table :camps do |t|
      t.integer :user_id
      t.integer :cource_id

      t.timestamps
    end
  end
end

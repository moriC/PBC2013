class CreateCources < ActiveRecord::Migration
  def change
    create_table :cources do |t|
      t.string :cource_name

      t.timestamps
    end
  end
end

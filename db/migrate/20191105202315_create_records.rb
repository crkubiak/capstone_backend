class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string :location
      t.string :comment
      
      t.timestamps
    end
  end
end

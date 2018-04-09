class CreateFibs < ActiveRecord::Migration[5.1]
  def change
    create_table :fibs do |t|
      t.integer :input
      t.text :result

      t.timestamps
    end
  end
end

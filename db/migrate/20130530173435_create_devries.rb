class CreateDevries < ActiveRecord::Migration
  def change
    create_table :devries do |t|
      t.string :name
      t.string :major
      t.integer :age

      t.timestamps
    end
  end
end

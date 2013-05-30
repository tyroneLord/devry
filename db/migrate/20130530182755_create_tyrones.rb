class CreateTyrones < ActiveRecord::Migration
  def change
    create_table :tyrones do |t|
      t.integer :age
      t.string :major
      t.string :job_title

      t.timestamps
    end
  end
end

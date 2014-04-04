class CreateDaykinds < ActiveRecord::Migration
  def change
    create_table :daykinds do |t|
      t.text :name
      t.integer :school_id
      t.integer :semester_id

      t.timestamps
    end
  end
end

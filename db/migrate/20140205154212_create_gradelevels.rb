class CreateGradelevels < ActiveRecord::Migration
  def change
    create_table :gradelevels do |t|
      t.text :name
      t.text :abbrev
      t.integer :number

      t.timestamps
    end
  end
end

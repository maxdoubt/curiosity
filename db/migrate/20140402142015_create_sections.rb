class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.text :name
      t.integer :course_id
      t.integer :semester_id
      t.integer :number

      t.timestamps
    end
  end
end

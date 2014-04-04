class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.text :name
      t.integer :number

      t.timestamps
    end
  end
end

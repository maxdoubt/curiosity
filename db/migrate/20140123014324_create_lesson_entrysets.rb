class CreateLessonEntrysets < ActiveRecord::Migration
  def change
    create_table :lesson_entrysets do |t|
      t.text :name
      t.integer :parent_id
      t.integer :lft
      t.integer :rgt
      t.integer :depth

      t.timestamps
    end
  end
end

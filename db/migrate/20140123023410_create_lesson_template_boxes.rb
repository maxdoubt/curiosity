class CreateLessonTemplateBoxes < ActiveRecord::Migration
  def change
    create_table :lesson_template_boxes do |t|
      t.integer :lesson_template_id
      t.integer :lesson_entryset_id
      t.integer :row
      t.integer :col
      t.integer :rowspan
      t.integer :colspan
      t.boolean :active

      t.timestamps
    end
  end
end

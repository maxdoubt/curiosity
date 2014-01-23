class CreateLessonTemplates < ActiveRecord::Migration
  def change
    create_table :lesson_templates do |t|
      t.text :name
      t.text :description
      t.integer :rows
      t.integer :cols

      t.timestamps
    end
  end
end

class CreateLessonItems < ActiveRecord::Migration
  def change
    create_table :lesson_items do |t|
      t.text :content
      t.integer :lesson_id
      t.integer :lesson_template_box_id
      t.integer :user_id
      t.integer :parent_id
      t.integer :lft
      t.integer :rgt
      t.integer :depth

      t.timestamps
    end
  end
end

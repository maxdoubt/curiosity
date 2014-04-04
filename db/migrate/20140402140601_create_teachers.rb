class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.text :firstname
      t.text :lastname
      t.integer :user_id
      t.integer :number

      t.timestamps
    end
  end
end

class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.text :name

      t.timestamps
    end
  end
end

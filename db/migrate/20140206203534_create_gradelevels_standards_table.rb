class CreateGradelevelsStandardsTable < ActiveRecord::Migration
  def change

    create_table :gradelevels_standards, :id => false do |t|
      t.references :gradelevel
      t.references :standard
    end

    add_index :gradelevels_standards, [:gradelevel_id, :standard_id]
    add_index :gradelevels_standards, :standard_id

  end
end

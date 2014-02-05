class CreateStandards < ActiveRecord::Migration
  def change
    create_table :standards do |t|
      t.text :lang
      t.text :ref_id
      t.text :ref_uri
      t.integer :number
      t.text :description
      t.text :statement_code
      t.text :initiative
      t.text :framework
      t.text :set
      t.text :grade
      t.text :domain
      t.text :domain_description
      t.text :cluster
      t.text :standard
      t.text :component
      t.text :statement
      t.text :learning_standard_document_ref_id
      t.text :learning_standard_item_ref_id
      t.text :relationship_type
      t.integer :standardkind_id
      t.integer :parent_id
      t.integer :lft
      t.integer :rgt
      t.integer :depth
      t.integer :subject_id

      t.timestamps
    end
  end
end

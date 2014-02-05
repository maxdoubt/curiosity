json.array!(@standards) do |standard|
  json.extract! standard, :id, :lang, :ref_id, :ref_uri, :number, :description, :statement_code, :statement, :learning_standard_document_ref_id, :learning_standard_item_ref_id, :relationship_type, :standardkind_id, :parent_id, :lft, :rgt, :depth, :subject_id, :iniative, :framework, :set, :grade, :domain, :domain_desciption, :cluster, :standard, :component
  json.url standard_url(standard, format: :json)
end

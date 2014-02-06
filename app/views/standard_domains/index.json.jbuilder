json.array!(@standard_domains) do |standard_domain|
  json.extract! standard_domain, :id, :subject_id, :standardkind_id, :name, :abbrev
  json.url standard_domain_url(standard_domain, format: :json)
end

class Tasks < ROM::Relation[:couchbase]
  schema do
    attribute :name, ROM::Types::String
    attribute :completed, ROM::Types::Bool
  end
end

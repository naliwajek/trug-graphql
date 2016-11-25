ApiSchema = GraphQL::Schema.define do
  # Query (like old GET)
  query QueryRoot

  # Mutations (like old POST)
  mutation Mutations

  # Prevent probably malicious calls
  max_depth 8
  max_complexity 120
end

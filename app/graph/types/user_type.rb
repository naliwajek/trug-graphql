UserType = GraphQL::ObjectType.define do
  name 'User'
  description 'User of my awesome Blog'
  
  field :id, !types.ID
  field :email, !types.String
  field :role, !types.String
  field :name, !types.String
end

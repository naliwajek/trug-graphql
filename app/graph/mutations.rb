Mutations = GraphQL::ObjectType.define do
  name "Mutations"

  field :createArticle, field: CreateArticleMutation.field
end

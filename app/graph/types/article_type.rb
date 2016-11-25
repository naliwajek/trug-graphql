ArticleType = GraphQL::ObjectType.define do
  name 'Article'
  description 'Article on my awesome blog'
  
  field :id, !types.ID
  field :title, !types.String
  field :body, !types.String
  field :author do
     type UserType
     resolve -> (obj, args, ctx) {
       obj.user
     }
   end
end

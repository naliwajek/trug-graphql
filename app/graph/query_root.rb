QueryRoot = GraphQL::ObjectType.define do
  name 'Query'
  description 'API for my best Blog app in the world'

  # Function example: `user(id: 1)`
  field :user do
    type UserType
    argument :id, !types.String
    resolve -> (root, args, ctx) {
      User.find(args[:id])
    }
  end

  # Function example: `article(id: 1)`
  field :article do
    type ArticleType
    argument :id, !types.String
    resolve -> (root, args, ctx) {
      Article.find(args[:id])
    }
  end

  # Function example: `recent_article(number: 1)`
  field :recent_article do
    type ArticleType
    argument :number, types.String, default_value: 1
    resolve -> (root, args, ctx) {
      Article.last(args[:number]).first
    }
  end
end

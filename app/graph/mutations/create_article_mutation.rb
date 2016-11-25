CreateArticleMutation = GraphQL::Relay::Mutation.define do
  name "CreateArticle"

  # input_field :input, !CreateArticleInput
  input_field :title, !types.String
  input_field :body, !types.String
  input_field :user_id, !types.String

  resolve -> (inputs, ctx) {
    article = Article.create!(
      user_id: inputs[:user_id].to_i,
      title: inputs[:title],
      body: inputs[:body]
    )

    {
      article: article
    }
  }
end

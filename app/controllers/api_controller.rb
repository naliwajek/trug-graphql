class ApiController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    query_string = params[:query]
    query_variables = params[:variables]
    result = ApiSchema.execute(
      query_string,
      variables: query_variables,
      context: { }
    )

    render json: result
  end
end

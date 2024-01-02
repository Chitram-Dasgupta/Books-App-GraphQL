module Queries
  class Authors < Queries::BaseQuery
    type [Types::AuthorType], null: false

    def resolve
      Author.includes(:books).all
    end
  end
end

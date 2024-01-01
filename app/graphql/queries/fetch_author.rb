module Queries
  class FetchAuthor < Queries::BaseQuery
    type Types::AuthorType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      Author.find(id)
    end
  end
end

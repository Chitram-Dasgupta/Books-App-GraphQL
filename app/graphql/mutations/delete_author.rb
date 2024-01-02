module Mutations
  class DeleteAuthor < Mutations::BaseMutation
    argument :id, ID, required: true

    field :author, Types::AuthorType, null: false
    field :errors, [String], null: false

    def resolve(id:)
      author = Author.find_by(id: id)
      if author
        author.delete
        { author: author, errors: [] }
      else
        { author: nil, errors: author.errors.full_messages }
      end
    end
  end
end

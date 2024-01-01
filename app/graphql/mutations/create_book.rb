module Mutations
  class CreateBook < Mutations::BaseMutation
    # Request argument
    argument :title, String, required: true
    argument :author_id, ID, required: true

    # Response parameters
    field :book, Types::BookType, null: false
    field :errors, [String], null: false

    def resolve(title:, author_id:)
      book = Book.new(title: title, author_id: author_id)
      if book.save
        { book: book, errors: [] }
      else
        { book: nil, errors: book.errors.full_messages }
      end
    end
  end
end

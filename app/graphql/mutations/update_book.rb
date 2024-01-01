module Mutations
  class UpdateBook < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :title, String, required: true
    argument :author_id, ID, required: true

    field :book, Types::BookType, null: false
    field :errors, [String], null: false

    def resolve(id:, title:, author_id:)
      book = Book.find(id)
      if book.update(title: title, author_id: author_id)
        { book: book, errors: [] }
      else
        { book: nil, errors: book.errors.full_messages }
      end
    end
  end
end

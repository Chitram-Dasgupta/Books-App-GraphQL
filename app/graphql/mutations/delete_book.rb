module Mutations
  class DeleteBook < Mutations::BaseMutation
    argument :id, ID, required: true

    field :book, Types::BookType, null: false
    field :errors, [String], null: false

    def resolve(id:)
      book = Book.find_by(id: id)
      if book
        book.delete
        { book: book, errors: [] }
      else
        { book: nil, errors: book.errors.full_messages }
      end
    end
  end
end

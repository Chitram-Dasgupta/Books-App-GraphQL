module Mutations
  class UpdateAuthor < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :name, String, required: true
    argument :age, ID

    field :author, Types::AuthorType, null: false
    field :errors, [String], null: false

    def resolve(id:, name:, age:)
      author = Author.find(id)
      if author.update(name: name, age: age)
        { author: author, errors: [] }
      else
        { author: nil, errors: author.errors.full_messages }
      end
    end
  end
end

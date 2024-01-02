module Mutations
  class CreateAuthor < Mutations::BaseMutation
    # Request argument
    argument :name, String, required: true
    argument :age, Integer

    # Response parameters
    field :author, Types::AuthorType, null: false
    field :errors, [String], null: false

    def resolve(name:, age:)
      author = Author.new(name: name, age: age)
      if author.save
        { author: author, errors: [] }
      else
        { author: nil, errors: author.errors.full_messages }
      end
    end
  end
end

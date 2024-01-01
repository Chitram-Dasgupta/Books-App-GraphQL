# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :books, resolver: Queries::Books
    field :book, resolver: Queries::FetchBook

    field :authors, resolver: Queries::Authors
    field :author, resolver: Queries::FetchAuthor
  end
end

# GraphiQL queries and mutations

```
query showBook {
  book(id: 4) {
    title
  }
}

query allBooks {
  books {
    id
    title
  }
}

mutation createABook {
  createBook(input: {title: "A Christmas Carol", authorId: 3}) {
    book {
      id
      title
      authorId
    }
    errors
  }
}

mutation updateABook {
  updateBook(input: {id: 5, title: "A Tale of Two Cities", authorId: 2}) {
    book {
      id
      title
    }
    errors
  }
}

mutation deleteABook {
  deleteBook(input: {id: 5}) {
    book {
      id
      title
    }
  }
}

## Authors

query allAuthors {
  authors {
    name
    age
  }
}

query showAuthor {
  author(id: 2) {
    name
    age
  }
}
```
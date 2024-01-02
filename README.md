# GraphiQL queries and mutations

```
query showBook {
  book(id: 4) {
    id
    title
    author {
      name
      books {
        id
        title
      }
    }
  }
}

query allBooks {
  books {
    id
    title
    author {
      name
      books {
        id
        title
      }
    }
  }
}

mutation createABook {
  createBook(input: {title: "A Christmas Carol", authorId: 3}) {
    book {
      id
      title
      authorId
      author {
        name
      }
    }
    errors
  }
}

mutation updateABook {
  updateBook(input: {id: 5, title: "A Tale of Two Cities", authorId: 2}) {
    book {
      id
      title
      author {
        name
      }
    }
    errors
  }
}

mutation deleteABook {
  deleteBook(input: {id: 5}) {
    book {
      id
      title
      author {
        name
      }
    }
    errors
  }
}

query allAuthors {
  authors {
    id
    name
    age
    books {
      id
      title
    }
  }
}

query showAuthor {
  author(id: 3) {
    name
    age
    books {
      id
      title
    }
  }
}

mutation createAnAuthor {
  createAuthor(input: {name: "Thomas Mann", age: 54}) {
    author {
      id
      name
      age
    }
    errors
  }
}

mutation updateAnAuthor {
  updateAuthor(input: {id: 4, name: "Hermann Hesse", age: 62}) {
    author {
      id
      name
      age
    }
    errors
  }
}

mutation deleteAnAuthor {
  deleteAuthor(input: {id: 4}) {
    author {
      id
      name
      age
    }
    errors
  }
}
```
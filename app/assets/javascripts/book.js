function Book(book_info) {
  let keys = Object.keys(book_info)
  for (let i = 0; i < keys.length; i++) {
    this[keys[i]] = book_info[keys[i]]
  }
}

Book.prototype.isFiction = function() {
  return this.fiction ? "Yes" : "No"
}

Book.prototype.appendToElementAsTableRow = function(element) {
  $(element).append(`
    <tr>
      <td>
        <a href="/books/${this.id}">${this.title}</a>
      </td>
      <td>
        ${this.author}
      </td>
      <td>
        ${this.year}
      </td>
      <td>
        ${this.isFiction()}
      </td>
    </tr>
  `)
}

Book.prototype.appendToElementAsTableRows = function(element) {
  $(element).append(`
    <tr>
      <td>
        <a href="/books/${this.id}">${this.title}</a>
      </td>
    </tr>
    <tr>
      <td>
        Author: ${this.author}
      </td>
    </tr>
    <tr>
      <td>
        Year: ${this.year}
      </td>
    </tr>
    <tr>
      <td>
        Fiction: ${this.isFiction()}
      </td>
    </tr>
  `)
}

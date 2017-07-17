function Book(book_info) {
  let keys = Object.keys(book_info)
  for (let i = 0; i < keys.length; i++) {
    this[keys[i]] = book_info[keys[i]]
  }
}

Book.prototype.isFiction = function() {
  return this.fiction ? "Yes" : "No"
}

Book.prototype.appendToElement = function(element) {
                                  $(element).append("<tr><td><a href=/books/" + this.id + ">" +this.title +
                                                    " </a></td><td>" + this.author + "</td><td>" + this.year +
                                                    "</td><td>" + this.isFiction() + "</td></tr>")
}


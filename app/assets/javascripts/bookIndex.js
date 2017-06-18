$(function () {
    //console.log("Running JavaScript")
  //var books = $.ajax( { type: "GET", async: false, url: "/books/list" }).responseJSON;
  function Book(book_info) {
    let keys = Object.keys(book_info)
    for (let i = 0; i < keys.length; i++) {
      this[keys[i]] = book_info[keys[i]]
    }
  }

  Book.prototype.appendToElement = function(element) {
                                    $(element).append("<tr><td><a href=/books/" + this.id + ">" +this.title +
                                                      " </a></td><td>" + this.author + "</td><td>" + this.year +
                                                      "</td><td>" + fiction + "</td></tr>")
  }
  
  
  $.ajax( { type: "GET", url: "/books/list" }).done(function(books  ) {
  //var books = string.responseJSON
  //console.log(books)
  books.forEach(function(book) {
    var next_book = new Book(book);
    //console.log(next_book);
    next_book.fiction ? fiction = "Yes" : fiction = "No";
    next_book.appendToElement('tbody')
  })
})

})
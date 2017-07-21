$(function () {
  $.ajax( { type: "GET", url: "/books/list" }).done(function(books  ) {
    books.forEach(function(book) {
      var next_book = new Book(book);
      next_book.appendToElementAsTableRow('tbody')
    })
  })

})
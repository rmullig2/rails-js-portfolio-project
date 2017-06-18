$(function () {
    //console.log("Running bookShow.js")
  var book_id = document.getElementById('b_id').innerHTML;
  //console.log(book_id);
  var ratings = {1: "Hated It", 2: "Didn't care for it", 3: "Neutral", 4: "Liked it", 5: "Loved It" }
  
  function Review(id, rating, email, summary, body) {
    this.id = id;
    this.rating = rating;
    this.summary = summary;
    this.email = email;
    this.body = body;
    this.my_rating = function() {
      return ratings[this.rating]
    }
  }
  
  Review.prototype.appendToElement = function(element) {
    $(element).append("<tr><td>Reviewed by: " + this.email + "</td></tr><tr><td>Summary: " + this.summary +
                      "</td></tr><tr><td>Rating: " + this.rating + " stars</td></tr><tr><td>" + this.body + "</td></tr>");
  }
  
  function attachReviews() {
    var reviews = $.ajax({ type: "GET", url: "/books/" + book_id + "/reviews/" + book_id }).done(function(review) {
      reviews.responseJSON.forEach(function (review) {
        var next_review = new Review(review.id, review.rating, review.user.email, review.summary, review.body);
        next_review.appendToElement('#reviews')
      })
      document.getElementById("show_reviews").remove();
    })
  }
  
  $.ajax( { type: "GET", url: "/book/detail/" + book_id } ).done(function(book) {
    book.fiction ? fiction = "Yes" : fiction = "No";
    $('#book-info').html("<tr><td>Title: " + book.title + "</td></tr><tr><td>Author: " + book.author +
                           "</td></tr><tr><td>Released: " + book.year + "</tr></td><tr><td>Fiction: " + fiction + "</tr></td>");
  });
  
  $('#show_reviews').click(function(event) {
    //debugger
    event.preventDefault();
    attachReviews();
  })
  
  $('#write_review').click(function(event) {
    event.preventDefault();
    $('#new_form').removeAttr('hidden');
  })
  
  $( "form#new_review" ).on( "submit", function( event ) {
    event.preventDefault();
    var new_review;
    
    $.ajax( { type: "POST", url: "/books/" + book_id + "/reviews", data: $(this).serialize()}).done(function(response) {
      if ('body' in response) {
        new_review = response;
      }
      else {
        new_review = null;
      }
      if (new_review != null) {
        var my_review = new Review(new_review.id, new_review.rating, new_review.summary, new_review.body);
        $("#my_review").html("<h2>Your Review</h2><h3>" + my_review.my_rating() + "</h3><h3>" + my_review.summary +
                             "</h3><h3>" + my_review.body + "</h3>");
        $('#new_form').attr('hidden', 'true');
      }
      else {
        alert("All fields must be filled in");
      }
    })
  });
})
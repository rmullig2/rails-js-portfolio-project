function Review(id, rating, email, summary, body) {
  this.id = id;
  this.rating = rating;
  this.summary = summary;
  this.email = email;
  this.body = body;
}

Review.prototype.appendToElement = function(element) {
  $(element).append("<tr><td>Reviewed by: " + this.email + "</td></tr><tr><td>Summary: " + this.summary +
                    "</td></tr><tr><td>Rating: " + this.rating + " stars</td></tr><tr><td>" + this.body + "</td></tr>");
}

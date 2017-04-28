# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (user has many reviews, book has many reviews) 
- [x] Include at least one belongs_to relationship (book belongs to user, review belongs to user and book)
- [x] Include at least one has_many through relationship (user has many books through reviews)
- [x] The "through" part of the has_many through includes at least one user submittable attribute (reviews has summary, body, and rating)
- [x] Include reasonable validations for simple model objects (validations on books, reviews, and user information)
- [X] Include a class level ActiveRecord scope method (review object, user_review and book_review, users#show and books#show, /users/:id and books/:id
- [x] Include a nested form writing to an associated model using a custom attribute writer (users#updateinfo)
- [x] Include signup (how e.g. Devise)
- [x] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise)
- [x] Include third party signup/login (Devise/OmniAuth for Facebook and LinkedIn)
- [x] Include nested resource show or index (/books/:book_id/reviews)
- [x] Include nested resource "new" form (/books/:book_id/reviews/new)
- [x] Include form display of validation errors (book and review create/edit)

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate

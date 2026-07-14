class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  void showDetail() {
    print('Title: $title | Author: $author | Price: $price' ' baht');
  }
}

void main() {
  Book b1 = Book('Fire & Blood', 'George R. R. Martin', 395);
  Book b2 = Book('Harry Potter and the Philosopher Stone', 'J.K. Rowling', 415);

  b1.showDetail();
  b2.showDetail();
}
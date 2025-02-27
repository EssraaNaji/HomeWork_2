class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book({required this.title, required this.author, required this.isbn, this.isAvailable = true,
  });
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print("Book added: ${book.title}");
  }

  bool borrowBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn && book.isAvailable) {
        book.isAvailable = false;
        print("You have borrowed: ${book.title}");
        return true;
      }
    }
    print("Book not available or not found.");
    return false;
  }

  bool returnBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn && !book.isAvailable) {
        book.isAvailable = true;
        print("Book returned: ${book.title}");
        return true;
      }
    }
    print(" Book not found ");
    return false;
  }

  List<Book> searchByTitle(String title) {
    List<Book> foundBooks = books.where((book) => book.title.toLowerCase().contains(title.toLowerCase())).toList();
    if (foundBooks.isNotEmpty) {
      print("Book  '$title':");
      for (var book in foundBooks) {
        print("- ${book.title}.isAvailable ? ");
      }
    } else {
      print("No books found with title: $title");
    }
    return foundBooks;
  }
}

void main() {
  Library library = Library();
 Book book = Book(title: "my first book", author: "essraa naji", isbn: "797");
 library.books.add(book);
 print(library.books[0].title );
 library.borrowBook("797");
 print(book.isAvailable);
 library.returnBook("797");
 print(book.isAvailable);
}

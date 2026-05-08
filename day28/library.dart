// Arrow Function + Optional Named Parameter + where()

List<String> searchBooks(
  List<Map<String, String>> books, {
  String? category,
}) =>
    books
        .where((book) =>
            category == null || book['category'] == category)
        .map((book) => book['title']!)
        .toList();

void main() {
  List<Map<String, String>> books = [
    {"title": "Harry Potter", "category": "Fantasy"},
    {"title": "The Hobbit", "category": "Fantasy"},
    {"title": "Atomic Habits", "category": "Self Help"},
    {"title": "Rich Dad Poor Dad", "category": "Finance"},
  ];

  // Search Fantasy books
  var fantasyBooks = searchBooks(
    books,
    category: "Fantasy",
  );

  print("Fantasy Books:");
  print(fantasyBooks);

  // Search all books
  var allBooks = searchBooks(books);

  print("\nAll Books:");
  print(allBooks);
}Com
import 'package:flutter/material.dart';

class CategoryBooksPage extends StatelessWidget {
  final String categoryName;

  CategoryBooksPage({required this.categoryName});

  final Map<String, List<String>> booksByCategory = {
    'Novel': ['Novel A', 'Novel B', 'Novel C'],
    'Biografi': ['Biografi X', 'Biografi Y'],
    'Teknologi': ['Teknologi 1', 'Teknologi 2'],
    'Bisnis': ['Bisnis 101', 'Bisnis 102'],
    'Sejarah': ['Sejarah Kuno', 'Sejarah Modern'],
    'Sains': ['Sains Alam', 'Sains Sosial'],
  };

  @override
  Widget build(BuildContext context) {
    final books = booksByCategory[categoryName] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text('Buku dalam Kategori: $categoryName'),
        backgroundColor: Colors.blueAccent,
      ),
      body: books.isEmpty
          ? Center(
              child: Text(
                'Tidak ada buku dalam kategori ini',
                style: TextStyle(fontSize: 18),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                itemCount: books.length,
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      leading: Icon(
                        Icons.book,
                        color: Colors.blueAccent,
                      ),
                      title: Text(
                        books[index],
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Informasi tambahan tentang buku'), // Contoh subtitle
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookDetailPage(bookTitle: books[index]),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
    );
  }
}

class BookDetailPage extends StatelessWidget {
  final String bookTitle;

  const BookDetailPage({Key? key, required this.bookTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bookTitle),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text(
          'Detail informasi tentang $bookTitle akan ditampilkan di sini.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

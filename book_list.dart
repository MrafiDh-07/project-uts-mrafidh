import 'package:flutter/material.dart';
import 'book_detail.dart';

class BookList extends StatelessWidget {
  final List<Map<String, String>> books = [
    {'title': 'Flutter Basics', 'author': 'John Doe'},
    {'title': 'Dart Language Guide', 'author': 'Jane Smith'},
    {'title': 'Advanced Flutter', 'author': 'James Brown'},
    {'title': 'UI/UX Design Principles', 'author': 'Emily Davis'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Buku'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context, index) {
            final book = books[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              margin: EdgeInsets.symmetric(vertical: 8),
              elevation: 5,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookDetail(bookTitle: book['title']!),
                    ),
                  );
                },
                child: ListTile(
                  contentPadding: EdgeInsets.all(16),
                  leading: Icon(Icons.book, color: Colors.blueAccent),
                  title: Text(
                    book['title']!,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text('Penulis: ${book['author']}'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

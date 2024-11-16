import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  final String bookTitle;

  BookDetail({required this.bookTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          bookTitle,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/book_placeholder.png', // Ganti dengan path gambar Anda
                height: 150,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text(
              bookTitle,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Penulis: Nama Penulis',
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),
            SizedBox(height: 8),
            Text(
              'Tanggal Terbit: 01 Januari 2024',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 8),
            Text(
              'Deskripsi Buku',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Ini adalah deskripsi dari buku $bookTitle. Anda dapat menambahkan detail lebih banyak mengenai buku ini seperti sinopsis, ulasan, atau informasi lainnya.',
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}

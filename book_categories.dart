import 'package:flutter/material.dart';

class BookCategories extends StatelessWidget {
  final List<String> categories = [
    'Novel',
    'Biografi',
    'Teknologi',
    'Bisnis',
    'Sejarah',
    'Sains',
  ];

  final List<IconData> categoryIcons = [
    Icons.book,
    Icons.person,
    Icons.computer,
    Icons.business,
    Icons.history,
    Icons.science,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kategori Buku'),
        backgroundColor: Colors.blueAccent,
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                leading: Icon(
                  categoryIcons[index],
                  color: Colors.blueAccent,
                ),
                title: Text(
                  categories[index],
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: const Text('Pilih kategori ini untuk melihat buku-buku terkait'),
                onTap: () {
                  // Navigasi ke halaman terkait kategori
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryDetailPage(category: categories[index]),
                    ),
                  );
                },
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class CategoryDetailPage extends StatelessWidget {
  final String category;

  const CategoryDetailPage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text(
          'Buku-buku dalam kategori $category akan ditampilkan di sini.',
          style: const TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

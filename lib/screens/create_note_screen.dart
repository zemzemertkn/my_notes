import 'package:flutter/material.dart';

class CreateNoteScreen extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  void _saveNote(BuildContext context) {
    String title = _titleController.text;
    String content = _contentController.text;

    if (title.isNotEmpty && content.isNotEmpty) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('Başarılı'),
          content: Text('Not başarıyla kaydedildi!'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(ctx).pop();
                Navigator.of(context).pop(); // Ana ekrana dön
              },
              child: Text('Tamam'),
            ),
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('Hata'),
          content: Text('Başlık ve içerik boş olamaz!'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(ctx).pop();
              },
              child: Text('Tamam'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Yeni Not Oluştur')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(controller: _titleController, decoration: InputDecoration(labelText: 'Başlık', border: OutlineInputBorder())),
            SizedBox(height: 20),
            TextField(controller: _contentController, maxLines: 5, decoration: InputDecoration(labelText: 'İçerik', border: OutlineInputBorder())),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () => _saveNote(context), child: Text('Kaydet')),
          ],
        ),
      ),
    );
  }
}

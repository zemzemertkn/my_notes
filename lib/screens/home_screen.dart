import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mini Notlarım')),
      body: Center(child: Text('Henüz bir not yok!', style: TextStyle(fontSize: 18))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/create_note');
        },
        child: Icon(Icons.add),
        tooltip: 'Yeni Not Ekle',
      ),
    );
  }
}

import 'screens/login_screen.dart'; // Login ekranı
import 'screens/home_screen.dart';  // Home ekranı
import 'screens/create_note_screen.dart'; // Create note ekranı
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/create_note_screen.dart';

void main() {
  runApp(MiniNotlarimApp());
}

class MiniNotlarimApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Notlarım',
      initialRoute: '/login', // Başlangıçta login ekranı görünsün
      routes: {
        '/login': (context) => LoginScreen(), // Login ekranı
        '/home': (context) => HomeScreen(), // Ana ekran
        '/create_note': (context) => CreateNoteScreen(), // Yeni not ekranı
      },
    );
  }
}


import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login(BuildContext context) {
    if (_usernameController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('Hata'),
          content: Text('Lütfen kullanıcı adı ve şifreyi doldurun!'),
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
      appBar: AppBar(title: Text('Giriş Yap')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(controller: _usernameController, decoration: InputDecoration(labelText: 'Kullanıcı Adı', border: OutlineInputBorder())),
            SizedBox(height: 20),
            TextField(controller: _passwordController, obscureText: true, decoration: InputDecoration(labelText: 'Şifre', border: OutlineInputBorder())),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () => _login(context), child: Text('Giriş Yap')),
          ],
        ),
      ),
    );
  }
}

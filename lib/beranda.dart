import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Form Registrasi"),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
        child: Text("Selamat Anda Berhasil Masuk"),
      ),
    );
  }
}

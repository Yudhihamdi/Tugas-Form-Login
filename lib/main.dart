import 'package:flutter/material.dart';

import 'beranda.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Registrasi';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.pink[100],
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// class ColorPalette {
//   static const primaryColor = Color(0xff5364e8);
//   static const primaryDarkColor = Color(0xff607Cbf);
//   static const underlineTextField = Color(0xff8b97ff);
//   static const hintColor = Color(0xffccd1ff);
// }

// Widget _1(){
//   return Image.asset(
//     "assets/image/1.png",
//   )
// }

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final String nama = "Yudhi Hamdi Utama",
      email = "Yudhi.hamdiutama@gmail.com",
      sandi = "Yudhi Hamdi Utama";
  final namaController = TextEditingController();
  final emailController = TextEditingController();
  final sandiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //yang ini untuk nama
          TextFormField(
            controller: namaController,
            decoration: InputDecoration(labelText: 'Nama Pengguna'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Mohon Masukkan Data Terlebih Dahulu';
              }
              return null;
            },
          ),
          //yang ini untuk email
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(labelText: "Email"),
            validator: (value) {
              if (value.isEmpty) {
                return 'Email tidak valid';
              }
              return null;
            },
          ),
          //Yang ini untuk sandi
          TextFormField(
            controller: sandiController,
            obscureText: true,
            decoration: InputDecoration(labelText: "Sandi"),
            validator: (value) {
              if (value.isEmpty) {
                return 'Sandi minimal 4 karakter';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if (namaController.text.trim() == nama &&
                    sandiController.text.trim() == sandi) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                } else {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text('Maaf Sekali Ada Terdapat Kesalahan Input'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  ));
                }
              },
              child: Text(
                'Masuk',
                style: TextStyle(color: Colors.pink[100]),
                textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

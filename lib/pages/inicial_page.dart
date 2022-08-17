import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sciencenotes/pages/home_page.dart';

class InicialPage extends StatefulWidget {
  const InicialPage({Key? key}) : super(key: key);

  @override
  _InicialPageState createState() => _InicialPageState();
}

class _InicialPageState extends State<InicialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color(0xFFA7AED3),
        title: const Text(
          'Science Notes',
          style: TextStyle(
              fontSize: 24, color: Colors.white, fontFamily: 'Staatliches'),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple.shade50,
        child: Column(
          children: const [
            ListTile(
              leading: Icon(
                CupertinoIcons.lab_flask_solid,
                color: Colors.deepPurple,
              ),
              title: Text('SCIENCE NOTES'),
              subtitle:
                  Text('Um app destinado ao estudo das ciências da natureza'),
              //onTap: (),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.person_alt_circle,
                  color: Colors.deepPurple),
              title: Text('Login'),
              subtitle:
                  Text('Entre em nosso app e usufrua dos nossos recursos.'),
              //onTap: (),
            ),
            ListTile(
              leading:
                  Icon(Icons.app_registration_sharp, color: Colors.deepPurple),
              title: Text('Cadastrar'),
              subtitle: Text('Realize seu cadastro em nosso app.'),
              //onTap: (),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFDFE9F5),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 48.0, horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                    "https://i.ibb.co/7jzg9CX/IMG-20220630-WA0044.jpg"),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: onPressedButton,
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFA7AED3),
                ),
                child: const Text(
                  'Entrar',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontFamily: 'AmaticSC-Regular',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onPressedButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const HomePage();
        },
      ),
    );
  }
}
